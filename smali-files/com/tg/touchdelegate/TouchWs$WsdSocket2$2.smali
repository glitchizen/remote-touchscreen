.class public Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;
.super Ljava/lang/Object;
.source "TouchWs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->try3STANDARDIZED([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

.field public final synthetic val$x:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/tg/touchdelegate/TouchWs$WsdSocket2;Landroid/view/MotionEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;->this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

    iput-object p2, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;->val$x:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;->this$1:Lcom/tg/touchdelegate/TouchWs$WsdSocket2;

    iget-object v0, v0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2;->this$0:Lcom/tg/touchdelegate/TouchWs;

    # getter for: Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tg/touchdelegate/TouchWs;->access$000(Lcom/tg/touchdelegate/TouchWs;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tg/touchdelegate/TouchWs$WsdSocket2$2;->val$x:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method