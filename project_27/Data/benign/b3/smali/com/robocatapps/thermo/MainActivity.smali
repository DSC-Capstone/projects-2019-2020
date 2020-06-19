.class public Lcom/robocatapps/thermo/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field a:Lcom/google/ads/c;

.field private b:Lnet/simonvt/menudrawer/k;

.field private c:Lcom/robocatapps/thermo/ui/ThermometerView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ImageButton;

.field private g:Lcom/google/ads/AdView;

.field private h:I

.field private i:Landroid/os/Handler;

.field private final j:Landroid/content/BroadcastReceiver;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Lnet/simonvt/menudrawer/m;

.field private n:Lcom/android/vending/billing/util/IabHelper;

.field private o:Z

.field private p:Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;

.field private q:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

.field private r:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/robocatapps/thermo/MainActivity;->h:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->i:Landroid/os/Handler;

    new-instance v0, Lcom/robocatapps/thermo/o;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/o;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->a:Lcom/google/ads/c;

    new-instance v0, Lcom/robocatapps/thermo/q;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/q;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/robocatapps/thermo/r;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/r;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/robocatapps/thermo/u;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/u;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/robocatapps/thermo/v;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/v;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->m:Lnet/simonvt/menudrawer/m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/robocatapps/thermo/MainActivity;->o:Z

    new-instance v0, Lcom/robocatapps/thermo/w;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/w;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->p:Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v0, Lcom/robocatapps/thermo/x;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/x;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->q:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    new-instance v0, Lcom/robocatapps/thermo/y;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/y;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->r:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/robocatapps/thermo/MainActivity;->h:I

    return p1
.end method

.method static synthetic a(Lcom/robocatapps/thermo/MainActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/robocatapps/thermo/j;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/robocatapps/thermo/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/robocatapps/thermo/MainActivity;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/robocatapps/thermo/MainActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;->f:Ljava/lang/String;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;->g:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic c(Lcom/robocatapps/thermo/MainActivity;)Lcom/robocatapps/thermo/ui/ThermometerView;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/robocatapps/thermo/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    const v0, 0x7f040001

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/robocatapps/thermo/MainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/robocatapps/thermo/MainActivity;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/robocatapps/thermo/j;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%1s,%2s,%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://thermo.me/?e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_1

    const v0, 0x7f090021

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/robocatapps/thermo/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-gt v0, v3, :cond_2

    const v0, 0x7f090030

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/robocatapps/thermo/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f09001d

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/robocatapps/thermo/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/robocatapps/thermo/MainActivity;)Lnet/simonvt/menudrawer/k;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->g:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->g:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->a()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->c()V

    return-void
.end method

.method static synthetic g(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->d()V

    return-void
.end method

.method static synthetic h(Lcom/robocatapps/thermo/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/robocatapps/thermo/MainActivity;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->r:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method

.method static synthetic j(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->n:Lcom/android/vending/billing/util/IabHelper;

    return-object v0
.end method

.method static synthetic k(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->f:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic l(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/robocatapps/thermo/MainActivity;)Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->q:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic n(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->e()V

    return-void
.end method

.method static synthetic o(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
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

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->n:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/billing/util/IabHelper;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->setContentView(I)V

    new-instance v0, Lcom/android/vending/billing/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkHrY4llKwyzOkbGA77Rw87bXGcXD2YsNRpo6TqqKCMezQzftAtmJDOzXyL8R+S7hnm96aBRElkmXKWeU+bTHWIwdcU8O1LGGji3yzQPWnd00SGbvcoIcPXV2H/l2yoQQI8jz4ylhS+fKwmPI0Oz96ST8DOaPOP+y2Jb08+Jq2mXEVQdr4xCnK9aDKKwgW3aVGH8HQC0m1CM7TP9P59WIbOs3ck/p4NpsIK9BOV/4Hd7+JZv/dU3cn+QfsVDZltM42ZeA6osjK659Kq+4jI41LeOJFOba9VKHQiur3cvxhKCx9dtFz/0sJBI71E68Y+HwGzQkfSgj4z/dajI2gOQPBQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/android/vending/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->n:Lcom/android/vending/billing/util/IabHelper;

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->n:Lcom/android/vending/billing/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->a(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->n:Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->p:Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->a(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->g:Lcom/google/ads/AdView;

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->g:Lcom/google/ads/AdView;

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->a:Lcom/google/ads/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/c;)V

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->e:Landroid/view/ViewGroup;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/k;

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/k;->setTouchMode(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->m:Lnet/simonvt/menudrawer/m;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/k;->setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/m;)V

    const/high16 v0, 0x43b40000    # 360.0f

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/k;->getMenuSize()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    invoke-virtual {p0}, Lcom/robocatapps/thermo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    iget-object v9, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    new-instance v0, Lcom/robocatapps/thermo/z;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/robocatapps/thermo/z;-><init>(Lcom/robocatapps/thermo/MainActivity;Landroid/graphics/Canvas;Landroid/graphics/Matrix;FIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v0}, Lnet/simonvt/menudrawer/k;->setOnContentOffsetChangeListener(Lnet/simonvt/menudrawer/l;)V

    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/robocatapps/thermo/ui/ThermometerView;

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    new-instance v1, Lcom/robocatapps/thermo/p;

    invoke-direct {v1, p0}, Lcom/robocatapps/thermo/p;-><init>(Lcom/robocatapps/thermo/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->setThermometerTouchListener(Lcom/robocatapps/thermo/ui/f;)V

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lasttemperaturecelsius"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastfeelslikecelsius"

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-virtual {v2, v0, v1, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(III)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/robocatapps/thermo/service/WeatherUpdateService;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/robocatapps/thermo/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->d:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->n:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->a()V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->g:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->g:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->a()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->b:Lnet/simonvt/menudrawer/k;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/k;->h()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Landroid/os/Handler;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    const-string v1, "com.robocat.thermo.settings.show_feels_like"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    const-string v1, "com.robocat.thermo.settings.show_yesterday"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Z)V

    const-string v0, "com.robocat.thermo.settings.units_is_celsius"

    invoke-static {v0}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/robocatapps/thermo/MainActivity;->c:Lcom/robocatapps/thermo/ui/ThermometerView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/robocatapps/thermo/ui/g;->a:Lcom/robocatapps/thermo/ui/g;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->setTemperatureUnits(Lcom/robocatapps/thermo/ui/g;)V

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remove_ads_is_purchased"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->e()V

    :cond_0
    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->b()V

    invoke-direct {p0}, Lcom/robocatapps/thermo/MainActivity;->a()V

    return-void

    :cond_1
    sget-object v0, Lcom/robocatapps/thermo/ui/g;->b:Lcom/robocatapps/thermo/ui/g;

    goto :goto_0
.end method
