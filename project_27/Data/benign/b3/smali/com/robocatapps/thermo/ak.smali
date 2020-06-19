.class Lcom/robocatapps/thermo/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const v5, 0x7f040009

    const v3, 0x7f040008

    const v2, 0x7f040006

    const v4, 0x7f040005

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const v1, 0x7f050008

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const-class v1, Lcom/robocatapps/thermo/aa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f050009

    invoke-static/range {v0 .. v6}, Lcom/robocatapps/thermo/SettingsActivity;->a(Lcom/robocatapps/thermo/SettingsActivity;Ljava/lang/String;IIIII)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const v1, 0x7f050008

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const-class v1, Lcom/robocatapps/thermo/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f050009

    invoke-static/range {v0 .. v6}, Lcom/robocatapps/thermo/SettingsActivity;->a(Lcom/robocatapps/thermo/SettingsActivity;Ljava/lang/String;IIIII)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/SettingsActivity;->b(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/SettingsActivity;->b(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const-string v2, "remove_ads"

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-static {v4}, Lcom/robocatapps/thermo/SettingsActivity;->d(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/util/IabHelper;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const v1, 0x7f090013

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const v1, 0x7f050003

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    const-class v1, Lcom/robocatapps/thermo/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040004

    const/high16 v3, 0x7f040000

    const v5, 0x7f040007

    move v4, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/robocatapps/thermo/SettingsActivity;->a(Lcom/robocatapps/thermo/SettingsActivity;Ljava/lang/String;IIIII)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/robocatapps/thermo/ak;->a:Lcom/robocatapps/thermo/SettingsActivity;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/SettingsActivity;->onBackPressed()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f07000a -> :sswitch_4
        0x7f070024 -> :sswitch_0
        0x7f070028 -> :sswitch_1
        0x7f07002a -> :sswitch_2
        0x7f07002e -> :sswitch_3
    .end sparse-switch
.end method
