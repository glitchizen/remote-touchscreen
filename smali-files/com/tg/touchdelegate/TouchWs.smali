.class public Lcom/tg/touchdelegate/TouchWs;
.super Lorg/nanohttpd/protocols/websockets/NanoWSD;
.source "TouchWs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tg/touchdelegate/TouchWs$WsdSocket2;,
        Lcom/tg/touchdelegate/TouchWs$nakliApp;
    }
.end annotation


# static fields
.field public static final PING_PAYLOAD:[B

.field public static final portsToScan:[I


# instance fields
.field public appContext:Landroid/content/Context;

.field public currentActivity:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/tg/touchdelegate/TouchWs;->portsToScan:[I

    const-string v0, "0449CAFEBABE4908"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tg/touchdelegate/TouchWs;->PING_PAYLOAD:[B

    return-void

    nop

    :array_12
    .array-data 4
        0x205d
        0x205e
        0xe3ae
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;I[Z)V
    .registers 6

    invoke-direct {p0, p3}, Lorg/nanohttpd/protocols/websockets/NanoWSD;-><init>(I)V

    const/16 p3, 0x1388

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, p3, v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->start(IZ)V

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance p2, Lcom/tg/touchdelegate/TouchWs$nakliApp;

    invoke-direct {p2, p0}, Lcom/tg/touchdelegate/TouchWs$nakliApp;-><init>(Lcom/tg/touchdelegate/TouchWs;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    aput-boolean p1, p4, v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception p1

    aput-boolean v0, p4, v0

    const-string p2, "TouchWs::init"

    const-string p3, "IOException"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public static synthetic access$000(Lcom/tg/touchdelegate/TouchWs;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/tg/touchdelegate/TouchWs;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/tg/touchdelegate/TouchWs;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/tg/touchdelegate/TouchWs;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic access$300()[B
    .registers 1

    sget-object v0, Lcom/tg/touchdelegate/TouchWs;->PING_PAYLOAD:[B

    return-object v0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_f

    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public static startIt(Landroid/app/Activity;)V
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tg/touchdelegate/TouchWs;->portsToScan:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1e

    aget v6, v1, v4

    const/4 v7, 0x1

    new-array v7, v7, [Z

    new-instance v8, Lcom/tg/touchdelegate/TouchWs;

    invoke-direct {v8, p0, v0, v6, v7}, Lcom/tg/touchdelegate/TouchWs;-><init>(Landroid/app/Activity;Landroid/content/Context;I[Z)V

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1e
    move v6, v5

    :goto_1f
    if-ne v6, v5, :cond_2b

    const-string v0, "Trouble starting RemoteTouch server. Check logcat."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_43

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTouch server started at port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_43
    return-void
.end method

.method public static viewShot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method public final makeToast(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tg/touchdelegate/TouchWs$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tg/touchdelegate/TouchWs$1;-><init>(Lcom/tg/touchdelegate/TouchWs;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openWebSocket(Lorg/nanohttpd/protocols/http/IHTTPSession;)Lorg/nanohttpd/protocols/websockets/WebSocket;
    .registers 3

    new-instance v0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

    invoke-direct {v0, p0, p1}, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;-><init>(Lcom/tg/touchdelegate/TouchWs;Lorg/nanohttpd/protocols/http/IHTTPSession;)V

    return-object v0
.end method

.method public serve(Lorg/nanohttpd/protocols/http/IHTTPSession;)Lorg/nanohttpd/protocols/http/response/Response;
    .registers 8

    invoke-interface {p1}, Lorg/nanohttpd/protocols/http/IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "text/plain"

    if-eqz v2, :cond_55

    iget-object p1, p0, Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/16 p1, 0x1d

    sget-object v1, Lorg/nanohttpd/protocols/http/response/Status;->ACCEPTED:Lorg/nanohttpd/protocols/http/response/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hmmnoice"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tg/touchdelegate/TouchWs;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lorg/nanohttpd/protocols/http/response/Response;->newFixedLengthResponse(Lorg/nanohttpd/protocols/http/response/IStatus;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object p1

    return-object p1

    :cond_55
    const-string v2, "/scap53tgws5tw54t6w"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object p1, p0, Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tg/touchdelegate/TouchWs;->viewShot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_6f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_ba

    :try_start_74
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    sget-object p1, Lorg/nanohttpd/protocols/http/response/Status;->OK:Lorg/nanohttpd/protocols/http/response/Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/nanohttpd/protocols/http/response/Response;->newFixedLengthResponse(Lorg/nanohttpd/protocols/http/response/IStatus;Ljava/lang/String;[B)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object p1
    :try_end_ac
    .catchall {:try_start_74 .. :try_end_ac} :catchall_b0

    :try_start_ac
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_ba

    return-object p1

    :catchall_b0
    move-exception p1

    :try_start_b1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception v0

    :try_start_b6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b9
    throw p1
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ba} :catch_ba

    :catch_ba
    move-exception p1

    sget-object v0, Lorg/nanohttpd/protocols/http/response/Status;->SERVICE_UNAVAILABLE:Lorg/nanohttpd/protocols/http/response/Status;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lorg/nanohttpd/protocols/http/response/Response;->newFixedLengthResponse(Lorg/nanohttpd/protocols/http/response/IStatus;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object p1

    return-object p1

    :cond_c6
    invoke-super {p0, p1}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->serve(Lorg/nanohttpd/protocols/http/IHTTPSession;)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object p1

    return-object p1
.end method
