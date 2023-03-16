package in.tg.remotetouchclient;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;

import org.java_websocket.client.WebSocketClient;
import org.java_websocket.exceptions.WebsocketNotConnectedException;
import org.java_websocket.handshake.ServerHandshake;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;


public class MainActivity extends AppCompatActivity {
    ImageView mIv;
    ImageButton getScreenBtn;
    public static final String INTENT_KEY_IP = "ip";
    public static final String INTENT_KEY_PORT = "port";
    public static final String INTENT_KEY_SIZEX = "sizeX";
    public static final String INTENT_KEY_SIZEY = "sizeY";
//    public static final String INTENT_KEY_SCREENSHOT_INTERVAL = "screenshotInterval";
    float multiplierX = 1.0f;
    float multiplierY = 1.0f;
    String wsUri;
    WebSocketClient mWebSocketClient;
    volatile boolean makeGrayscale = false;
    ColorMatrixColorFilter cf;
    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        try {
            byte[] barr = sendTouchInfo(ev);
            mWebSocketClient.send(barr);
        } catch (IOException uh) {
            Toast.makeText(MainActivity.this, "IOException: " + uh.getMessage(), Toast.LENGTH_SHORT).show();
            finish();
        } catch (WebsocketNotConnectedException bai) {
            Toast.makeText(MainActivity.this, "WebsocketNotConnectedException: " + bai.getMessage(), Toast.LENGTH_SHORT).show();
            finish();
        }
        if(makeGrayscale){
            if(cf==null){
                ColorMatrix matrix = new ColorMatrix();
                matrix.setSaturation(0);
                cf = new ColorMatrixColorFilter(matrix);
            }mIv.getBackground().setColorFilter(cf);makeGrayscale=false; mIv.setAlpha(0.3f);
        }
        if (ev.getActionMasked() == MotionEvent.ACTION_UP) {
            getScreenOnNewThread(500);
        }
        return super.dispatchTouchEvent(ev);
    }

    private byte[] sendTouchInfo(MotionEvent ev) throws IOException {
        //i0 hardcoded to be 0L
        //i1 hardcoded to be 0L

        //i10 hardcoded to be -1
        //i11 hardcoded to be 0
        //i12 hardcoded to be 0x1002
        //i13 hardcoded to be 0


        /* THE BYTE ARRAY FOLLOWS BELOW STRUCTURE (IN GIVEN ORDER)

         * i2 (int, action)
         * i3 (int, pointerCount)
         * i6 (int, metaState)
         * i7 (int, buttonState)
         * i8 (float, xPrecision)
         * i9 (float, yPrecision)

         * THIS x i3:
                //(part of pointerCoords):
                    int id
                    int toolType
                //(part of pointerCoords):
                    float orientation
                    float pressure
                    float size
                    float toolMajor
                    float toolMinor
                    float touchMajor
                    float touchMinor
                    float x
                    float y
         */
        int i2 = ev.getAction();
        int i3 = ev.getPointerCount();
        int i6 = ev.getMetaState();
        int i7 = ev.getButtonState();
        float i8 = ev.getXPrecision();
        float i9 = ev.getYPrecision();
        ByteArrayOutputStream baos = new ByteArrayOutputStream
                (4 * Integer.BYTES + 2 * Float.BYTES + i3 * (2 * Integer.BYTES + 9 * Float.BYTES));
        DataOutputStream dos = new DataOutputStream(baos);
        dos.writeInt(i2);
        dos.writeInt(i3);
        dos.writeInt(i6);
        dos.writeInt(i7);
        dos.writeFloat(i8);
        dos.writeFloat(i9);
        int i;
        MotionEvent.PointerProperties pp = new MotionEvent.PointerProperties();
        MotionEvent.PointerCoords pc = new MotionEvent.PointerCoords();
        for (i = 0; i < i3; i++) {
            ev.getPointerProperties(i, pp);
            dos.writeInt(pp.id);
            dos.writeInt(pp.toolType);

            ev.getPointerCoords(i, pc);
            dos.writeFloat(pc.orientation);
            dos.writeFloat(pc.pressure);
            dos.writeFloat(pc.size);
            dos.writeFloat(pc.toolMajor);
            dos.writeFloat(pc.toolMinor);
            dos.writeFloat(pc.touchMajor);
            dos.writeFloat(pc.touchMinor);
            dos.writeFloat(pc.x * multiplierX);
            dos.writeFloat(pc.y * multiplierY);
        }
        dos.close();
        byte[] toret = baos.toByteArray();
        assert (toret.length == 4 * Integer.BYTES + 2 * Float.BYTES + i3 * (2 * Integer.BYTES + 9 * Float.BYTES));
        return toret;
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        String ip = getIntent().getStringExtra(INTENT_KEY_IP);
        int port = getIntent().getIntExtra(INTENT_KEY_PORT, 8285);
        int sizeX = getIntent().getIntExtra(INTENT_KEY_SIZEX, 1920);
        int sizeY = getIntent().getIntExtra(INTENT_KEY_SIZEY, 1080);

        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);  // fullscreen

        setRequestedOrientation(sizeY > sizeX ? ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT : ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);

        Display display = getWindowManager().getDefaultDisplay();
        Point mSize = new Point();
        display.getRealSize(mSize);
        multiplierX = sizeX / (float) mSize.x;
        multiplierY = sizeY / (float) mSize.y;

        wsUri = "ws://" + ip + ":"+port;

        initWebSocket();
        super.onCreate(savedInstanceState);
        supportRequestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            getWindow().getAttributes().layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
        }
        setContentView(R.layout.activity_main);
        getWindow().getDecorView().setBackgroundColor(Color.BLACK);
        mIv = findViewById(R.id.touchTarget);
        getScreenBtn = findViewById(R.id.getscreen);
        setupListeners();
        getScreenOnNewThread(0);
    }

    private void setupListeners() {
        getScreenBtn.setOnClickListener((view)->getScreenOnNewThread(0));
    }

    void getScreenOnNewThread(int delay){
        new Thread(()-> {
            if(delay>0){
                try{
                    Thread.sleep(delay);
                }catch (InterruptedException ignored){}
            }
            try {
                HttpURLConnection con = (HttpURLConnection) new URL("http" + wsUri.substring(wsUri.indexOf(':')) + "/scap53tgws5tw54t6w").openConnection();
                int rescode = con.getResponseCode();
                if (rescode == 200) {
                    String[] dim = con.getContentType().split("/");
                    Point targetDimensions = new Point(Integer.parseInt(dim[0]), Integer.parseInt(dim[1]));
                    ConstraintLayout.LayoutParams ivlp = new ConstraintLayout.LayoutParams((int) (targetDimensions.x / multiplierX), (int) (targetDimensions.y / multiplierY));
                    try (InputStream is = con.getInputStream()) {
                        Bitmap image = BitmapFactory.decodeStream(is);
                        runOnUiThread(() -> {
                            mIv.setLayoutParams(ivlp);
                            mIv.setBackground(new BitmapDrawable(getResources(), image));
                            mIv.getBackground().clearColorFilter();mIv.setAlpha(1f);
                            makeGrayscale=true;
                        });
                    }

                } else if (rescode == 503) {
                    try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()))) {
                        final String errorMessage = "Server error: " + br.readLine();
                        runOnUiThread(() -> Toast.makeText(MainActivity.this, errorMessage, Toast.LENGTH_SHORT).show());
                    }
                }
            } catch (Exception e) {
                runOnUiThread(() -> Toast.makeText(MainActivity.this, "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show());
                e.printStackTrace();
            }
        }).start();
    }

    void initWebSocket() {
        URI uri;
        try {
            uri = new URI(wsUri);
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return;
        }

        mWebSocketClient = new WebSocketClient(uri) {
            @Override
            public void onOpen(ServerHandshake serverHandshake) {
                android.util.Log.i("Websocket", "Opened");
                //mWebSocketClient.send("Hello from juc client test");
            }

            @Override
            public void onMessage(String s) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(MainActivity.this, "S: " + ((s.length() < 25) ? s : s.substring(0, 25)), Toast.LENGTH_SHORT).show();
                    }
                });
            }

            @Override
            public void onMessage(ByteBuffer bytes) {
                super.onMessage(bytes);
            }

            @Override
            public void onClose(int i, String s, boolean b) {
                android.util.Log.i("Websocket", "Closed " + s);
            }

            @Override
            public void onError(Exception e) {
                android.util.Log.i("Websocket", "Error " + e.getMessage());
            }
        };
        mWebSocketClient.connect();
    }
}