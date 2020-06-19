.class Lcom/novioplan/pollennieuws/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/SplashActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/SplashActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/SplashActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/novioplan/pollennieuws/SplashActivity$1;->this$0:Lcom/novioplan/pollennieuws/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/novioplan/pollennieuws/SplashActivity$1;->this$0:Lcom/novioplan/pollennieuws/SplashActivity;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/SplashActivity;->finish()V

    .line 40
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/SplashActivity$1;->this$0:Lcom/novioplan/pollennieuws/SplashActivity;

    const-class v2, Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "mainIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novioplan/pollennieuws/SplashActivity$1;->this$0:Lcom/novioplan/pollennieuws/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/novioplan/pollennieuws/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
