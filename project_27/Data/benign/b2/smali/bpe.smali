.class public Lbpe;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lbpp;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final aj:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/ImageView;

.field private f:Lbpo;

.field private g:Lbpl;

.field private h:Lio/senseai/kelvin/widget/ProgressGradientView;

.field private i:Lio/senseai/kelvin/widget/TemperatureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lbpe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpe;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    iput-boolean v0, p0, Lbpe;->b:Z

    .line 49
    iput-boolean v0, p0, Lbpe;->c:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbpe;->d:Z

    .line 60
    new-instance v0, Lbpf;

    invoke-direct {v0, p0}, Lbpf;-><init>(Lbpe;)V

    iput-object v0, p0, Lbpe;->aj:Landroid/os/Handler;

    return-void
.end method

.method private N()V
    .locals 6

    .prologue
    .line 267
    invoke-virtual {p0}, Lbpe;->q()Landroid/view/View;

    move-result-object v0

    .line 268
    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Lbpe;->i()Landroid/content/res/Resources;

    move-result-object v1

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 276
    const v3, 0x7f080046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 277
    const v4, 0x7f080045

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 278
    int-to-float v5, v2

    cmpg-float v5, v5, v3

    if-ltz v5, :cond_2

    int-to-float v5, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    .line 279
    :cond_2
    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 282
    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 283
    const v5, 0x7f080048

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 284
    iget-object v5, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v5}, Lio/senseai/kelvin/widget/TemperatureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iget-object v1, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/TemperatureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    iget-object v1, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/TemperatureView;->requestLayout()V

    .line 289
    iget-object v1, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/ProgressGradientView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-float v2, v3, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    iget-object v1, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/ProgressGradientView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-float v2, v4, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    iget-object v1, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/ProgressGradientView;->requestLayout()V

    .line 294
    iget-object v1, p0, Lbpe;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-float v2, v3, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    iget-object v1, p0, Lbpe;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 296
    iget-object v0, p0, Lbpe;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    goto/16 :goto_0
.end method

