.class public Lcom/robocatapps/thermo/SettingsActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Lcom/android/vending/billing/util/IabHelper;

.field private g:Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;

.field private h:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

.field private i:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/robocatapps/thermo/ah;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ah;-><init>(Lcom/robocatapps/thermo/SettingsActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->g:Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v0, Lcom/robocatapps/thermo/ai;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ai;-><init>(Lcom/robocatapps/thermo/SettingsActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->h:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    new-instance v0, Lcom/robocatapps/thermo/aj;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/aj;-><init>(Lcom/robocatapps/thermo/SettingsActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->i:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v0, Lcom/robocatapps/thermo/ak;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ak;-><init>(Lcom/robocatapps/thermo/SettingsActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->h:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic a(Lcom/robocatapps/thermo/SettingsActivity;Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/robocatapps/thermo/SettingsActivity;->a(Ljava/lang/String;IIIII)V

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/SettingsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/SettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-static {p0, p1, p4, p5, p6}, Lcom/robocatapps/thermo/FragmentHolderActivity;->a(Landroid/content/Context;Ljava/lang/String;III)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lcom/robocatapps/thermo/SettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/robocatapps/thermo/SettingsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/robocatapps/thermo/SettingsActivity;)Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->i:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/billing/util/IabHelper;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const v0, 0x7f040001

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/robocatapps/thermo/SettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->setContentView(I)V

    new-instance v0, Lcom/android/vending/billing/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkHrY4llKwyzOkbGA77Rw87bXGcXD2YsNRpo6TqqKCMezQzftAtmJDOzXyL8R+S7hnm96aBRElkmXKWeU+bTHWIwdcU8O1LGGji3yzQPWnd00SGbvcoIcPXV2H/l2yoQQI8jz4ylhS+fKwmPI0Oz96ST8DOaPOP+y2Jb08+Jq2mXEVQdr4xCnK9aDKKwgW3aVGH8HQC0m1CM7TP9P59WIbOs3ck/p4NpsIK9BOV/4Hd7+JZv/dU3cn+QfsVDZltM42ZeA6osjK659Kq+4jI41LeOJFOba9VKHQiur3cvxhKCx9dtFz/0sJBI71E68Y+HwGzQkfSgj4z/dajI2gOQPBQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/android/vending/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    const-string v1, "IabFromSettings"

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/billing/util/IabHelper;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->g:Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->a(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f070026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->f:Lcom/android/vending/billing/util/IabHelper;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/robocatapps/thermo/SettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f050007

    invoke-static {p0, v0}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/robocatapps/thermo/j;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/SettingsActivity;->a:Landroid/widget/TextView;

    const-string v1, "\ufffd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/robocatapps/thermo/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/robocatapps/thermo/SettingsActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
