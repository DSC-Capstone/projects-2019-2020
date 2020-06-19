.class Lcom/robocatapps/thermo/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/w;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vending/billing/util/IabResult;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/w;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0, v2}, Lcom/robocatapps/thermo/MainActivity;->a(Lcom/robocatapps/thermo/MainActivity;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/w;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0, v3}, Lcom/robocatapps/thermo/MainActivity;->a(Lcom/robocatapps/thermo/MainActivity;Z)Z

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "remove_ads"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/a/b/ab;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/w;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v1}, Lcom/robocatapps/thermo/MainActivity;->j(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/w;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v2}, Lcom/robocatapps/thermo/MainActivity;->m(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/vending/billing/util/IabHelper;->a(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