.method private O()V
    .locals 6

    .prologue
    .line 302
    iget-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/TemperatureView;->getTemperature()Lio/senseai/kelvinsdk/Temperature;

    move-result-object v0

    .line 304
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 305
    iget-object v2, p0, Lbpe;->e:Landroid/widget/ImageView;

    invoke-static {v2}, Lbpq;->c(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lbpe;->e:Landroid/widget/ImageView;

    invoke-static {v3}, Lbpq;->a(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 307
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 308
    new-instance v2, Lbpi;

    invoke-direct {v2, p0, v0}, Lbpi;-><init>(Lbpe;Lio/senseai/kelvinsdk/Temperature;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-static {v0}, Lbpq;->b(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 355
    new-instance v1, Lbpj;

    invoke-direct {v1, p0}, Lbpj;-><init>(Lbpe;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 381
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 382
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lbpe;->aj:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    return-void
.end method

.method public static a()Lbpe;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lbpe;

    invoke-direct {v0}, Lbpe;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    return-object v0
.end method

.method static synthetic a(Lbpe;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lbpe;->b:Z

    return p1
.end method

.method static synthetic b(Lbpe;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbpe;->aj:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lbpe;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lbpe;->N()V

    return-void
.end method

.method static synthetic d(Lbpe;)Lio/senseai/kelvin/widget/TemperatureView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    return-object v0
.end method

.method static synthetic e(Lbpe;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbpe;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lbpe;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lbpe;->P()V

    return-void
.end method

.method static synthetic g(Lbpe;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lbpe;->Q()V

    return-void
.end method

.method static synthetic h(Lbpe;)Lbpl;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbpe;->g:Lbpl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0d0060

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 108
    const v0, 0x7f03001c

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbpe;->e:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0d0061

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvin/widget/ProgressGradientView;

    iput-object v0, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    .line 112
    const v0, 0x7f0d005f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvin/widget/TemperatureView;

    iput-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    .line 115
    if-eqz p3, :cond_2

    .line 116
    const-string v0, "temperatureUnits"

    sget-object v1, Lbpn;->a:Lbpn;

    invoke-virtual {v1}, Lbpn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lbpn;->valueOf(Ljava/lang/String;)Lbpn;

    move-result-object v1

    .line 120
    const-string v0, "temperature"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/Temperature;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lbpe;->a(Lio/senseai/kelvinsdk/Temperature;)V

    .line 123
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Temperature;->getTemperatureAccuracy()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v0, v8}, Lio/senseai/kelvin/widget/ProgressGradientView;->setSegmented(Z)V

    .line 130
    :cond_0
    const-string v0, "rotation"

    invoke-virtual {p3, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    iput-boolean v8, p0, Lbpe;->d:Z

    .line 133
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v0, v8}, Lio/senseai/kelvin/widget/ProgressGradientView;->setVisibility(I)V

    :goto_0
    move-object v0, v1

    .line 144
    :goto_1
    iget-object v1, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v1, v0}, Lio/senseai/kelvin/widget/TemperatureView;->setDisplayUnits(Lbpn;)V

    .line 146
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbpg;

    invoke-direct {v1, p0, v2}, Lbpg;-><init>(Lbpe;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 158
    const v0, 0x7f0d0062

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    new-instance v1, Lbph;

    invoke-direct {v1, p0}, Lbph;-><init>(Lbpe;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-object v2

    .line 136
    :cond_1
    iput-boolean v3, p0, Lbpe;->d:Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v0

    invoke-static {v0}, Lbpr;->a(Landroid/content/Context;)Lbpn;

    move-result-object v0

    .line 141
    iput-boolean v3, p0, Lbpe;->d:Z

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v0

    check-cast v0, Lbpl;

    iput-object v0, p0, Lbpe;->g:Lbpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement KelvinInitHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "fullConfidenceReached"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbpe;->c:Z

    .line 103
    :cond_0
    new-instance v0, Lbpo;

    invoke-direct {v0, p0}, Lbpo;-><init>(Lbpp;)V

    iput-object v0, p0, Lbpe;->f:Lbpo;

    .line 104
    return-void
.end method

.method public a(Lio/senseai/kelvinsdk/Temperature;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 230
    iget-boolean v0, p0, Lbpe;->b:Z

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v0, p1}, Lio/senseai/kelvin/widget/TemperatureView;->setTemperature(Lio/senseai/kelvinsdk/Temperature;)V

    .line 235
    invoke-virtual {p0}, Lbpe;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lbpt;->b(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)I

    move-result v0

    .line 236
    invoke-virtual {p0}, Lbpe;->i()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v1}, Lbpt;->c(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)I

    move-result v1

    .line 237
    iget-object v2, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v2, v0, v1}, Lio/senseai/kelvin/widget/ProgressGradientView;->a(II)V

    .line 240
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTemperatureAccuracy()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 241
    iget-object v2, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvin/widget/ProgressGradientView;->setProgress(D)V

    .line 243
    cmpg-double v2, v0, v6

    if-gez v2, :cond_0

    iget-boolean v2, p0, Lbpe;->c:Z

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v2, v9}, Lio/senseai/kelvin/widget/ProgressGradientView;->setSegmented(Z)V

    .line 245
    invoke-direct {p0}, Lbpe;->Q()V

    .line 246
    iput-boolean v8, p0, Lbpe;->c:Z

    .line 249
    :cond_0
    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    .line 250
    iget-boolean v0, p0, Lbpe;->c:Z

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lbpe;->h:Lio/senseai/kelvin/widget/ProgressGradientView;

    invoke-virtual {v0, v8}, Lio/senseai/kelvin/widget/ProgressGradientView;->setSegmented(Z)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    iput-boolean v9, p0, Lbpe;->c:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->b()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lbpe;->g:Lbpl;

    .line 173
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "rotation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    :goto_0
    const-string v0, "fullConfidenceReached"

    iget-boolean v1, p0, Lbpe;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    iget-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/TemperatureView;->getDisplayUnits()Lbpn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "temperatureUnits"

    iget-object v1, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/TemperatureView;->getDisplayUnits()Lbpn;

    move-result-object v1

    invoke-virtual {v1}, Lbpn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    const-string v0, "temperature"

    iget-object v1, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v1}, Lio/senseai/kelvin/widget/TemperatureView;->getTemperature()Lio/senseai/kelvinsdk/Temperature;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    return-void

    .line 218
    :cond_1
    const-string v0, "rotation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public r()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r()V

    .line 195
    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v0

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lbpe;->f:Lbpo;

    iget-object v2, p0, Lbpe;->f:Lbpo;

    invoke-virtual {v2}, Lbpo;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lay;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 198
    iget-boolean v0, p0, Lbpe;->d:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0}, Lbpe;->O()V

    .line 204
    :goto_0
    iget-object v0, p0, Lbpe;->g:Lbpl;

    invoke-interface {v0}, Lbpl;->h()V

    .line 206
    iget-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/TemperatureView;->getDisplayUnits()Lbpn;

    move-result-object v0

    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v1

    invoke-static {v1}, Lbpr;->a(Landroid/content/Context;)Lbpn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lbpe;->i:Lio/senseai/kelvin/widget/TemperatureView;

    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v1

    invoke-static {v1}, Lbpr;->a(Landroid/content/Context;)Lbpn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/senseai/kelvin/widget/TemperatureView;->setDisplayUnits(Lbpn;)V

    .line 209
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lbpe;->Q()V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    .line 183
    iget-object v0, p0, Lbpe;->aj:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {p0}, Lbpe;->h()Lo;

    move-result-object v0

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lbpe;->f:Lbpo;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/BroadcastReceiver;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbpe;->d:Z

    .line 189
    return-void
.end method
