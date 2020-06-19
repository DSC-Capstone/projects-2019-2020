.class Lcom/robocatapps/thermo/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/aj;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error purchasing: "

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
    invoke-virtual {p2}, Lcom/android/vending/billing/util/Purchase;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remove_ads_is_purchased"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/robocatapps/thermo/aj;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v0, v2}, Lcom/robocatapps/thermo/SettingsActivity;->a(Lcom/robocatapps/thermo/SettingsActivity;Z)V

    goto :goto_0
.end method
