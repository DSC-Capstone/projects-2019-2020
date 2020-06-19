.class final Labf;
.super Ljava/lang/Object;

# interfaces
.implements Laag;


# instance fields
.field final a:Ladl;

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Labo",
            "<*>;>;"
        }
    .end annotation
.end field

.field final c:Labk;

.field d:Landroid/content/BroadcastReceiver;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laab",
            "<*>;",
            "Lzz;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laab",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lacx;

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lzt",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final j:Laaa;
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

.field final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labo",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/locks/Lock;

.field private final m:Ljava/util/concurrent/locks/Condition;

.field private final n:I

.field private final o:I

.field private final p:Landroid/content/Context;

.field private final q:Landroid/os/Looper;

.field private volatile r:Z

.field private s:J

.field private t:J

.field private volatile u:Labp;

.field private v:Lcom/google/android/gms/common/ConnectionResult;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labq",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final x:Labm;

.field private final y:Laai;

.field private final z:Ladm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lacx;Laaa;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lacx;",
            "Laaa",
            "<+",
            "Lapa;",
            "Lapb;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lzt",
            "<*>;",
            "Lzu;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Laai;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Laaj;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Labf;->b:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Labf;->s:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Labf;->t:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labf;->e:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labf;->f:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Labf;->g:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Labf;->v:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Labf;->w:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Labf;->k:Ljava/util/Set;

    new-instance v2, Labg;

    invoke-direct {v2, p0}, Labg;-><init>(Labf;)V

    iput-object v2, p0, Labf;->x:Labm;

    new-instance v2, Labh;

    invoke-direct {v2, p0}, Labh;-><init>(Labf;)V

    iput-object v2, p0, Labf;->y:Laai;

    new-instance v2, Labi;

    invoke-direct {v2, p0}, Labi;-><init>(Labf;)V

    iput-object v2, p0, Labf;->z:Ladm;

    iput-object p1, p0, Labf;->p:Landroid/content/Context;

    new-instance v2, Ladl;

    iget-object v3, p0, Labf;->z:Ladm;

    invoke-direct {v2, p2, v3}, Ladl;-><init>(Landroid/os/Looper;Ladm;)V

    iput-object v2, p0, Labf;->a:Ladl;

    iput-object p2, p0, Labf;->q:Landroid/os/Looper;

    new-instance v2, Labk;

    invoke-direct {v2, p0, p2}, Labk;-><init>(Labf;Landroid/os/Looper;)V

    iput-object v2, p0, Labf;->c:Labk;

    move/from16 v0, p8

    iput v0, p0, Labf;->n:I

    move/from16 v0, p9

    iput v0, p0, Labf;->o:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labf;->i:Ljava/util/Map;

    iget-object v2, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Labf;->m:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Labe;

    invoke-direct {v2, p0}, Labe;-><init>(Labf;)V

    iput-object v2, p0, Labf;->u:Labp;

    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laai;

    iget-object v4, p0, Labf;->a:Ladl;

    invoke-virtual {v4, v2}, Ladl;->a(Laai;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laaj;

    iget-object v4, p0, Labf;->a:Ladl;

    invoke-virtual {v4, v2}, Ladl;->a(Laaj;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lacx;->f()Ljava/util/Map;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lzt;

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lacy;

    iget-boolean v2, v2, Lacy;->b:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_3
    move v4, v2

    :goto_4
    iget-object v2, p0, Labf;->i:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lzt;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Lzt;->b()Laad;

    move-result-object v2

    iget-object v7, p0, Labf;->y:Laai;

    invoke-direct {p0, v9, v4}, Labf;->a(Lzt;I)Laaj;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Labf;->a(Laad;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lacx;Laai;Laaj;)Lacs;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Labf;->e:Ljava/util/Map;

    invoke-virtual {v9}, Lzt;->d()Laab;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Lzt;->a()Laaa;

    move-result-object v2

    iget-object v7, p0, Labf;->y:Laai;

    invoke-direct {p0, v9, v4}, Labf;->a(Lzt;I)Laaj;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Labf;->a(Laaa;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lacx;Laai;Laaj;)Lzz;

    move-result-object v2

    goto :goto_5

    :cond_4
    iput-object p3, p0, Labf;->h:Lacx;

    move-object/from16 v0, p4

    iput-object v0, p0, Labf;->j:Laaa;

    return-void

    :cond_5
    move v4, v2

    goto :goto_4
.end method

.method private final a(Lzt;I)Laaj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzt",
            "<*>;I)",
            "Laaj;"
        }
    .end annotation

    new-instance v0, Labj;

    invoke-direct {v0, p0, p1, p2}, Labj;-><init>(Labf;Lzt;I)V

    return-object v0
.end method

.method static synthetic a(Labf;)Labp;
    .locals 1

    iget-object v0, p0, Labf;->u:Labp;

    return-object v0
.end method

.method private static a(Laad;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lacx;Laai;Laaj;)Lacs;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Laac;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Laad",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lacx;",
            "Laai;",
            "Laaj;",
            ")",
            "Lacs;"
        }
    .end annotation

    new-instance v0, Lacs;

    invoke-interface {p0}, Laad;->a()I

    move-result v3

    invoke-interface {p0, p1}, Laad;->a(Ljava/lang/Object;)Laac;

    move-result-object v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lacs;-><init>(Landroid/content/Context;Landroid/os/Looper;ILaai;Laaj;Lacx;Laac;)V

    return-object v0
