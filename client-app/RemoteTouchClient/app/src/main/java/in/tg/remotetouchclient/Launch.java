package in.tg.remotetouchclient;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.animation.PathInterpolatorCompat;

import android.animation.ObjectAnimator;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class Launch extends AppCompatActivity {
    public static final int[] portsToScan = {8285, 8286 ,58286};
    TextView statustv;
    EditText manualet;
    ProgressBar pb;
    ImageButton refb;
    ListView splv;
    ArrayList<String> listItems;
    ArrayAdapter<String> adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_launch);
        statustv =findViewById(R.id.statustv);
        manualet =findViewById(R.id.manualet);
        pb=findViewById(R.id.sp);
        splv=findViewById(R.id.splv);
        refb=findViewById(R.id.refb);
        setupListeners();
        refreshDeviceList();
    }
    void setupListeners(){
        refb.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                refreshDeviceList();
            }
        });
        manualet.setOnEditorActionListener((ignore, actionId, ignore2) -> {
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                View view = this.getCurrentFocus();
                if (view != null) {
                    InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
                    imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
                TextView ghosttv = findViewById(R.id.manualet_ghost);
                ghosttv.setAlpha(1.0f);ghosttv.setText(manualet.getText());ghosttv.setVisibility(View.VISIBLE);
                int loc[] = {0,0};
                splv.getLocationInWindow(loc);
                ObjectAnimator oa = ObjectAnimator.ofFloat(ghosttv, "translationY", (float)loc[1]).setDuration(1300);
                oa.setInterpolator(PathInterpolatorCompat.create(0.680f, -0.550f, 0.265f, 1.550f));
                ObjectAnimator.ofInt(ghosttv, "visibility", View.GONE).setDuration(1550).start();
                oa.start();
                switchToScanningUI(false);
                new Thread(()->scanIpAndUpdateList(manualet.getText().toString())).start();
                return true;
            }
            return false;
        });

    }
    void refreshDevicesSync(){
        HttpURLConnection.setFollowRedirects(false);
        ExecutorService es = Executors.newCachedThreadPool();
        try {
            for (NetworkInterface ni : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress ia : Collections.list(ni.getInetAddresses())) {
                    if (ia.getHostAddress() == null) continue;
                    if (ia.getHostAddress().indexOf('.') != -1) {
                        final String k = ia.getHostAddress().substring(0, ia.getHostAddress().lastIndexOf('.') + 1); //assuming prefix length 24
                        for (int ii = 0; ii < 26; ii++) {
                            final int i = ii;
                            es.execute(new Runnable() {
                                @Override
                                public void run() {
                                    for (int j = 0; j < 10; j++) {
                                        for (int port : portsToScan) {
                                            try {
                                                final String ip = k + (i * 10 + j);
                                                HttpURLConnection con = (HttpURLConnection) new URL("http://" + ip + ":" + port).openConnection();
                                                con.setConnectTimeout(200);
                                                con.setReadTimeout(200);
                                                int rescode = con.getResponseCode();
                                                if (rescode == 202) {
                                                    try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()))) {
                                                        String resstr = br.readLine();
                                                        if (resstr.startsWith("hmmnoice")) {
                                                            String[] k = resstr.split("\u001d");
                                                            final String screenDimensions = k[1];
                                                            final String targetAppLabel = k[2];
                                                            runOnUiThread(() -> adapter.add(new targetDeviceDetails(ip, port, targetAppLabel, screenDimensions).toString()));
                                                        }
                                                    } catch (Exception ignored) {
                                                    }
                                                }
                                                if (k.equals("127.0.0.")) break; //superimportant

                                            } catch (Exception ignored) {
                                            }
                                        }
                                    }
                                }
                            });
                            if(k.equals("127.0.0.")) break; //superimportant
                        }
                    }
                }
            }
        }catch (SocketException se){
            Toast.makeText(Launch.this, se.getMessage(), Toast.LENGTH_SHORT).show();
        }
        es.shutdown();
        try {
            es.awaitTermination(20, TimeUnit.SECONDS);
        }catch (InterruptedException ignored){}

    }

    void setupListView(){
        listItems=new ArrayList<String>();
        adapter=new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1,listItems);
        splv.setAdapter(adapter);
        splv.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?>adapter,View v, int position, long l){
                String item = listItems.get(position);
                loadTarget(targetDeviceDetails.fromString(item));
            }
        });
    }

    void switchToScanningUI(boolean showScanningMessage){
        if(showScanningMessage) statustv.setText(R.string.message_scanInProgress);
        pb.setVisibility(View.VISIBLE);
        refb.setVisibility(View.GONE);
    }
    void switchToNonScanningUI(){
        pb.setVisibility(View.GONE);
        refb.setVisibility(View.VISIBLE);
        manualet.setVisibility(View.VISIBLE);
    }
    void refreshDeviceList(){
        switchToScanningUI(true);
        if(listItems==null) setupListView();
        adapter.clear();
        new Thread(new Runnable() {
            @Override
            public void run() {
                refreshDevicesSync();
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if(listItems.size()==0) statustv.setText(getResources().getString(R.string.nodevicefound));
                        else statustv.setText( getString(R.string.message_noOfDevicesFound, listItems.size() ));
                        switchToNonScanningUI();
                    }
                });
            }
        }).start();

    }
    void scanIpAndUpdateList(String ip){
        int[] portsToActuallyScan = portsToScan;

        //extract port if user inputs it as part of ip
        int a = ip.lastIndexOf(':');
        if (a!=-1 && !ip.substring(a+1).contains("]")){
            try{
                int userPort = Integer.parseInt(ip.substring(a+1));
                ip = ip.substring(0,a);
                portsToActuallyScan = new int[portsToActuallyScan.length+1];
                portsToActuallyScan[0]=userPort;
                for(int i=1; i<portsToActuallyScan.length; i++){
                    portsToActuallyScan[i]=portsToScan[i-1];
                }
            }catch (Exception ignored){}
        }


        final String finalIp = ip;
        int initialListSize = listItems.size();
        ExecutorService es = Executors.newFixedThreadPool(portsToActuallyScan.length);
        for(int port : portsToActuallyScan){
            es.execute(() -> {
                try {
                    HttpURLConnection con = (HttpURLConnection) new URL("http://" + finalIp + ":" + port).openConnection();
                    con.setConnectTimeout(2000);
                    con.setReadTimeout(2000);
                    int rescode = con.getResponseCode();
                    if (rescode == 202) {
                        try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()))) {
                            String resstr = br.readLine();
                            if (resstr.startsWith("hmmnoice")) {
                                String[] k = resstr.split("\u001d");
                                final String screenDimensions = k[1];
                                final String targetAppLabel = k[2];
                                runOnUiThread(() -> adapter.add(new targetDeviceDetails(finalIp, port, targetAppLabel, screenDimensions).toString()));
                            }
                        } catch (Exception ignored) {
                        }
                    }
                } catch (Exception ignored) {
                }
            });
        }
        es.shutdown();
        try {
            es.awaitTermination(20, TimeUnit.SECONDS);
        }catch (InterruptedException ignored){}

        int[] finalPortsToActuallyScan = portsToActuallyScan;
        runOnUiThread(()->{
            switchToNonScanningUI();
            if(listItems.size() > initialListSize){

            }else{
                StringBuilder sb = new StringBuilder("Entered IP has no target app running. Following addresses were scanned:\n");
                for (int po : finalPortsToActuallyScan) {
                    sb.append("• ").append("ws://").append(finalIp).append(":").append(po).append('\n');
                }
                new AlertDialog.Builder(Launch.this)
                        .setTitle("😭 Uh Oh")
                        .setMessage(sb)
                        .setPositiveButton(android.R.string.yes, null)
                        .show();
            }
        });
    }

    void loadTarget(targetDeviceDetails tad){
        boolean isPortrait = tad.getSizeY()>tad.getSizeX();
//        LinearLayout editor = new LinearLayout(Launch.this);
//        editor.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
//        editor.setPadding(60,0,60,0);
//        editor.setOrientation(LinearLayout.VERTICAL);
//        TextView hintText = new TextView(Launch.this);
//        hintText.setVisibility(View.GONE);
//        hintText.setText("Minimum allowed value: 250.");
//        EditText updateIntervalInput = new EditText(Launch.this);
//        updateIntervalInput.setText("500");
//        editor.addView(updateIntervalInput);
//        editor.addView(hintText);
        AlertDialog.Builder builder = new AlertDialog.Builder(Launch.this)
                .setTitle(tad.targetAppLabel)
                .setMessage("Screen: "+tad.screenDimensions
                         +"\nOrientation: "+ (isPortrait?"Portrait":"Landscape")
                        +"\nDevice: "+ tad.ip
//                        +"\n\nSet screenshot interval (ms)"
                )
                .setPositiveButton("Load", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        Intent i = new Intent(Launch.this, MainActivity.class);
                        i.putExtra(MainActivity.INTENT_KEY_IP,tad.ip);
                        i.putExtra(MainActivity.INTENT_KEY_PORT, tad.port);
                        i.putExtra(MainActivity.INTENT_KEY_SIZEX,tad.getSizeX());
                        i.putExtra(MainActivity.INTENT_KEY_SIZEY,tad.getSizeY());
//                        i.putExtra(MainActivity.INTENT_KEY_SCREENSHOT_INTERVAL,Integer.parseInt(updateIntervalInput.getText().toString()));
                        startActivity(i);
                    }
                })
