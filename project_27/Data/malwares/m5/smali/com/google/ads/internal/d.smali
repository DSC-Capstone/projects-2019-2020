.class public Lcom/google/ads/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private final b:Lcom/google/ads/n;

.field private c:Lcom/google/ads/internal/c;

.field private d:Lcom/google/ads/AdRequest;

.field private e:Lcom/google/ads/internal/g;

.field private f:Lcom/google/ads/internal/AdWebView;

.field private g:Lcom/google/ads/internal/i;

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/af;

.field private r:Z

.field private s:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Ljava/lang/Boolean;

.field private x:Lcom/google/ads/d;

.field private y:Lcom/google/ads/e;

.field private z:Lcom/google/ads/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/Ad;Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 12

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->h:Z

    .line 168
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/internal/d;->v:I

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    .line 358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->B:Ljava/lang/String;

    .line 212
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->r:Z

    .line 215
    new-instance v1, Lcom/google/ads/internal/g;

    invoke-direct {v1}, Lcom/google/ads/internal/g;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->k:Z

    .line 230
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/google/ads/internal/d;->p:J

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->l:Z

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->n:Z

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->m:Z

    .line 234
    if-nez p3, :cond_1

    sget-object v10, Lcom/google/ads/internal/h;->a:Lcom/google/ads/internal/h;

    .line 237
    :goto_0
    instance-of v1, p1, Lcom/google/ads/doubleclick/SwipeableDfpAdView;

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/google/ads/internal/h;->a(Z)V

    .line 241
    :cond_0
    if-nez p2, :cond_4

    .line 244
    new-instance v1, Lcom/google/ads/n;

    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v2

    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/google/ads/AdView;

    move-object v4, v3

    :goto_1
    instance-of v3, p1, Lcom/google/ads/InterstitialAd;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/google/ads/InterstitialAd;

    move-object v5, v3

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/ads/n;-><init>(Lcom/google/ads/m;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;Lcom/google/ads/internal/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    .line 310
    :goto_3
    return-void

    .line 234
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/internal/h;

    move-result-object v10

    goto :goto_0

    .line 244
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 259
    :cond_4
    sget-object v2, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "GoogleAdMobAdsPrefs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    .line 262
    if-eqz p6, :cond_6

    .line 263
    iget-object v1, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 264
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 266
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/google/ads/internal/d;->i:J

    .line 274
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    new-instance v1, Lcom/google/ads/n;

    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v2

    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/google/ads/AdView;

    move-object v4, v3

    :goto_5
    instance-of v3, p1, Lcom/google/ads/InterstitialAd;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Lcom/google/ads/InterstitialAd;

    move-object v5, v3

    :goto_6
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, p1

    move-object/from16 v6, p4

    move-object v7, p2

    move-object/from16 v9, p5

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/ads/n;-><init>(Lcom/google/ads/m;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;Lcom/google/ads/internal/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    .line 289
    new-instance v1, Lcom/google/ads/af;

    invoke-direct {v1, p0}, Lcom/google/ads/af;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    .line 292
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    .line 295
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    .line 298
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->u:Ljava/util/LinkedList;

    .line 301
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->a()V

    .line 304
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    .line 306
    new-instance v1, Lcom/google/ads/d;

    invoke-direct {v1}, Lcom/google/ads/d;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/d;

    .line 307
    new-instance v1, Lcom/google/ads/e;

    invoke-direct {v1, p0}, Lcom/google/ads/e;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->w:Ljava/lang/Boolean;

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->z:Lcom/google/ads/f;

    goto/16 :goto_3

    .line 269
    :cond_5
    :try_start_1
    iput-wide v3, p0, Lcom/google/ads/internal/d;->i:J

    goto :goto_4

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 272
    :cond_6
    const-wide/32 v3, 0xea60

    :try_start_2
    iput-wide v3, p0, Lcom/google/ads/internal/d;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 276
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_6
.end method

.method private a(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 816
    invoke-virtual {p1}, Lcom/google/ads/f;->d()Ljava/util/List;

    move-result-object v1

    .line 817
    if-nez v1, :cond_0

    .line 818
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 819
    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-virtual {p1}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-virtual {p1}, Lcom/google/ads/f;->c()Ljava/lang/String;

    move-result-object v4

    .line 826
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 872
    if-nez p1, :cond_0

    .line 873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 894
    invoke-static {}, Lcom/google/ads/b;->a()Lcom/google/ads/b;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Lcom/google/ads/b;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 896
    invoke-virtual {v0}, Lcom/google/ads/b;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    .line 897
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v1, v0}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 911
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->b()V

    .line 916
    return-void
.end method

.method private b(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 845
    invoke-virtual {p1}, Lcom/google/ads/f;->e()Ljava/util/List;

    move-result-object v1

    .line 846
    if-nez v1, :cond_0

    .line 847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 848
    const-string v0, "http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 853
    invoke-virtual {p1}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-virtual {p1}, Lcom/google/ads/f;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    move-object v7, v6

    .line 855
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 4

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 991
    :goto_0
    monitor-exit p0

    return-void

    .line 965
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_4

    .line 966
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest;)V

    .line 978
    :goto_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    if-eqz v0, :cond_2

    .line 980
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 974
    :cond_1
    :try_start_2
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 983
    :cond_2
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 986
    :cond_3
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_4
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized B()V
    .locals 2

    .prologue
    .line 1073
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    .line 1074
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    if-eqz v0, :cond_3

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 1080
    iget-object v0, p0, Lcom/google/ads/internal/d;->w:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1081
    const-string v0, "isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. "

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1085
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    invoke-virtual {v0}, Lcom/google/ads/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/google/ads/internal/d;->z:Lcom/google/ads/f;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1092
    :cond_2
    :try_start_2
    new-instance v0, Lcom/google/ads/internal/e;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    .line 1095
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->y()V

    goto :goto_0

    .line 1098
    :cond_3
    const-string v0, "Cannot show interstitial because it is not loaded and ready."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized C()V
    .locals 1

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0}, Lcom/google/ads/internal/c;->a()V

    .line 1109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    :cond_1
    monitor-exit p0

    return-void

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized D()V
    .locals 6

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1134
    if-nez v0, :cond_1

    .line 1135
    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    :cond_0
    monitor-exit p0

    return-void

    .line 1140
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/d;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1141
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1143
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized E()V
    .locals 2

    .prologue
    .line 1153
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 1159
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(Landroid/view/View;)V

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->g()V

    .line 1171
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->y()V

    .line 1175
    :cond_1
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 1179
    if-eqz v0, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->l:Lcom/google/ads/util/i$c;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 1184
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    monitor-exit p0

    return-void

    .line 1153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public F()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v1

    .line 319
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/ads/util/IcsUtil$IcsAdWebView;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/util/IcsUtil$IcsAdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V

    :goto_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    .line 322
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 325
    sget-object v0, Lcom/google/ads/internal/a;->d:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v2}, Lcom/google/ads/n;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;

    .line 327
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    iget-object v1, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 330
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    .line 331
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/m$a;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    monitor-exit p0

    return-void

    .line 319
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/ads/internal/AdWebView;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(F)V
    .locals 4

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/internal/d;->p:J

    .line 1050
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    .line 1052
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V

    .line 1054
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_0
    monitor-exit p0

    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/internal/d;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(IIII)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1276
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    .line 1277
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-gez p3, :cond_2

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    invoke-virtual {v2}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    :goto_0
    invoke-static {v1, v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v3

    .line 1279
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-gez p4, :cond_0

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    invoke-virtual {v2}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result p4

    :cond_0
    invoke-static {v1, p4}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 1281
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1286
    if-gez p3, :cond_4

    move v2, v4

    move v1, v4

    .line 1291
    :goto_1
    if-gez v1, :cond_3

    .line 1292
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->d()I

    move-result v1

    move v3, v1

    .line 1294
    :goto_2
    if-gez v2, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->c()I

    move-result v1

    move v2, v1

    .line 1298
    :cond_1
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1, v3}, Lcom/google/ads/internal/ActivationOverlay;->setXPosition(I)V

    .line 1299
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/ActivationOverlay;->setYPosition(I)V

    .line 1301
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v3, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1307
    invoke-virtual {v0, v5}, Lcom/google/ads/internal/ActivationOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    return-void

    :cond_2
    move v2, p3

    .line 1277
    goto/16 :goto_0

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, p2

    move v1, p1

    goto :goto_1
