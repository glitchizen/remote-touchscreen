import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.security.Permission;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import brut.apktool.Main;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import static java.nio.charset.StandardCharsets.UTF_8;

public class RTScript{
    final static int ALLOWED_EXIT_CODE = 9231740;
    static class MySecurityManager extends SecurityManager {
        @Override public void checkExit(int status) {
            if(status == ALLOWED_EXIT_CODE) super.checkExit(status);
            else throw new SecurityException();
        }

        @Override public void checkPermission(Permission perm) {
            // Allow other activities by default
        }
    }
    static ByteArrayOutputStream console;
    static String apkfile = "infile.apk";
    static String apkdir;
    static long timestamp;
    static void printInvalidArgsAndExit(){
        System.out.println("No input file specified.\nUsage:\n    java -jar RTScript.jar input.apk\nExiting.");
        System.exit(ALLOWED_EXIT_CODE);
    }
    @SuppressWarnings({"deletion"})
    public static void main(String[] args){
        try {
            timestamp = System.currentTimeMillis();
            apkdir = apkfile.substring(0,apkfile.lastIndexOf('.'));
            if (args.length == 0 || args[0].equals("--help")) {
                printInvalidArgsAndExit();
            }

            MySecurityManager secManager = new MySecurityManager();
            System.setSecurityManager(secManager);

            //System.out.println("Ignore the terminal deprecation warnings (if any) btw.");
            System.out.println("-------------------------------------------");
            System.out.println("Copying input file to working directory, and unpacking via apktool");
            System.out.println("... Running apktool d:");

            Files.copy(Paths.get(args[0]), Paths.get(apkfile), StandardCopyOption.REPLACE_EXISTING);
            System.out.println(callApktool(new String[]{"d", apkfile, "-f"}));

            System.out.println("-------------------------------------------");
            System.out.println("Checking AndroidManifest.xml");

            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document doc = builder.parse(new File(apkdir+"/AndroidManifest.xml"));
            doc.getDocumentElement().normalize();
            NodeList usesPermissionList = doc.getElementsByTagName("uses-permission");

            boolean hasInternetPermission = false;
            for (int i = usesPermissionList.getLength() - 1; i >= 0; i--) {
                Node n = usesPermissionList.item(i).getAttributes().getNamedItem("android:name");
                if (n != null && n.getTextContent().equals("android.permission.INTERNET")) {
                    hasInternetPermission = true;
                    break;
                }
            }
            if (!hasInternetPermission) {
                Node manifest = doc.getElementsByTagName("manifest").item(0);
                Element ele = doc.createElement("uses-permission");
                ele.setAttribute("android:name", "android.permission.INTERNET");
                manifest.insertBefore(ele, manifest.getFirstChild());
            }
            Node application = doc.getElementsByTagName("application").item(0);
            Node cleartext = application.getAttributes().getNamedItem("android:usesCleartextTraffic");
            boolean hasCleartextAttribute = cleartext != null && cleartext.getTextContent().equals("true");
            if (!hasCleartextAttribute) {
                if (cleartext != null) cleartext.setTextContent("true");
                else ((Element) application).setAttribute("android:usesCleartextTraffic", "true");
            }
            if (!hasInternetPermission || !hasCleartextAttribute) {
                System.out.println("Writing internet permission and cleartext attribute to AndroidManifest.xml");
                DOMSource dom = new DOMSource(doc);
                Transformer transformer = TransformerFactory.newInstance().newTransformer();
                StreamResult result = new StreamResult(new File(apkdir+"/AndroidManifest.xml"));
                transformer.transform(dom, result);
            }else System.out.println("AndroidManifest.xml already has all the requisite permissions.");

            String launchActivity = null;
            NodeList categoryList = doc.getElementsByTagName("category");
            for (int i = 0; i < categoryList.getLength(); i++) {
                Node n = categoryList.item(i).getAttributes().getNamedItem("android:name");
                if (n != null && n.getTextContent().equals("android.intent.category.LAUNCHER")) {
                    Element e = (Element)categoryList.item(i).getParentNode().getParentNode();
                    assert(e.getTagName().equals("activity"));
                    launchActivity = e.getAttribute("android:name");
                    if(launchActivity.equals("")) launchActivity = null;
                    break;
                }
            }
            if(launchActivity==null) throw new RuntimeException("Fatal Error: Launch activity not found.");

            System.out.println("Launch activity found: "+launchActivity);

            String launchActivityPath = null;
            String[] subdirs = new File(apkdir).list((current, name) -> new File(current, name).isDirectory());
            launchActivity=launchActivity.replace('.','/')+".smali";
            for(String sd : subdirs){
                if(sd.startsWith("smali_classes") || sd.equals("smali")){
                    File f = new File(new File(apkdir, sd), launchActivity);
                    if(f.exists() && !f.isDirectory())
                        launchActivityPath = f.getAbsolutePath();
                }
            }
            if(launchActivityPath==null) throw new RuntimeException("Fatal Error: Smali file for launch activity not found.");

            ArrayList<String> als = new ArrayList<>();
            ArrayList<Integer> usefulLines = new ArrayList<>();
            boolean actDone = false;
            File launchActFile = new File(launchActivityPath);
            try(FileReader fr = new FileReader(launchActFile)){
                try(BufferedReader br = new BufferedReader(fr)) {
                    String superAct = null;
                    String line = null;
                    int lineIndex = 0;
                    boolean wasTheActDoneInThisIteration = false;
                    while ((line = br.readLine()) != null) {
                        if(superAct == null && line.startsWith(".super ")){
                            superAct = line.substring(".super ".length()).trim();
                        }
                        if(!actDone && line.trim().startsWith("invoke-super {p0") && line.contains("->onCreate(")){
                            if(superAct!=null && line.trim().endsWith(superAct+"->onCreate(Landroid/os/Bundle;)V")){
                                actDone = true;
                                wasTheActDoneInThisIteration = true;
                            }
                            if(!actDone){
                                usefulLines.add(lineIndex);
                            }
                        }
                        als.add(line);
                        if(wasTheActDoneInThisIteration) {
                            als.add("invoke-static {p0}, Lcom/tg/touchdelegate/TouchWs;->startIt(Landroid/app/Activity;)V   # hmmnoice");
                            wasTheActDoneInThisIteration=false;
                        }
                        lineIndex++;
                    }
                }
            }
            if(!actDone){ //unfortunately...
                for(int i : usefulLines){
                    if(als.get(i).contains("eate(Landroid/os/Bundle;)V")){
                        als.add(i+1, "invoke-static {p0}, Lcom/tg/touchdelegate/TouchWs;->startIt(Landroid/app/Activity;)V   # hmmnoice");
                        actDone=true;
                    }
                }
            }
            if(!actDone){ //still
                for(int i : usefulLines){
                    als.add(i + 1, "invoke-static {p0}, Lcom/tg/touchdelegate/TouchWs;->startIt(Landroid/app/Activity;)V   # hmmnoice");
                    actDone = true;
                }
                if(actDone){
                    System.out.println("INFO: Didn't expect this. The patch may still work nonetheless.");
                }
            }
            if(!actDone) throw new RuntimeException("Fatal Error: Couldn't patch launch activity.");
            try(FileWriter fw = new FileWriter(launchActFile)){
                try(BufferedWriter out = new BufferedWriter(fw)){
                    for(String s : als) {
                        out.write(s);
                        out.newLine();
                    }
                    out.flush();
                }
            }
            System.out.println("Done writing initialization code to "+launchActivityPath);


            String smaliDirPrefix = "smali_classes";
            int smaliDirSerialNumber = 2;
            while(arrayContains(subdirs, smaliDirPrefix+smaliDirSerialNumber)) smaliDirSerialNumber++;

            try {
//              copyDirectory(Paths.get(RTScript.class.getResource("smali_files").toURI()).toFile().getAbsolutePath(), new File(apkdir, smaliDirPrefix + smaliDirSerialNumber).getAbsolutePath());

                File destDir = new File(apkdir, smaliDirPrefix + smaliDirSerialNumber);

                //https://www.baeldung.com/java-compress-and-uncompress#unzip:
                byte[] buffer = new byte[1024];
                ZipInputStream zis = new ZipInputStream(RTScript.class.getResourceAsStream("smali_files.zip"));
                ZipEntry zipEntry = zis.getNextEntry();
                while (zipEntry != null) {
                    File newFile = newFile(destDir, zipEntry);
                    if (zipEntry.isDirectory()) {
                        if (!newFile.isDirectory() && !newFile.mkdirs()) {
                            throw new IOException("Failed to create directory " + newFile);
                        }
                    } else {
                        // fix for Windows-created archives
                        File parent = newFile.getParentFile();
                        if (!parent.isDirectory() && !parent.mkdirs()) {
                            throw new IOException("Failed to create directory " + parent);
                        }

                        // write file content
                        FileOutputStream fos = new FileOutputStream(newFile);
                        int len;
                        while ((len = zis.read(buffer)) > 0) {
                            fos.write(buffer, 0, len);
                        }
                        fos.close();
                    }
                    zipEntry = zis.getNextEntry();
                }
                zis.closeEntry();
                zis.close();
            }catch (Exception e){
                throw new RuntimeException("Fatal error: Couldn't copy required files", e);
            }
            System.out.println("Done copying required files to unpacked apk");
            System.out.println("------------------------------------------- Running APKTOOL b:");
            String outputfilename = args[0].substring(args[0].replace('\\', '/').lastIndexOf('/')+1, args[0].lastIndexOf('.'))
                    + ".modified.unsigned"+args[0].substring(args[0].lastIndexOf('.')); //it's just the name of input file with .modified.unsigned added before the .extension

            boolean successful = true;
            try {
                System.out.println(callApktool(new String[]{"b", "-o",
                        outputfilename,
                        apkdir}));
            }catch (Exception e){e.printStackTrace(); successful = false;}
            if(!(new File(outputfilename).exists() && Files.size(Paths.get(outputfilename))>20)) successful = false;
            if (successful){
                System.out.println("-------------------------------------------");
                System.out.println("Built modified unsigned apk file into '"+outputfilename+"'. NOTE THAT you will need to sign this apk before you can install it anywhere.");
            }else{
                System.out.println("Looks like something went wrong while building the apk using apktool. It may still be possible to patch this app, but that will require fixes beyond the scope of this simple script.\n" +
                        "Note that some apps are way more tamper-proof and/or fragile than others\n" +
                        "It will prove helpful if you open an issue on github.");
            }



        }catch (Exception e){e.printStackTrace(); System.exit(ALLOWED_EXIT_CODE);}
    }

