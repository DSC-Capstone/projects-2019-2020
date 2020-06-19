.class public final Laah;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accounts/Account;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lzt",
            "<*>;",
            "Lacy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lzt",
            "<*>;",
            "Lzu;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo;

.field private k:I

.field private l:I

.field private m:Laaj;

.field private n:Landroid/os/Looper;

.field private o:Laaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laaa",
            "<+",
            "Lapa;",
            "Lapb;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laai;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laaj;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lapd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laah;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laah;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laah;->i:Ljava/util/Map;

    iput v1, p0, Laah;->k:I

    iput v1, p0, Laah;->l:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laah;->p:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laah;->q:Ljava/util/Set;

    new-instance v0, Lapd;

    invoke-direct {v0}, Lapd;-><init>()V

    iput-object v0, p0, Laah;->r:Lapd;

    iput-object p1, p0, Laah;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Laah;->n:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laah;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laah;->f:Ljava/lang/String;

    sget-object v0, Laox;->b:Laaa;

    iput-object v0, p0, Laah;->o:Laaa;

    return-void
.end method

.method private c()Laag;
    .locals 11

    iget-object v0, p0, Laah;->j:Lo;

    invoke-static {v0}, Labs;->a(Lo;)Labs;

    move-result-object v10

    new-instance v0, Labf;

    iget-object v1, p0, Laah;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laah;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Laah;->a()Lacx;

    move-result-object v3

    iget-object v4, p0, Laah;->o:Laaa;

    iget-object v5, p0, Laah;->i:Ljava/util/Map;

    iget-object v6, p0, Laah;->p:Ljava/util/Set;

    iget-object v7, p0, Laah;->q:Ljava/util/Set;

    iget v8, p0, Laah;->k:I

    const/4 v9, -0x1

    invoke-direct/range {v0 .. v9}, Labf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lacx;Laaa;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V

    iget v1, p0, Laah;->k:I

    iget-object v2, p0, Laah;->m:Laaj;

    invoke-virtual {v10, v1, v0, v2}, Labs;->a(ILaag;Laaj;)V

    return-object v0
.end method

.method private d()Laag;
    .locals 11

    iget-object v0, p0, Laah;->j:Lo;

    invoke-static {v0}, Labv;->a(Lo;)Labv;

    move-result-object v10

    iget v0, p0, Laah;->l:I

    invoke-virtual {v10, v0}, Labv;->a(I)Laag;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Labf;

    iget-object v1, p0, Laah;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laah;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Laah;->a()Lacx;

    move-result-object v3

    iget-object v4, p0, Laah;->o:Laaa;

    iget-object v5, p0, Laah;->i:Ljava/util/Map;

    iget-object v6, p0, Laah;->p:Ljava/util/Set;

    iget-object v7, p0, Laah;->q:Ljava/util/Set;

    const/4 v8, -0x1

    iget v9, p0, Laah;->l:I

    invoke-direct/range {v0 .. v9}, Labf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lacx;Laaa;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V

    :cond_0
    iget v1, p0, Laah;->l:I

    iget-object v2, p0, Laah;->m:Laaj;

    invoke-virtual {v10, v1, v0, v2}, Labv;->a(ILaag;Laaj;)V

    return-object v0
.end method


# virtual methods
.method public a(Laai;)Laah;
    .locals 1

    iget-object v0, p0, Laah;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Laaj;)Laah;
    .locals 1

    iget-object v0, p0, Laah;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lzt;)Laah;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzt",
            "<+",
            "Lzx;",
            ">;)",
            "Laah;"
        }
    .end annotation

    iget-object v0, p0, Laah;->i:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laah;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lzt;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a()Lacx;
    .locals 9

    new-instance v0, Lacx;

    iget-object v1, p0, Laah;->a:Landroid/accounts/Account;

    iget-object v2, p0, Laah;->b:Ljava/util/Set;

    iget-object v3, p0, Laah;->g:Ljava/util/Map;

    iget v4, p0, Laah;->c:I

    iget-object v5, p0, Laah;->d:Landroid/view/View;

    iget-object v6, p0, Laah;->e:Ljava/lang/String;

    iget-object v7, p0, Laah;->f:Ljava/lang/String;

    iget-object v8, p0, Laah;->r:Lapd;

    invoke-virtual {v8}, Lapd;->a()Lapb;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lacx;-><init>(Landroid/accounts/Account;Ljava/util/Collection;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lapb;)V

    return-object v0
.end method

.method public b()Laag;
    .locals 10

    const/4 v8, -0x1

    iget-object v0, p0, Laah;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Laei;->b(ZLjava/lang/Object;)V

    iget v0, p0, Laah;->k:I

    if-ltz v0, :cond_1

    invoke-direct {p0}, Laah;->c()Laag;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Laah;->l:I

    if-ltz v0, :cond_2

    invoke-direct {p0}, Laah;->d()Laag;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Labf;

    iget-object v1, p0, Laah;->h:Landroid/content/Context;

    iget-object v2, p0, Laah;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Laah;->a()Lacx;

    move-result-object v3

    iget-object v4, p0, Laah;->o:Laaa;

    iget-object v5, p0, Laah;->i:Ljava/util/Map;

    iget-object v6, p0, Laah;->p:Ljava/util/Set;

    iget-object v7, p0, Laah;->q:Ljava/util/Set;

    move v9, v8

    invoke-direct/range {v0 .. v9}, Labf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lacx;Laaa;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V

    goto :goto_1
.end method
