### Remote Touch

Briefly put, this repo contains the necessary tools which make it possible for one device to act like a touchscreen for (an app running on) some other device, without any special access privilege required on any device.

It does NOT require any quirks like adb or Accessibility Service, and does NOT require root privileges.

Instead, it requires the target app (the one to be remotely controlled) to be specially modded for the purpose (detailed instructions below). As such, it can be utilized to control apps running on normal devices over, for example, the same wifi network. This allows for silent remote controllability without any overlays or permissions. Moreover, it supports all sorts of touch events (like multi touch gestures) and emulates them as-is on the target app('s current activity) with negligible latency. 

### Structure

This project consists of two parts:

- **Remote Touch Client app:** the app running on the controlling device, acting as the touchscreen. Its source code is located in [client-app](client-app) directory. You can find a built apk [here](RemoteTouchClient/app/build/outputs/apk/debug/app-debug.apk). It's background is a lazily updating screenshot of the target app (doesn't work for SurfaceViews).

- **A target app:** This app receives the touch gestures made by the user on "remote touchscreen" (the client app).
  
  It is actually an app modified so as to host a websocket server which receives and injects into itself these gestures.
  
  The user (you?) has to generate a "*target app*" themselves. Most simple android apps can be transformed into a target app by following a procedure outlined [below](#The-Instructions).
  
  The example video below uses the "VLC for Android", and "Multi Touch Test" as the target apps. The modified apk in use (for Multi Touch Test) is available in [built-samples/sample-target-app](built-samples/sample-target-app) for you to try.

-----------

[demo.webm](https://user-images.githubusercontent.com/119003089/225643025-c9d69702-c37b-4158-a658-8e11c0ef4c95.webm)

[demo.mp4](built-samples/demo.mp4)

-----------

A third part of this project is the RTScript, which is an ugly single file *script* in java that automates modification of normal apps into "*target app*", using apktool, our lord and saviour.

### The Instructions

##### to turn any* app into a target app for Remote Touch:

\*The app is should not respond negatively to unpacking/repacking by apktool.

#### Way 1) Using the automatic patching script (RTScript.jar)

1. Download the [RTScript/out/RTScript.jar](RTScript/out/RTScript.jar), place it in an empty folder.

2. Open a terminal window (or command prompt) in the same folder as the one containing RTScript.jar.

3. Run `java -jar RTScript.jar path/to/your-file.apk`.
   
   Ignore the terminal deprecation [warnings](https://bugs.openjdk.org/browse/JDK-8199704).

4. If everything goes well, you will find `your-file.modified.unsigned.apk` in that same folder.

5. Zipaign and sign this generated apk. If you have no idea how that's done, follow these steps:
   
   5.1: Copy this generated unsigned apk into an empty folder.
   
   5.2: Download and place uber-apk-signer.jar into this folder.
   
   5.3: Run `java -jar uber-apk-signer.jar -a .`
   
   5.4: You will find a debug signed apk in the same directory, ready to be installed and used as a target app.

#### Way 2) Manual Steps (If that's your thing)

1. Unpack the apk of the app (you want to turn into a *target app*) using `apktool d input.apk`

2. Make sure the `AndroidManifest.xml` has `<uses-permission android:name="android.permission.INTERNET"/>` inside the manifest tag, as well as the attribute `android:usesCleartextTraffic="true"` for application tag.

3. Find the launcher (Main) activity using the same `AndroidManifest.xml`. Locate the smali file for that activity (without any \$ sign in the filename).

4. Open the smali file described in the previous step, and search for the line which begins`invoke-super {p0` and has a `->onCreate(Landroid/os/Bundle;)V` towards its end. This is the statement which calls super.onCreate inside the onCreate method of said activity. Insert the below line right after said statement:
   
   `invoke-static {p0}, Lcom/tg/touchdelegate/TouchWs;->startIt(Landroid/app/Activity;)V`

5. Now simply copy all the contents of `smali-files` folder (which at present are a `com` and an `org` folder) inside any one smali folder (the smali folders are named *smali, smali_classes2, smali_classes3*, and so on), preferably the last one. You may even create a new empty smali folder (numbered one-greater than the last one) to paste the contents into.

6. Now simply run `apktool b input`, which would build the apk into `input/dist/input.apk` (if successful). Now zipalign and sign this apk. You're done.