//                .setView(editor)
                .setNegativeButton(android.R.string.cancel, null);
        AlertDialog dialog = builder.create();
//        updateIntervalInput.setInputType(InputType.TYPE_CLASS_NUMBER);
//        updateIntervalInput.addTextChangedListener(new TextWatcher() {
//            @Override
//            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {}
//            @Override
//            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {}
//
//            @Override
//            public void afterTextChanged(Editable editable) {
//                try {
//                    int i = Integer.parseInt(editable.toString());
//                    if(i>=250){
//                        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setEnabled(true);
//                        hintText.setVisibility(View.GONE);
//                        return;
//                    }
//                }catch (Exception e){}
//                dialog.getButton(AlertDialog.BUTTON_POSITIVE).setEnabled(false);
//                hintText.setVisibility(View.VISIBLE);
//            }
//        });
        dialog.show();


    }
    static class targetDeviceDetails{
        String ip;
        int port;
        String screenDimensions;
        String targetAppLabel;
        final static String separator="   ";
        final static String ipPortSeparator=":";
        public targetDeviceDetails(String ip, int port, String targetAppLabel, String screenDimensions){
            this.ip=ip;
            this.port=port;
            this.targetAppLabel=targetAppLabel;
            this.screenDimensions=screenDimensions;
        }
        @NonNull
        @Override
        public String toString() {
            return ip+ipPortSeparator+port   +separator+   targetAppLabel   +separator+   screenDimensions;
        }
        public static targetDeviceDetails fromString(String targetDeviceString){
            String[] k = targetDeviceString.split(java.util.regex.Pattern.quote(separator));
            return new targetDeviceDetails(
                    k[0].substring(0, k[0].lastIndexOf(':')),
                    Integer.parseInt(k[0].substring(k[0].lastIndexOf(":")+1)),
                    k[1],
                    k[k.length-1]
            );
        }
        public int getSizeX(){
            return Integer.parseInt(screenDimensions.substring(0,screenDimensions.indexOf('x')));
        }
        public int getSizeY(){
            return Integer.parseInt(screenDimensions.substring(screenDimensions.indexOf('x')+1));
        }
    }
}