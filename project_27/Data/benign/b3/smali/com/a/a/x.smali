.class public Lcom/a/a/x;
.super Lcom/a/a/a;


# static fields
.field private static h:Ljava/lang/ThreadLocal;

.field private static final i:Ljava/lang/ThreadLocal;

.field private static final j:Ljava/lang/ThreadLocal;

.field private static final k:Ljava/lang/ThreadLocal;

.field private static final l:Ljava/lang/ThreadLocal;

.field private static final m:Ljava/lang/ThreadLocal;

.field private static final n:Landroid/view/animation/Interpolator;

.field private static final o:Lcom/a/a/w;

.field private static final p:Lcom/a/a/w;

.field private static z:J


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Ljava/util/ArrayList;

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:[Lcom/a/a/s;

.field g:Ljava/util/HashMap;

.field private q:Z

.field private r:I

.field private s:F

.field private t:Z

.field private u:J

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/x;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/a/a/y;

    invoke-direct {v0}, Lcom/a/a/y;-><init>()V

    sput-object v0, Lcom/a/a/x;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/a/a/z;

    invoke-direct {v0}, Lcom/a/a/z;-><init>()V

    sput-object v0, Lcom/a/a/x;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/a/a/aa;

    invoke-direct {v0}, Lcom/a/a/aa;-><init>()V

    sput-object v0, Lcom/a/a/x;->k:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/a/a/ab;

    invoke-direct {v0}, Lcom/a/a/ab;-><init>()V

    sput-object v0, Lcom/a/a/x;->l:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/a/a/ac;

    invoke-direct {v0}, Lcom/a/a/ac;-><init>()V

    sput-object v0, Lcom/a/a/x;->m:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/a/a/x;->n:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/a/a/m;

    invoke-direct {v0}, Lcom/a/a/m;-><init>()V

    sput-object v0, Lcom/a/a/x;->o:Lcom/a/a/w;

    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    sput-object v0, Lcom/a/a/x;->p:Lcom/a/a/w;

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/a/a/x;->z:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/a/x;->c:J

    iput-boolean v2, p0, Lcom/a/a/x;->q:Z

    iput v2, p0, Lcom/a/a/x;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/x;->s:F

    iput-boolean v2, p0, Lcom/a/a/x;->t:Z

    iput v2, p0, Lcom/a/a/x;->d:I

    iput-boolean v2, p0, Lcom/a/a/x;->v:Z

    iput-boolean v2, p0, Lcom/a/a/x;->w:Z

    iput-boolean v2, p0, Lcom/a/a/x;->e:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/a/a/x;->x:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/x;->y:J

    iput v2, p0, Lcom/a/a/x;->A:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/x;->B:I

    sget-object v0, Lcom/a/a/x;->n:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/a/a/x;->C:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/a/a/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/a/x;->y:J

    return-wide v0
.end method

.method public static varargs a([F)Lcom/a/a/x;
    .locals 1

    new-instance v0, Lcom/a/a/x;

    invoke-direct {v0}, Lcom/a/a/x;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/a/x;->b([F)V

    return-object v0
.end method

.method private a(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/a/a/x;->q:Z

    iput v3, p0, Lcom/a/a/x;->r:I

    iput v3, p0, Lcom/a/a/x;->d:I

    iput-boolean v2, p0, Lcom/a/a/x;->w:Z

    iput-boolean v3, p0, Lcom/a/a/x;->t:Z

    sget-object v0, Lcom/a/a/x;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/a/a/x;->y:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/x;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/x;->b(J)V

    iput v3, p0, Lcom/a/a/x;->d:I

    iput-boolean v2, p0, Lcom/a/a/x;->v:Z

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b;

    invoke-interface {v1, p0}, Lcom/a/a/b;->a(Lcom/a/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/a/a/x;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ad;

    if-nez v0, :cond_2

    new-instance v0, Lcom/a/a/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/ad;-><init>(Lcom/a/a/y;)V

    sget-object v1, Lcom/a/a/x;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/a/a/ad;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lcom/a/a/x;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/a/a/x;->d(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/a/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/x;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/a/a/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/x;->p()V

    return-void
.end method

.method static synthetic c(Lcom/a/a/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/x;->o()V

    return-void
.end method

.method private d(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/a/a/x;->t:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/a/a/x;->t:Z

    iput-wide p1, p0, Lcom/a/a/x;->u:J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/a/a/x;->u:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/a/a/x;->y:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/a/a/x;->y:J

    sub-long/2addr v1, v3

    sub-long v1, p1, v1

    iput-wide v1, p0, Lcom/a/a/x;->b:J

    iput v0, p0, Lcom/a/a/x;->d:I

    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/a/a/x;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/a/a/x;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/a/a/x;->j:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/a/a/x;->m:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/a/a/x;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic n()J
    .locals 2

    sget-wide v0, Lcom/a/a/x;->z:J

    return-wide v0
.end method

.method private o()V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/a/a/x;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/x;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/a/a/x;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/a/a/x;->d:I

    iget-boolean v0, p0, Lcom/a/a/x;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b;

    invoke-interface {v1, p0}, Lcom/a/a/b;->b(Lcom/a/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/a/a/x;->v:Z

    iput-boolean v3, p0, Lcom/a/a/x;->w:Z

    return-void
.end method

.method private p()V
    .locals 4

    invoke-virtual {p0}, Lcom/a/a/x;->d()V

    sget-object v0, Lcom/a/a/x;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/a/a/x;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b;

    invoke-interface {v1, p0}, Lcom/a/a/b;->a(Lcom/a/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/a/a/x;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/a/a/x;->x:J

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/x;->a(Z)V

    return-void
.end method

.method a(F)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/x;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/a/a/x;->s:F

    iget-object v1, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/a/a/s;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ae;

    invoke-interface {v0, p0}, Lcom/a/a/ae;->a(Lcom/a/a/x;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/a/a/ae;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs a([I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/s;

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/a/a/s;->a(Ljava/lang/String;[I)Lcom/a/a/s;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/a/a/x;->a([Lcom/a/a/s;)V

    :goto_1
    iput-boolean v2, p0, Lcom/a/a/x;->e:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/a/a/s;->a([I)V

    goto :goto_1
.end method

.method public varargs a([Lcom/a/a/s;)V
    .locals 6

    const/4 v1, 0x0

    array-length v2, p1

    iput-object p1, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/x;->g:Ljava/util/HashMap;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/a/a/x;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/a/a/s;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/a/a/x;->e:Z

    return-void
.end method

.method public b(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/a/a/x;->d()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/a/a/x;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iput-wide p1, p0, Lcom/a/a/x;->c:J

    const/4 v2, 0x2

    iput v2, p0, Lcom/a/a/x;->d:I

    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/a/a/x;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/a/a/x;->c(J)Z

    return-void
.end method

.method public varargs b([F)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/s;

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/a/a/s;->a(Ljava/lang/String;[F)Lcom/a/a/s;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/a/a/x;->a([Lcom/a/a/s;)V

    :goto_1
    iput-boolean v2, p0, Lcom/a/a/x;->e:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/a/a/s;->a([F)V

    goto :goto_1
.end method

.method public synthetic c()Lcom/a/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/x;->h()Lcom/a/a/x;

    move-result-object v0

    return-object v0
.end method

.method c(J)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/a/a/x;->d:I

    if-nez v0, :cond_0

    iput v2, p0, Lcom/a/a/x;->d:I

    iget-wide v3, p0, Lcom/a/a/x;->c:J

    cmp-long v0, v3, v6

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/a/a/x;->b:J

    :cond_0
    :goto_0
    iget v0, p0, Lcom/a/a/x;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return v1

    :cond_1
    iget-wide v3, p0, Lcom/a/a/x;->c:J

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/a/a/x;->b:J

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/a/a/x;->c:J

    goto :goto_0

    :pswitch_0
    iget-wide v3, p0, Lcom/a/a/x;->x:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    iget-wide v3, p0, Lcom/a/a/x;->b:J

    sub-long v3, p1, v3

    long-to-float v0, v3

    iget-wide v3, p0, Lcom/a/a/x;->x:J

    long-to-float v3, v3

    div-float v3, v0, v3

    :goto_2
    cmpl-float v0, v3, v5

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/a/a/x;->r:I

    iget v4, p0, Lcom/a/a/x;->A:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Lcom/a/a/x;->A:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v1

    :goto_3
    if-ge v4, v6, :cond_4

    iget-object v0, p0, Lcom/a/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    invoke-interface {v0, p0}, Lcom/a/a/b;->c(Lcom/a/a/a;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/a/a/x;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/a/a/x;->q:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/a/a/x;->q:Z

    :cond_5
    iget v0, p0, Lcom/a/a/x;->r:I

    float-to-int v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/x;->r:I

    rem-float v0, v3, v5

    iget-wide v2, p0, Lcom/a/a/x;->b:J

    iget-wide v6, p0, Lcom/a/a/x;->x:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/a/a/x;->b:J

    :goto_5
    iget-boolean v2, p0, Lcom/a/a/x;->q:Z

    if-eqz v2, :cond_6

    sub-float v0, v5, v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/a/a/x;->a(F)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/x;->h()Lcom/a/a/x;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 3

    iget-boolean v0, p0, Lcom/a/a/x;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/a/a/s;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/x;->e:Z

    :cond_1
    return-void
.end method

.method public e()J
    .locals 4

    iget-boolean v0, p0, Lcom/a/a/x;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/x;->d:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/x;->b:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/a/a/s;->d()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/a/a/x;->d:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/a/a/x;->v:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/a/a/x;
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/a/a/a;->c()Lcom/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/a/a/x;

    iget-object v2, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, v0, Lcom/a/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/a/a/x;->c:J

    iput-boolean v1, v0, Lcom/a/a/x;->q:Z

    iput v1, v0, Lcom/a/a/x;->r:I

    iput-boolean v1, v0, Lcom/a/a/x;->e:Z

    iput v1, v0, Lcom/a/a/x;->d:I

    iput-boolean v1, v0, Lcom/a/a/x;->t:Z

    iget-object v2, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    if-eqz v2, :cond_1

    array-length v3, v2

    new-array v4, v3, [Lcom/a/a/s;

    iput-object v4, v0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/a/a/x;->g:Ljava/util/HashMap;

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/a/a/s;->a()Lcom/a/a/s;

    move-result-object v4

    iget-object v5, v0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    aput-object v4, v5, v1

    iget-object v5, v0, Lcom/a/a/x;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/a/a/s;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/x;->f:[Lcom/a/a/s;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/a/a/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