.end method

.method private static a(Laaa;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lacx;Laai;Laaj;)Lzz;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lzz;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Laaa",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lacx;",
            "Laai;",
            "Laaj;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Laaa;->a(Landroid/content/Context;Landroid/os/Looper;Lacx;Ljava/lang/Object;Laai;Laaj;)Lzz;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Labf;->u:Labp;

    invoke-interface {v0, p1}, Labp;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Labf;I)V
    .locals 0

    invoke-direct {p0, p1}, Labf;->a(I)V

    return-void
.end method

.method static synthetic a(Labf;Z)Z
    .locals 0

    iput-boolean p1, p0, Labf;->r:Z

    return p1
.end method

.method static synthetic b(Labf;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic c(Labf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Labf;->p:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Labf;)J
    .locals 2

    iget-wide v0, p0, Labf;->s:J

    return-wide v0
.end method

.method static synthetic e(Labf;)J
    .locals 2

    iget-wide v0, p0, Labf;->t:J

    return-wide v0
.end method

.method static synthetic f(Labf;)V
    .locals 0

    invoke-direct {p0}, Labf;->m()V

    return-void
.end method

.method static synthetic g(Labf;)V
    .locals 0

    invoke-direct {p0}, Labf;->n()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Labf;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labf;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Labf;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labf;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a(Laau;)Laau;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lzz;",
            "T:",
            "Laau",
            "<+",
            "Laaq;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Laau;->d()Laab;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Laei;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Labf;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labo;

    invoke-virtual {p0, v0}, Labf;->a(Labo;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Labo;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Labf;->u:Labp;

    invoke-interface {v0, p1}, Labp;->a(Laau;)Laau;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method public a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Labf;->q:Landroid/os/Looper;

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Laei;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Labf;->b()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0}, Labf;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Labf;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Labf;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Labf;->v:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Labf;->v:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_4
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Laab;)Lzz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lzz;",
            ">(",
            "Laab",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Labf;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Laai;)V
    .locals 1

    iget-object v0, p0, Labf;->a:Ladl;

    invoke-virtual {v0, p1}, Ladl;->a(Laai;)V

    return-void
.end method

.method public a(Laaj;)V
    .locals 1

    iget-object v0, p0, Labf;->a:Ladl;

    invoke-virtual {v0, p1}, Ladl;->a(Laaj;)V

    return-void
.end method

.method a(Labo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lzz;",
            ">(",
            "Labo",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Labf;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labf;->x:Labm;

    invoke-interface {p1, v0}, Labo;->a(Labm;)V

    return-void
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Labf;->v:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Labe;

    invoke-direct {v0, p0}, Labe;-><init>(Labf;)V

    iput-object v0, p0, Labf;->u:Labp;

    iget-object v0, p0, Labf;->u:Labp;

    invoke-interface {v0}, Labp;->a()V

    iget-object v0, p0, Labf;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GoogleApiClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Labf;->u:Labp;

    invoke-interface {v2}, Labp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Labf;->r:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Labf;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Labf;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    invoke-interface {v0, v1, p2, p3, p4}, Lzz;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Labf;->u:Labp;

    invoke-interface {v0}, Labp;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Laai;)V
    .locals 1

    iget-object v0, p0, Labf;->a:Ladl;

    invoke-virtual {v0, p1}, Ladl;->b(Laai;)V

    return-void
.end method

.method public b(Laaj;)V
    .locals 1

    iget-object v0, p0, Labf;->a:Ladl;

    invoke-virtual {v0, p1}, Ladl;->b(Laaj;)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Labf;->k()Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Labf;->a(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Labf;->u:Labp;

    instance-of v0, v0, Laav;

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Labf;->u:Labp;

    instance-of v0, v0, Laaw;

    return v0
.end method

.method f()V
    .locals 3

    iget-object v0, p0, Labf;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labo;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Labo;->a(Labm;)V

    invoke-interface {v0}, Labo;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labf;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Labf;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labq;

    invoke-virtual {v0}, Labq;->a()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Labf;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Labf;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Labf;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    invoke-interface {v0}, Lzz;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method h()V
    .locals 7

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Laaw;

    iget-object v2, p0, Labf;->h:Lacx;

    iget-object v3, p0, Labf;->i:Ljava/util/Map;

    iget-object v4, p0, Labf;->j:Laaa;

    iget-object v5, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    iget-object v6, p0, Labf;->p:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Laaw;-><init>(Labf;Lacx;Ljava/util/Map;Laaa;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Labf;->u:Labp;

    iget-object v0, p0, Labf;->u:Labp;

    invoke-interface {v0}, Labp;->a()V

    iget-object v0, p0, Labf;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Labf;->k()Z

    new-instance v0, Laav;

    invoke-direct {v0, p0}, Laav;-><init>(Labf;)V

    iput-object v0, p0, Labf;->u:Labp;

    iget-object v0, p0, Labf;->u:Labp;

    invoke-interface {v0}, Labp;->a()V

    iget-object v0, p0, Labf;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Labf;->r:Z

    return v0
.end method

.method k()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Labf;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Labf;->r:Z

    iget-object v0, p0, Labf;->c:Labk;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Labk;->removeMessages(I)V

    iget-object v0, p0, Labf;->c:Labk;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Labk;->removeMessages(I)V

    iget-object v0, p0, Labf;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labf;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Labf;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Labf;->d:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labf;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public l()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
