.class public Lcom/novioplan/pollennieuws/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# instance fields
.field private final SPLASH_DISPLAY_LENGTH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/16 v0, 0x64

    iput v0, p0, Lcom/novioplan/pollennieuws/SplashActivity;->SPLASH_DISPLAY_LENGTH:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/SplashActivity;->setContentView(I)V

    .line 20
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 26
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 28
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "isSplashEnabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    .local v0, "isSplashEnabled":Z
    if-eqz v0, :cond_0

    .line 32
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/novioplan/pollennieuws/SplashActivity$1;

    invoke-direct {v4, p0}, Lcom/novioplan/pollennieuws/SplashActivity$1;-><init>(Lcom/novioplan/pollennieuws/SplashActivity;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/SplashActivity;->finish()V

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v1, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
