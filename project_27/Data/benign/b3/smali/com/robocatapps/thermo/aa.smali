.class public Lcom/robocatapps/thermo/aa;
.super Lcom/robocatapps/thermo/h;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private a:Lcom/google/android/gms/maps/c;

.field private b:Lcom/robocatapps/thermo/j;

.field private c:Lcom/google/android/gms/maps/model/h;

.field private d:Lcom/google/android/gms/maps/MapView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/view/View;

.field private g:Landroid/view/animation/AlphaAnimation;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/robocatapps/thermo/model/Location;

.field private k:Lcom/google/a/d/a/e;

.field private l:Landroid/os/Handler;

.field private final n:Ljava/lang/Runnable;

.field private final o:Landroid/content/BroadcastReceiver;

.field private p:Lcom/google/a/d/a/d;

.field private q:Lcom/google/a/d/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/aa;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LOCATION_FIX_INTENT_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/aa;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/robocatapps/thermo/h;-><init>()V

    new-instance v0, Lcom/robocatapps/thermo/ab;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ab;-><init>(Lcom/robocatapps/thermo/aa;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/robocatapps/thermo/ac;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ac;-><init>(Lcom/robocatapps/thermo/aa;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/robocatapps/thermo/ad;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ad;-><init>(Lcom/robocatapps/thermo/aa;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->p:Lcom/google/a/d/a/d;

    new-instance v0, Lcom/robocatapps/thermo/ae;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ae;-><init>(Lcom/robocatapps/thermo/aa;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->q:Lcom/google/a/d/a/d;

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/aa;Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Location;
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/robocatapps/thermo/aa;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/robocatapps/thermo/aa;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->b:Lcom/robocatapps/thermo/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/robocatapps/thermo/j;->a(Landroid/content/Intent;Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/aa;->a(Z)V
    :try_end_0
    .catch Lcom/robocatapps/thermo/n; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/h;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/h;->a(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/h;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/robocatapps/thermo/aa;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/aa;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic b(Lcom/robocatapps/thermo/aa;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 7

    const-string v0, "MOVE TO LOCASTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v3}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v5}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v2, v1, v0}, Lcom/robocatapps/thermo/aa;->a(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/robocatapps/thermo/aa;)Lcom/google/a/d/a/d;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->p:Lcom/google/a/d/a/d;

    return-object v0
.end method

.method static synthetic d(Lcom/robocatapps/thermo/aa;)Lcom/robocatapps/thermo/model/Location;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    return-object v0
.end method

.method static synthetic e(Lcom/robocatapps/thermo/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/robocatapps/thermo/aa;->b()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/robocatapps/thermo/h;->onActivityCreated(Landroid/os/Bundle;)V

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/aa;->a(I)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->l:Landroid/os/Handler;

    :try_start_0
    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/i;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->i:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->g:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/robocatapps/thermo/j;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/robocatapps/thermo/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->b:Lcom/robocatapps/thermo/j;

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/j;->a(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/j;->b(Z)V

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, v3, v4, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/h;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->c:Lcom/google/android/gms/maps/model/h;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/h;->a(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcom/robocatapps/thermo/af;

    invoke-direct {v1, p0}, Lcom/robocatapps/thermo/af;-><init>(Lcom/robocatapps/thermo/aa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/e;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/robocatapps/thermo/ag;

    invoke-direct {v1, p0}, Lcom/robocatapps/thermo/ag;-><init>(Lcom/robocatapps/thermo/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lcom/robocatapps/thermo/aa;->a(Z)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/robocatapps/thermo/aa;->a()V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->g:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->k:Lcom/google/a/d/a/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->k:Lcom/google/a/d/a/e;

    invoke-interface {v1, v2}, Lcom/google/a/d/a/e;->cancel(Z)Z

    :cond_2
    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->b:Lcom/robocatapps/thermo/j;

    invoke-virtual {v1, v0}, Lcom/robocatapps/thermo/j;->a(Ljava/lang/String;)Lcom/google/a/d/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->k:Lcom/google/a/d/a/e;

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->k:Lcom/google/a/d/a/e;

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->q:Lcom/google/a/d/a/d;

    invoke-static {p0, v0, v1}, La/a/a/a;->a(Ljava/lang/Object;Lcom/google/a/d/a/e;Lcom/google/a/d/a/d;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/aa;->a(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/robocatapps/thermo/h;->onPause()V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->b()V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, v3}, Lcom/robocatapps/thermo/aa;->a(Z)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    const-string v0, "MapFragment."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-static {v0}, Lcom/robocatapps/thermo/j;->d(Lcom/robocatapps/thermo/model/Location;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/robocatapps/thermo/j;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/robocatapps/thermo/h;->onResume()V

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->a()V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->o:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/robocatapps/thermo/aa;->m:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/robocatapps/thermo/aa;->d:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->a:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/robocatapps/thermo/j;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/aa;->j:Lcom/robocatapps/thermo/model/Location;

    invoke-static {}, Lcom/robocatapps/thermo/j;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/robocatapps/thermo/aa;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/robocatapps/thermo/aa;->b()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/robocatapps/thermo/h;->onStop()V

    invoke-static {p0}, La/a/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method
