.class Lcom/robocatapps/thermo/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ah;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vending/billing/util/IabResult;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to setup IAB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "remove_ads"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/b/ab;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ah;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v1}, Lcom/robocatapps/thermo/SettingsActivity;->b(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/ah;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v2}, Lcom/robocatapps/thermo/SettingsActivity;->a(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/vending/billing/util/IabHelper;->a(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
