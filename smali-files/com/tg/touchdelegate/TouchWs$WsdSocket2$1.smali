.class public Lcom/tg/touchdelegate/TouchWs$WsdSocket2$1;
.super Ljava/util/TimerTask;
.source "TouchWs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->onOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;


# direct methods
.method public constructor <init>(Lcom/tg/touchdelegate/TouchWs$WsdSocket2;)V
    .registers 2

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$1;->this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$1;->this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

    # getter for: Lcom/tg/touchdelegate/TouchWs;->PING_PAYLOAD:[B
    invoke-static {}, Lcom/tg/touchdelegate/TouchWs;->access$300()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/nanohttpd/protocols/websockets/WebSocket;->ping([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    iget-object v0, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$1;->this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

    iget-object v0, v0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->ping:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :goto_11
    return-void
.end method