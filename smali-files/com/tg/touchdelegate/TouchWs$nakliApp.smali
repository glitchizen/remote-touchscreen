.class public Lcom/tg/touchdelegate/TouchWs$nakliApp;
.super Landroid/app/Application;
.source "TouchWs.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tg/touchdelegate/TouchWs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "nakliApp"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tg/touchdelegate/TouchWs;


# direct methods
.method public constructor <init>(Lcom/tg/touchdelegate/TouchWs;)V
    .registers 2

    iput-object p1, p0, Lcom/tg/touchdelegate/TouchWs$nakliApp;->this$0:Lcom/tg/touchdelegate/TouchWs;

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tg/touchdelegate/TouchWs;Lcom/tg/touchdelegate/TouchWs$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tg/touchdelegate/TouchWs$nakliApp;-><init>(Lcom/tg/touchdelegate/TouchWs;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/tg/touchdelegate/TouchWs$nakliApp;->this$0:Lcom/tg/touchdelegate/TouchWs;

    # setter for: Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;
    invoke-static {v0, p1}, Lcom/tg/touchdelegate/TouchWs;->access$002(Lcom/tg/touchdelegate/TouchWs;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object p1, p0, Lcom/tg/touchdelegate/TouchWs$nakliApp;->this$0:Lcom/tg/touchdelegate/TouchWs;

    iget-object v0, p1, Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/tg/touchdelegate/TouchWs;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/tg/touchdelegate/TouchWs;->appContext:Landroid/content/Context;

    :cond_13
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method