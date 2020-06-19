.class public Lnp;
.super Lmo;
.source "SourceFile"

# interfaces
.implements Lpr;


# static fields
.field static final synthetic g:Z

.field private static final h:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Loa;

.field private G:Z

.field a:Lrs;

.field b:Lrt;

.field c:Z

.field final d:Liw;

.field final e:Liw;

.field final f:Liy;

.field private i:Landroid/content/Context;

.field private j:Landroid/content/Context;

.field private k:Landroid/app/Activity;

.field private l:Landroid/app/Dialog;

.field private m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private n:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private o:Lqm;

.field private p:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private q:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private r:Landroid/view/View;

.field private s:Lqu;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Z

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Lnp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lnp;->g:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lnp;->h:Z

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Lmo;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnp;->t:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lnp;->u:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnp;->w:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lnp;->z:I

    .line 122
    iput-boolean v1, p0, Lnp;->A:Z

    .line 127
    iput-boolean v1, p0, Lnp;->E:Z

    .line 135
    new-instance v0, Lnq;

    invoke-direct {v0, p0}, Lnq;-><init>(Lnp;)V

    iput-object v0, p0, Lnp;->d:Liw;

    .line 155
    new-instance v0, Lnr;

    invoke-direct {v0, p0}, Lnr;-><init>(Lnp;)V

    iput-object v0, p0, Lnp;->e:Liw;

    .line 163
    new-instance v0, Lns;

    invoke-direct {v0, p0}, Lns;-><init>(Lnp;)V

    iput-object v0, p0, Lnp;->f:Liy;

    .line 173
    iput-object p1, p0, Lnp;->k:Landroid/app/Activity;

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lnp;->a(Landroid/view/View;)V

    .line 177
    if-nez p2, :cond_0

    .line 178
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnp;->r:Landroid/view/View;

    .line 180
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-direct {p0}, Lmo;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnp;->t:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lnp;->u:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnp;->w:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lnp;->z:I

    .line 122
    iput-boolean v1, p0, Lnp;->A:Z

    .line 127
    iput-boolean v1, p0, Lnp;->E:Z

    .line 135
    new-instance v0, Lnq;

    invoke-direct {v0, p0}, Lnq;-><init>(Lnp;)V

    iput-object v0, p0, Lnp;->d:Liw;

    .line 155
    new-instance v0, Lnr;

    invoke-direct {v0, p0}, Lnr;-><init>(Lnp;)V

    iput-object v0, p0, Lnp;->e:Liw;

    .line 163
    new-instance v0, Lns;

    invoke-direct {v0, p0}, Lns;-><init>(Lnp;)V

    iput-object v0, p0, Lnp;->f:Liy;

    .line 183
    iput-object p1, p0, Lnp;->l:Landroid/app/Dialog;

    .line 184
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lnp;->a(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method static synthetic a(Lnp;Loa;)Loa;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lnp;->F:Loa;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    sget v0, Lng;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 198
    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lpr;)V

    .line 201
    :cond_0
    sget v0, Lng;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lnp;->b(Landroid/view/View;)Lqm;

    move-result-object v0

    iput-object v0, p0, Lnp;->o:Lqm;

    .line 202
    sget v0, Lng;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lnp;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 204
    sget v0, Lng;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 207
    sget v0, Lng;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 209
    iget-object v0, p0, Lnp;->o:Lqm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnp;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnp;->i:Landroid/content/Context;

    .line 215
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput v0, p0, Lnp;->x:I

    .line 219
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->o()I

    move-result v0

    .line 220
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v0, v1

    .line 221
    :goto_1
    if-eqz v0, :cond_3

    .line 222
    iput-boolean v1, p0, Lnp;->v:Z

    .line 225
    :cond_3
    iget-object v3, p0, Lnp;->i:Landroid/content/Context;

    invoke-static {v3}, Lnv;->a(Landroid/content/Context;)Lnv;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lnv;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_9

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lnp;->a(Z)V

    .line 227
    invoke-virtual {v3}, Lnv;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lnp;->h(Z)V

    .line 229
    iget-object v0, p0, Lnp;->i:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lnl;->ActionBar:[I

    sget v5, Lnb;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v3, Lnl;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {p0, v1}, Lnp;->b(Z)V

    .line 235
    :cond_5
    sget v1, Lnl;->ActionBar_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 236
    if-eqz v1, :cond_6

    .line 237
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lnp;->a(F)V

    .line 239
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void

    :cond_7
    move v0, v2

    .line 215
    goto :goto_0

    :cond_8
    move v0, v2

    .line 220
    goto :goto_1

    :cond_9
    move v0, v2

    .line 226
    goto :goto_2
.end method

.method static synthetic a(Lnp;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lnp;->A:Z

    return v0
.end method

.method private static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 744
    if-eqz p2, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 747
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lnp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnp;->r:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;)Lqm;
    .locals 3

    .prologue
    .line 243
    instance-of v0, p1, Lqm;

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Lqm;

    .line 246
    :goto_0
    return-object p1

    .line 245
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 246
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Lqm;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic e(Lnp;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnp;->x:I

    return v0
.end method

.method static synthetic f(Lnp;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method private h(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iput-boolean p1, p0, Lnp;->y:Z

    .line 273
    iget-boolean v0, p0, Lnp;->y:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0, v3}, Lqm;->a(Lqu;)V

    .line 275
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lnp;->s:Lqu;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Lqu;)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lnp;->d()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 281
    :goto_1
    iget-object v3, p0, Lnp;->s:Lqu;

    if-eqz v3, :cond_0

    .line 282
    if-eqz v0, :cond_3

    .line 283
    iget-object v3, p0, Lnp;->s:Lqu;

    invoke-virtual {v3, v2}, Lqu;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Lgm;->l(Landroid/view/View;)V

    .line 291
    :cond_0
    :goto_2
    iget-object v4, p0, Lnp;->o:Lqm;

    iget-boolean v3, p0, Lnp;->y:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lqm;->a(Z)V

    .line 292
    iget-object v3, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lnp;->y:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 293
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Lqu;)V

    .line 278
    iget-object v0, p0, Lnp;->o:Lqm;

    iget-object v3, p0, Lnp;->s:Lqu;

    invoke-interface {v0, v3}, Lqm;->a(Lqu;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 280
    goto :goto_1

    .line 288
    :cond_3
    iget-object v3, p0, Lnp;->s:Lqu;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lqu;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 291
    goto :goto_3

    :cond_5
    move v1, v2

    .line 292
    goto :goto_4
.end method

.method private i(Z)V
    .locals 3

    .prologue
    .line 755
    iget-boolean v0, p0, Lnp;->B:Z

    iget-boolean v1, p0, Lnp;->C:Z

    iget-boolean v2, p0, Lnp;->D:Z

    invoke-static {v0, v1, v2}, Lnp;->a(ZZZ)Z

    move-result v0

    .line 758
    if-eqz v0, :cond_1

    .line 759
    iget-boolean v0, p0, Lnp;->E:Z

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnp;->E:Z

    .line 761
    invoke-virtual {p0, p1}, Lnp;->f(Z)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-boolean v0, p0, Lnp;->E:Z

    if-eqz v0, :cond_0

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnp;->E:Z

    .line 766
    invoke-virtual {p0, p1}, Lnp;->g(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lnp;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 890
    iget-object v1, p0, Lnp;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 891
    sget v2, Lnb;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 892
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 894
    if-eqz v0, :cond_1

    .line 895
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lnp;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lnp;->j:Landroid/content/Context;

    .line 900
    :cond_0
    :goto_0
    iget-object v0, p0, Lnp;->j:Landroid/content/Context;

    return-object v0

    .line 897
    :cond_1
    iget-object v0, p0, Lnp;->i:Landroid/content/Context;

    iput-object v0, p0, Lnp;->j:Landroid/content/Context;

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lgm;->e(Landroid/view/View;F)V

    .line 256
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lgm;->e(Landroid/view/View;F)V

    .line 259
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Lnp;->z:I

    .line 329
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->o()I

    move-result v0

    .line 462
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnp;->v:Z

    .line 465
    :cond_0
    iget-object v1, p0, Lnp;->o:Lqm;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lqm;->c(I)V

    .line 466
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0, p1}, Lqm;->a(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0, p1}, Lqm;->b(Z)V

    .line 399
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 715
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    iput-boolean p1, p0, Lnp;->c:Z

    .line 720
    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 721
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lnp;->o:Lqm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->d()V

    .line 944
    const/4 v0, 0x1

    .line 946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lnp;->b:Lrt;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lnp;->b:Lrt;

    iget-object v1, p0, Lnp;->a:Lrs;

    invoke-interface {v0, v1}, Lrt;->a(Lrs;)V

    .line 322
    iput-object v2, p0, Lnp;->a:Lrs;

    .line 323
    iput-object v2, p0, Lnp;->b:Lrt;

    .line 325
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Lnp;->v:Z

    if-nez v0, :cond_0

    .line 1358
    invoke-virtual {p0, p1}, Lnp;->d(Z)V

    .line 1360
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lnp;->o:Lqm;

    invoke-interface {v0}, Lqm;->p()I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 383
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnp;->a(II)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lnp;->C:Z

    if-eqz v0, :cond_0

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnp;->C:Z

    .line 684
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnp;->i(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 660
    iput-boolean p1, p0, Lnp;->A:Z

    .line 661
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 707
    iget-boolean v0, p0, Lnp;->C:Z

    if-nez v0, :cond_0

    .line 708
    iput-boolean v1, p0, Lnp;->C:Z

    .line 709
    invoke-direct {p0, v1}, Lnp;->i(Z)V

    .line 711
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 772
    iget-object v0, p0, Lnp;->F:Loa;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lnp;->F:Loa;

    invoke-virtual {v0}, Loa;->b()V

    .line 775
    :cond_0
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 777
    iget v0, p0, Lnp;->z:I

    if-nez v0, :cond_6

    sget-boolean v0, Lnp;->h:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lnp;->G:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    .line 780
    :cond_1
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lgm;->b(Landroid/view/View;F)V

    .line 781
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 782
    if-eqz p1, :cond_2

    .line 783
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 784
    iget-object v2, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 785
    aget v1, v1, v6

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 787
    :cond_2
    iget-object v1, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Lgm;->b(Landroid/view/View;F)V

    .line 788
    new-instance v1, Loa;

    invoke-direct {v1}, Loa;-><init>()V

    .line 789
    iget-object v2, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v2

    invoke-virtual {v2, v4}, Lig;->b(F)Lig;

    move-result-object v2

    .line 790
    iget-object v3, p0, Lnp;->f:Liy;

    invoke-virtual {v2, v3}, Lig;->a(Liy;)Lig;

    .line 791
    invoke-virtual {v1, v2}, Loa;->a(Lig;)Loa;

    .line 792
    iget-boolean v2, p0, Lnp;->A:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnp;->r:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 793
    iget-object v2, p0, Lnp;->r:Landroid/view/View;

    invoke-static {v2, v0}, Lgm;->b(Landroid/view/View;F)V

    .line 794
    iget-object v0, p0, Lnp;->r:Landroid/view/View;

    invoke-static {v0}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lig;->b(F)Lig;

    move-result-object v0

    invoke-virtual {v1, v0}, Loa;->a(Lig;)Loa;

    .line 796
    :cond_3
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Lnp;->x:I

    if-ne v0, v6, :cond_4

    .line 797
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lgm;->b(Landroid/view/View;F)V

    .line 798
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lig;->b(F)Lig;

    move-result-object v0

    invoke-virtual {v1, v0}, Loa;->a(Lig;)Loa;

    .line 801
    :cond_4
    iget-object v0, p0, Lnp;->i:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Loa;->a(Landroid/view/animation/Interpolator;)Loa;

    .line 803
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Loa;->a(J)Loa;

    .line 811
    iget-object v0, p0, Lnp;->e:Liw;

    invoke-virtual {v1, v0}, Loa;->a(Liw;)Loa;

    .line 812
    iput-object v1, p0, Lnp;->F:Loa;

    .line 813
    invoke-virtual {v1}, Loa;->a()V

    .line 827
    :goto_0
    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lnp;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lgm;->l(Landroid/view/View;)V

    .line 830
    :cond_5
    return-void

    .line 815
    :cond_6
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v1}, Lgm;->c(Landroid/view/View;F)V

    .line 816
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lgm;->b(Landroid/view/View;F)V

    .line 817
    iget-boolean v0, p0, Lnp;->A:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnp;->r:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 818
    iget-object v0, p0, Lnp;->r:Landroid/view/View;

    invoke-static {v0, v4}, Lgm;->b(Landroid/view/View;F)V

    .line 820
    :cond_7
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    iget v0, p0, Lnp;->x:I

    if-ne v0, v6, :cond_8

    .line 821
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v1}, Lgm;->c(Landroid/view/View;F)V

    .line 822
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lgm;->b(Landroid/view/View;F)V

    .line 823
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 825
    :cond_8
    iget-object v0, p0, Lnp;->e:Liw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liw;->b(Landroid/view/View;)V

    goto :goto_0

    .line 783
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public g()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lnp;->F:Loa;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lnp;->F:Loa;

    invoke-virtual {v0}, Loa;->b()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lnp;->F:Loa;

    .line 934
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 833
    iget-object v0, p0, Lnp;->F:Loa;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lnp;->F:Loa;

    invoke-virtual {v0}, Loa;->b()V

    .line 837
    :cond_0
    iget v0, p0, Lnp;->z:I

    if-nez v0, :cond_5

    sget-boolean v0, Lnp;->h:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lnp;->G:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 839
    :cond_1
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lgm;->c(Landroid/view/View;F)V

    .line 840
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 841
    new-instance v1, Loa;

    invoke-direct {v1}, Loa;-><init>()V

    .line 842
    iget-object v0, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 843
    if-eqz p1, :cond_2

    .line 844
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 845
    iget-object v3, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 846
    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 848
    :cond_2
    iget-object v2, p0, Lnp;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lig;->b(F)Lig;

    move-result-object v2

    .line 849
    iget-object v3, p0, Lnp;->f:Liy;

    invoke-virtual {v2, v3}, Lig;->a(Liy;)Lig;

    .line 850
    invoke-virtual {v1, v2}, Loa;->a(Lig;)Loa;

    .line 851
    iget-boolean v2, p0, Lnp;->A:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnp;->r:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 852
    iget-object v2, p0, Lnp;->r:Landroid/view/View;

    invoke-static {v2}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lig;->b(F)Lig;

    move-result-object v0

    invoke-virtual {v1, v0}, Loa;->a(Lig;)Loa;

    .line 854
    :cond_3
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 855
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lgm;->c(Landroid/view/View;F)V

    .line 856
    iget-object v0, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v0

    iget-object v2, p0, Lnp;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lig;->b(F)Lig;

    move-result-object v0

    invoke-virtual {v1, v0}, Loa;->a(Lig;)Loa;

    .line 858
    :cond_4
    iget-object v0, p0, Lnp;->i:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Loa;->a(Landroid/view/animation/Interpolator;)Loa;

    .line 860
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Loa;->a(J)Loa;

    .line 861
    iget-object v0, p0, Lnp;->d:Liw;

    invoke-virtual {v1, v0}, Loa;->a(Liw;)Loa;

    .line 862
    iput-object v1, p0, Lnp;->F:Loa;

    .line 863
    invoke-virtual {v1}, Loa;->a()V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_5
    iget-object v0, p0, Lnp;->d:Liw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liw;->b(Landroid/view/View;)V

    goto :goto_0

    .line 844
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public h()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method
