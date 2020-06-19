.class Lcom/robocatapps/thermo/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/x;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

    :cond_0
    const-string v0, "remove_ads"

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/util/Inventory;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "remove_ads_is_purchased"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/robocatapps/thermo/x;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->n(Lcom/robocatapps/thermo/MainActivity;)V

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string v0, "remove_ads_is_purchased"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
