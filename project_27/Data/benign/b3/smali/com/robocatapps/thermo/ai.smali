.class Lcom/robocatapps/thermo/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ai;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "remove_ads"

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/util/Inventory;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ai;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v1, v0}, Lcom/robocatapps/thermo/SettingsActivity;->a(Lcom/robocatapps/thermo/SettingsActivity;Z)V

    const-string v0, "remove_ads"

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/util/Inventory;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "remove_ads"

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/util/Inventory;->a(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ai;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v1}, Lcom/robocatapps/thermo/SettingsActivity;->c(Lcom/robocatapps/thermo/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/vending/billing/util/SkuDetails;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
