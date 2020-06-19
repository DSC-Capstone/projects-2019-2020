.class public Lcom/google/ads/b/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/ads/ar;

.field private c:Lcom/google/ads/b/j;

.field private d:Lcom/google/ads/d;

.field private e:Lcom/google/ads/b/w;

.field private f:Lcom/google/ads/b/c;

.field private g:Lcom/google/ads/b/y;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/n;

.field private r:Z

.field private s:Ljava/util/LinkedList;

.field private t:Ljava/util/LinkedList;

.field private u:I

.field private v:Ljava/lang/Boolean;

.field private w:Lcom/google/ads/ab;

.field private x:Lcom/google/ads/ac;

.field private y:Lcom/google/ads/ag;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/b/r;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/a;Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/b/r;->u:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/b/r;->z:Ljava/lang/String;

    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/ads/b/r;->r:Z

    new-instance v1, Lcom/google/ads/b/w;

    invoke-direct {v1}, Lcom/google/ads/b/w;-><init>()V

    iput-object v1, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/b/r;->k:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/ads/b/r;->h:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/google/ads/b/r;->p:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/b/r;->l:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/b/r;->n:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/b/r;->m:Z

    if-nez p2, :cond_3

    new-instance v1, Lcom/google/ads/ar;

    invoke-static {}, Lcom/google/ads/ap;->a()Lcom/google/ads/ap;

    move-result-object v2

    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/google/ads/AdView;

    move-object v4, v3

    :goto_0
    instance-of v3, p1, Lcom/google/ads/i;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/google/ads/i;

    move-object v5, v3

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p3, :cond_2

    sget-object v10, Lcom/google/ads/b/x;->a:Lcom/google/ads/b/x;

    :goto_2
    move-object v3, p1

    move-object v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/ar;-><init>(Lcom/google/ads/ap;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/b/x;)V

    iput-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    :goto_3
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/ads/b/x;->a(Lcom/google/ads/g;)Lcom/google/ads/b/x;

    move-result-object v10

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/google/ads/b/r;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "GoogleAdMobAdsPrefs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/b/r;->o:Landroid/content/SharedPreferences;

    if-eqz p6, :cond_5

    iget-object v1, p0, Lcom/google/ads/b/r;->o:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/google/ads/b/r;->i:J

    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/google/ads/ar;

    invoke-static {}, Lcom/google/ads/ap;->a()Lcom/google/ads/ap;

    move-result-object v2

    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Lcom/google/ads/AdView;

    move-object v4, v3

    :goto_5
    instance-of v3, p1, Lcom/google/ads/i;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/google/ads/i;

    move-object v5, v3

    :goto_6
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    if-nez p3, :cond_8

    sget-object v10, Lcom/google/ads/b/x;->a:Lcom/google/ads/b/x;

    :goto_7
    move-object v3, p1

    move-object v6, p4

    move-object v7, p2

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/ar;-><init>(Lcom/google/ads/ap;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/b/x;)V

    iput-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    new-instance v1, Lcom/google/ads/n;

    invoke-direct {v1, p0}, Lcom/google/ads/n;-><init>(Lcom/google/ads/b/r;)V

    iput-object v1, p0, Lcom/google/ads/b/r;->q:Lcom/google/ads/n;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/b/r;->s:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/b/r;->t:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/b/r;->a()V

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->f:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/e/a;->h(Landroid/content/Context;)V

    new-instance v1, Lcom/google/ads/ab;

    invoke-direct {v1}, Lcom/google/ads/ab;-><init>()V

    iput-object v1, p0, Lcom/google/ads/b/r;->w:Lcom/google/ads/ab;

    new-instance v1, Lcom/google/ads/ac;

    invoke-direct {v1, p0}, Lcom/google/ads/ac;-><init>(Lcom/google/ads/b/r;)V

    iput-object v1, p0, Lcom/google/ads/b/r;->x:Lcom/google/ads/ac;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/b/r;->v:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/b/r;->y:Lcom/google/ads/ag;

    goto/16 :goto_3

    :cond_4
    :try_start_1
    iput-wide v3, p0, Lcom/google/ads/b/r;->i:J

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    const-wide/32 v3, 0xea60

    :try_start_2
    iput-wide v3, p0, Lcom/google/ads/b/r;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/google/ads/b/x;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/b/x;

    move-result-object v10

    goto :goto_7
.end method

