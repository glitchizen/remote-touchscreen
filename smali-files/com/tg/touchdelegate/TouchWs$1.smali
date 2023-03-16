.class public Lcom/tg/touchdelegate/TouchWs$1;
.super Ljava/lang/Object;
.source "TouchWs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tg/touchdelegate/TouchWs;->makeToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tg/touchdelegate/TouchWs;

.field public final synthetic val$msg:Ljava/lang/String;

.field public final synthetic val$toastlen:I


# direct methods
.method public constructor <init>(Lcom/tg/touchdelegate/TouchWs;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$1;->this$0:Lcom/tg/touchdelegate/TouchWs;

    iput-object p2, p0, Lcom/tg/touchdelegate/TouchWs$1;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/tg/touchdelegate/TouchWs$1;->val$toastlen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tg/touchdelegate/TouchWs$1;->this$0:Lcom/tg/touchdelegate/TouchWs;

    # getter for: Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tg/touchdelegate/TouchWs;->access$100(Lcom/tg/touchdelegate/TouchWs;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tg/touchdelegate/TouchWs$1;->val$msg:Ljava/lang/String;

    iget v2, p0, Lcom/tg/touchdelegate/TouchWs$1;->val$toastlen:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method