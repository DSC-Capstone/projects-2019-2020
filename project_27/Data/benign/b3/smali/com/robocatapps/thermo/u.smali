.class Lcom/robocatapps/thermo/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->h(Lcom/robocatapps/thermo/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->j(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    const-string v2, "remove_ads"

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v4}, Lcom/robocatapps/thermo/MainActivity;->i(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/u;->a:Lcom/robocatapps/thermo/MainActivity;

    const v1, 0x7f090013

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