    static boolean arrayContains(String[] a, String key){
        for(String aa : a) if(aa.equals(key)) return true;
        return false;
    }

    static String callApktool(String[] argv) throws brut.common.BrutException{
        if(console == null) console = new ByteArrayOutputStream();
        console.reset();
        PrintStream pstr = new PrintStream(console, true, UTF_8);
        System.setOut(pstr);
        System.setErr(pstr);
        try{
            Main.main(argv);
        }catch (SecurityException ignored){}
        pstr.close();

        System.setOut(new PrintStream(new FileOutputStream(FileDescriptor.out)));
        System.setErr(new PrintStream(new FileOutputStream(FileDescriptor.err)));

        return console.toString();
    }
    static void copyDirectory(String sourceDirectoryLocation, String destinationDirectoryLocation) throws IOException {
        Files.walk(Paths.get(sourceDirectoryLocation))
                .forEach(source -> {
                    Path destination = Paths.get(destinationDirectoryLocation, source.toString().substring(sourceDirectoryLocation.length()));
                    try {
                        Files.copy(source, destination, StandardCopyOption.REPLACE_EXISTING);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                });
    }

    public static File newFile(File destinationDir, ZipEntry zipEntry) throws IOException {  //https://www.baeldung.com/java-compress-and-uncompress#unzip
        File destFile = new File(destinationDir, zipEntry.getName());

        String destDirPath = destinationDir.getCanonicalPath();
        String destFilePath = destFile.getCanonicalPath();

        if (!destFilePath.startsWith(destDirPath + File.separator)) {
            throw new IOException("Entry is outside of the target dir: " + zipEntry.getName());
        }

        return destFile;
    }

}