.method private a(Lcom/google/ads/ag;Ljava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/ads/ag;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/ag;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/ads/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/ag;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/b/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/b/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/ads/y;->a()Lcom/google/ads/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/y;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/ads/y;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->d:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/ads/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/m;

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v1, v0}, Lcom/google/ads/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->b()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized A()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/r;->k:Z

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/b/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    invoke-virtual {p0, v0}, Lcom/google/ads/b/r;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->g()V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/b/r;->w()V

    :cond_1
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/e/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/ads/b/c;

    iget-object v2, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/x;

    invoke-virtual {v0}, Lcom/google/ads/b/x;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/b/c;-><init>(Lcom/google/ads/ar;Lcom/google/ads/g;)V

    iput-object v1, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/b/c;->setVisibility(I)V

    sget-object v0, Lcom/google/ads/b/e;->c:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v2}, Lcom/google/ads/ar;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/b/y;->a(Lcom/google/ads/b/r;Ljava/util/Map;ZZ)Lcom/google/ads/b/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/r;->g:Lcom/google/ads/b/y;

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    iget-object v1, p0, Lcom/google/ads/b/r;->g:Lcom/google/ads/b/y;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->a:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ap;

    iget-object v0, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/aq;

    sget v1, Lcom/google/ads/e/a;->a:I

    iget-object v0, v0, Lcom/google/ads/aq;->a:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/x;

    invoke-virtual {v0}, Lcom/google/ads/b/x;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    invoke-virtual {v0}, Lcom/google/ads/b/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/b/r;->p:J

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/b/r;->p:J

    invoke-virtual {p0}, Lcom/google/ads/b/r;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ads/b/r;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/b/r;->e()V

    invoke-virtual {p0}, Lcom/google/ads/b/r;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/b/r;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 4

    sget-object v1, Lcom/google/ads/b/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v3, v3, Lcom/google/ads/ar;->d:Lcom/google/ads/e/ae;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/google/ads/b/r;->r:Z

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/ads/b/r;->i:J

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->g:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->g:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/view/View;Lcom/google/ads/aj;Lcom/google/ads/ag;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/r;->k:Z

    iput-object p3, p0, Lcom/google/ads/b/r;->y:Lcom/google/ads/ag;

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/ads/b/r;->a(Landroid/view/View;)V

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/ads/b/r;->a(Lcom/google/ads/ag;Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->x:Lcom/google/ads/ac;

    invoke-virtual {v0, p2}, Lcom/google/ads/ac;->a(Lcom/google/ads/aj;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/d;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/b/r;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/r;->o:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/p;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/p;->a(Landroid/app/Activity;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/r;->k:Z

    iget-object v0, p0, Lcom/google/ads/b/r;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/d;

    iget-object v0, p0, Lcom/google/ads/b/r;->w:Lcom/google/ads/ab;

    invoke-virtual {v0}, Lcom/google/ads/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/b/r;->x:Lcom/google/ads/ac;

    iget-object v1, p0, Lcom/google/ads/b/r;->w:Lcom/google/ads/ab;

    invoke-virtual {v1}, Lcom/google/ads/ab;->b()Lcom/google/ads/z;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/ac;->a(Lcom/google/ads/z;Lcom/google/ads/d;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/ads/b/j;

    invoke-direct {v0, p0}, Lcom/google/ads/b/j;-><init>(Lcom/google/ads/b/r;)V

    iput-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    invoke-virtual {v0, p1}, Lcom/google/ads/b/j;->a(Lcom/google/ads/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/google/ads/e;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcom/google/ads/b/r;->a(F)V

    invoke-virtual {p0}, Lcom/google/ads/b/r;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/b/r;->g()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->B()V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/c;->a(Lcom/google/ads/a;Lcom/google/ads/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/z;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    invoke-virtual {p1}, Lcom/google/ads/z;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/z;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/b/r;->a(F)V

    iget-boolean v0, p0, Lcom/google/ads/b/r;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/b/r;->f()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/b/r;->x:Lcom/google/ads/ac;

    iget-object v1, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/ac;->a(Lcom/google/ads/z;Lcom/google/ads/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/b/r;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/b/r;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/r;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/ads/e/a;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/r;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/b/r;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/r;->z:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->n:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/ads/h;->a(Lcom/google/ads/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/b/r;->t:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/b/r;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->x:Lcom/google/ads/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/r;->x:Lcom/google/ads/ac;

    invoke-virtual {v0}, Lcom/google/ads/ac;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/e/af;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->n:Lcom/google/ads/e/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/e/af;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/ads/b/r;->y()V

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    invoke-virtual {v0}, Lcom/google/ads/b/c;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/ads/z;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/z;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/z;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/b/r;->a(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    sget-object v2, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/c;->a(Lcom/google/ads/a;Lcom/google/ads/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/r;->v:Ljava/lang/Boolean;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/r;->z:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/b/r;->m:Z

    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/r;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/b/r;->q:Lcom/google/ads/n;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/r;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/b/r;->n:Z

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/b/r;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/b/r;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/ads/b/r;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/b/r;->q:Lcom/google/ads/n;

    iget-wide v2, p0, Lcom/google/ads/b/r;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/r;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/b/r;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/r;->n:Z

    return-void
.end method

.method public h()Lcom/google/ads/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    return-object v0
.end method

.method public declared-synchronized i()Lcom/google/ads/ab;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->w:Lcom/google/ads/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Lcom/google/ads/b/j;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Lcom/google/ads/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Lcom/google/ads/b/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->g:Lcom/google/ads/b/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Lcom/google/ads/b/w;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    return-object v0
.end method

.method public declared-synchronized n()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/b/r;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/b/r;->i:J

    return-wide v0
.end method

.method public declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/r;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/r;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->C()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/e/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->c(Lcom/google/ads/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/e/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->b(Lcom/google/ads/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/e/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->h:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/a;

    invoke-interface {v0, v1}, Lcom/google/ads/c;->d(Lcom/google/ads/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/r;->e:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->f()V

    invoke-virtual {p0}, Lcom/google/ads/b/r;->z()V

    return-void
.end method

.method public declared-synchronized w()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/b/r;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized x()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->i:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/e/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/r;->d:Lcom/google/ads/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/b/r;->a(Lcom/google/ads/d;)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/b/r;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/b/r;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/b/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/b/r;->q:Lcom/google/ads/n;

    iget-wide v2, p0, Lcom/google/ads/b/r;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized y()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    invoke-virtual {v0}, Lcom/google/ads/b/j;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/r;->c:Lcom/google/ads/b/j;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/r;->f:Lcom/google/ads/b/c;

    invoke-virtual {v0}, Lcom/google/ads/b/c;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized z()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/b/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
