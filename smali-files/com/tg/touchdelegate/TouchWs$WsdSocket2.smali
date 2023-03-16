.class public Lcom/tg/touchdelegate/TouchWs$WsdSocket2;
.super Lorg/nanohttpd/protocols/websockets/WebSocket;
.source "TouchWs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tg/touchdelegate/TouchWs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WsdSocket2"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public ping:Ljava/util/TimerTask;

.field public final synthetic this$0:Lcom/tg/touchdelegate/TouchWs;


# direct methods
.method public constructor <init>(Lcom/tg/touchdelegate/TouchWs;Lorg/nanohttpd/protocols/http/IHTTPSession;)V
    .registers 3

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->this$0:Lcom/tg/touchdelegate/TouchWs;

    invoke-direct {p0, p2}, Lorg/nanohttpd/protocols/websockets/WebSocket;-><init>(Lorg/nanohttpd/protocols/http/IHTTPSession;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$400(Lcom/tg/touchdelegate/TouchWs$WsdSocket2;)Ljava/util/TimerTask;
    .registers 1

    iget-object p0, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    return-object p0
.end method


# virtual methods
.method public onClose(Lorg/nanohttpd/protocols/websockets/CloseCode;Ljava/lang/String;Z)V
    .registers 4

    iget-object p1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_7
    return-void
.end method

.method public onException(Ljava/io/IOException;)V
    .registers 2

    return-void
.end method

.method public onMessage(Lorg/nanohttpd/protocols/websockets/WebSocketFrame;)V
    .registers 2

    :try_start_0
    invoke-virtual {p1}, Lorg/nanohttpd/protocols/websockets/WebSocketFrame;->getBinaryPayload()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->try3STANDARDIZED([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public onOpen()V
    .registers 8

    iget-object v0, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    if-nez v0, :cond_19

    new-instance v0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$1;

    invoke-direct {v0, p0}, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$1;-><init>(Lcom/tg/touchdelegate/TouchWs$WsdSocket2;)V

    iput-object v0, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iget-object v2, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_19
    return-void
.end method

.method public onPong(Lorg/nanohttpd/protocols/websockets/WebSocketFrame;)V
    .registers 2

    return-void
.end method

.method public try3STANDARDIZED([B)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_9
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_ce
    .catchall {:try_start_9 .. :try_end_e} :catchall_cb

    const-wide/16 v4, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x1002

    const/16 v19, 0x0

    :try_start_18
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v14

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v15

    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v9, :cond_9c

    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v10, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    aget-object v6, v10, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v6, v11, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_9c
    iget-object v0, v1, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_ab

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->mHandler:Landroid/os/Handler;

    :cond_ab
    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v4, v1, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;

    invoke-direct {v5, v1, v0}, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;-><init>(Lcom/tg/touchdelegate/TouchWs$WsdSocket2;Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_bb
    .catchall {:try_start_18 .. :try_end_bb} :catchall_bf

    :try_start_bb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_ce
    .catchall {:try_start_bb .. :try_end_be} :catchall_cb

    goto :goto_d6

    :catchall_bf
    move-exception v0

    move-object v4, v0

    :try_start_c1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_ca

    :catchall_c5
    move-exception v0

    move-object v3, v0

    :try_start_c7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ca
    throw v4
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cb} :catch_ce
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception v0

    move-object v3, v0

    goto :goto_da

    :catch_ce
    move-exception v0

    :try_start_cf
    const-string v3, "TouchWs::WsdSocket2::onMessage"

    const-string v4, "error dispatching motionEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_cb

    :goto_d6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :goto_da
    :try_start_da
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_de

    goto :goto_e3

    :catchall_de
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e3
    throw v3
.end method
