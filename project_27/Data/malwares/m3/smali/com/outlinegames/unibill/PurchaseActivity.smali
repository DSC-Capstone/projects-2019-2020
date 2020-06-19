.class public Lcom/outlinegames/unibill/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"


# static fields
.field private static volatile instance:Lcom/outlinegames/unibill/PurchaseActivity;

.field private static purchaseInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static declared-synchronized Finish()V
    .locals 4

    .prologue
    .line 16
    const-class v2, Lcom/outlinegames/unibill/PurchaseActivity;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/outlinegames/unibill/PurchaseActivity;->instance:Lcom/outlinegames/unibill/PurchaseActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 18
    :try_start_1
    sget-object v1, Lcom/outlinegames/unibill/PurchaseActivity;->instance:Lcom/outlinegames/unibill/PurchaseActivity;

    invoke-virtual {v1}, Lcom/outlinegames/unibill/PurchaseActivity;->finish()V

    .line 19
    const/4 v1, 0x0

    sput-object v1, Lcom/outlinegames/unibill/PurchaseActivity;->instance:Lcom/outlinegames/unibill/PurchaseActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 20
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "UNIBILL"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "Unibill"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method private static declared-synchronized set(Lcom/outlinegames/unibill/PurchaseActivity;)V
    .locals 2
    .param p0, "instance"    # Lcom/outlinegames/unibill/PurchaseActivity;

    .prologue
    .line 27
    const-class v0, Lcom/outlinegames/unibill/PurchaseActivity;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/outlinegames/unibill/PurchaseActivity;->instance:Lcom/outlinegames/unibill/PurchaseActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    const/4 v1, 0x0

    sput-boolean v1, Lcom/outlinegames/unibill/PurchaseActivity;->purchaseInProgress:Z

    .line 83
    :try_start_0
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/outlinegames/unibill/UniBill;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->finish()V

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    iget-boolean v0, v0, Lcom/outlinegames/unibill/UniBill;->activityPending:Z

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "PurchaseActivity onCreate"

    invoke-direct {p0, v0}, Lcom/outlinegames/unibill/PurchaseActivity;->log(Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->set(Lcom/outlinegames/unibill/PurchaseActivity;)V

    .line 40
    invoke-virtual {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "productId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "itemType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "developerPayload":Ljava/lang/String;
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/outlinegames/unibill/UniBill;->activityPending:Z

    .line 45
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    iget-object v0, v0, Lcom/outlinegames/unibill/UniBill;->helper:Lcom/outlinegames/unibill/IabHelper;

    if-nez v0, :cond_1

    .line 46
    const-string v0, "Unibill is not initialised. Finishing..."

    invoke-direct {p0, v0}, Lcom/outlinegames/unibill/PurchaseActivity;->log(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/outlinegames/unibill/PurchaseActivity;->finish()V

    goto :goto_0

    .line 52
    :cond_1
    :try_start_0
    const-string v0, "inapp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    iget-object v0, v0, Lcom/outlinegames/unibill/UniBill;->helper:Lcom/outlinegames/unibill/IabHelper;

    .line 54
    const/16 v3, 0x3e7

    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v1

    iget-object v4, v1, Lcom/outlinegames/unibill/UniBill;->PurchaseListener:Lcom/outlinegames/unibill/IabHelper$OnIabPurchaseFinishedListener;

    move-object v1, p0

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/outlinegames/unibill/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/outlinegames/unibill/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/outlinegames/unibill/PurchaseActivity;->purchaseInProgress:Z

    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    iget-object v0, v0, Lcom/outlinegames/unibill/UniBill;->helper:Lcom/outlinegames/unibill/IabHelper;

    .line 57
    const/16 v3, 0x3e7

    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v1

    iget-object v4, v1, Lcom/outlinegames/unibill/UniBill;->PurchaseListener:Lcom/outlinegames/unibill/IabHelper$OnIabPurchaseFinishedListener;

    move-object v1, p0

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/outlinegames/unibill/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/outlinegames/unibill/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v6

    .line 60
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    sget-boolean v0, Lcom/outlinegames/unibill/PurchaseActivity;->purchaseInProgress:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    sput-boolean v1, Lcom/outlinegames/unibill/PurchaseActivity;->purchaseInProgress:Z

    .line 72
    :try_start_0
    invoke-static {}, Lcom/outlinegames/unibill/UniBill;->instance()Lcom/outlinegames/unibill/UniBill;

    move-result-object v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/outlinegames/unibill/UniBill;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