.end method

.method public a(J)V
    .locals 4

    .prologue
    .line 1000
    sget-object v1, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v3, v3, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1003
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1005
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->r:Z

    if-eqz v0, :cond_0

    .line 1006
    iput-wide p1, p0, Lcom/google/ads/internal/d;->i:J

    .line 1008
    :cond_0
    monitor-exit v1

    .line 1009
    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1022
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1025
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1027
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->l:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/l;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/l;ZIIII)V

    .line 1030
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v0}, Lcom/google/ads/internal/ActivationOverlay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v3, v3, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v3}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/internal/h;

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v4

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v3, v3, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v3}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/internal/h;

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1039
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Landroid/view/View;Lcom/google/ads/h;Lcom/google/ads/f;Z)V
    .locals 2

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 691
    iput-object p3, p0, Lcom/google/ads/internal/d;->z:Lcom/google/ads/f;

    .line 695
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/d;->a(Landroid/view/View;)V

    .line 697
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Ljava/lang/Boolean;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    invoke-virtual {v0, p2}, Lcom/google/ads/e;->d(Lcom/google/ads/h;)V

    .line 704
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 705
    if-eqz v0, :cond_1

    .line 706
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_1
    monitor-exit p0

    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 633
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 635
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 639
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(F)V

    .line 640
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->h()V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_3

    .line 648
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->B()V

    .line 654
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

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 658
    if-eqz v0, :cond_2

    .line 659
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :cond_2
    monitor-exit p0

    return-void

    .line 649
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .locals 4

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    const-string v0, "v6.4.1 RC00"

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 568
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->h:Z

    if-eqz v0, :cond_1

    .line 569
    const-string v0, "loadAd called after ad was destroyed."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 574
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 581
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/ads/AdActivity;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 597
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/at;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/at;->a(Landroid/app/Activity;)V

    .line 603
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 604
    iget-object v0, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 605
    iget-object v0, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 608
    iput-object p1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    .line 612
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 613
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/d;

    invoke-virtual {v1}, Lcom/google/ads/d;->b()Lcom/google/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    goto/16 :goto_0

    .line 617
    :cond_5
    new-instance v0, Lcom/google/ads/l;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-direct {v0, v1}, Lcom/google/ads/l;-><init>(Lcom/google/ads/n;)V

    .line 618
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v1, v0}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 621
    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 622
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/google/ads/c;)V
    .locals 2

    .prologue
    .line 670
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 673
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/f;Z)V
    .locals 5

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "AdManager.onGWhirlAdClicked(%b) called."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 720
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/internal/d;->b(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/ads/l;ZIIII)V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/ads/internal/ActivationOverlay;->setOverlayActivated(Z)V

    .line 1255
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/ads/internal/d;->a(IIII)V

    .line 1257
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1258
    if-eqz p2, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/SwipeableAdListener;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/SwipeableAdListener;->onAdActivated(Lcom/google/ads/Ad;)V

    .line 1264
    :cond_0
    :goto_1
    return-void

    .line 1253
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/SwipeableAdListener;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/SwipeableAdListener;->onAdDeactivated(Lcom/google/ads/Ad;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/ads/internal/d;->B:Ljava/lang/String;

    .line 368
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    .line 372
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

    .line 373
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

    .line 380
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    .line 384
    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 792
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AppEventListener;

    .line 793
    if-eqz v0, :cond_0

    .line 794
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/ads/AppEventListener;->onAppEvent(Lcom/google/ads/Ad;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :cond_0
    monitor-exit p0

    return-void

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
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

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1217
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/d;->u:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/internal/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    monitor-exit p0

    return-void

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/e;

    invoke-virtual {v0}, Lcom/google/ads/e;->b()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->C()V

    .line 349
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V

    .line 350
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V

    .line 353
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 2

    .prologue
    .line 1064
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :cond_0
    monitor-exit p0

    return-void

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/ads/c;)V
    .locals 3

    .prologue
    .line 730
    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lcom/google/ads/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 737
    if-eqz v0, :cond_0

    .line 738
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :cond_0
    monitor-exit p0

    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1193
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

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    monitor-exit p0

    return-void

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1233
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->w:Ljava/lang/Boolean;

    .line 1234
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1203
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a manual tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->F()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    monitor-exit p0

    return-void

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/ads/internal/d;->B:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 404
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/internal/d;->m:Z

    .line 405
    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    monitor-exit p0

    return-void

    .line 419
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 4

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    .line 430
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->m:Z

    if-eqz v0, :cond_1

    .line 432
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return-void

    .line 439
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 442
    :cond_1
    :try_start_2
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->g()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    .line 455
    return-void
.end method

.method public i()Lcom/google/ads/n;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    return-object v0
.end method

.method public declared-synchronized j()Lcom/google/ads/d;
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Lcom/google/ads/internal/c;
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Lcom/google/ads/internal/AdWebView;
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Lcom/google/ads/internal/i;
    .locals 1

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Lcom/google/ads/internal/g;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    return-object v0
.end method

.method public declared-synchronized o()I
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/internal/d;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/google/ads/internal/d;->i:J

    return-wide v0
.end method

.method public declared-synchronized q()Z
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;
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

.method public declared-synchronized r()Z
    .locals 1

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Z
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()Z
    .locals 1

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()V
    .locals 2

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->C()V

    .line 751
    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 755
    if-eqz v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :cond_0
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()V
    .locals 2

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 769
    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    :cond_0
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized w()V
    .locals 2

    .prologue
    .line 780
    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 783
    if-eqz v0, :cond_0

    .line 784
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_0
    monitor-exit p0

    return-void

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->f()V

    .line 803
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->D()V

    .line 804
    return-void
.end method

.method public declared-synchronized y()V
    .locals 6

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 924
    if-nez v0, :cond_1

    .line 925
    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_0
    monitor-exit p0

    return-void

    .line 930
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 931
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 933
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized z()V
    .locals 6

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 943
    if-nez v0, :cond_1

    .line 944
    const-string v0, "activity was null while trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :cond_0
    monitor-exit p0

    return-void

    .line 949
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 950
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 952
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
