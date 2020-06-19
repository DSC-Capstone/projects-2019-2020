.class public Lbku;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static D:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lbkr;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Landroid/os/Handler;

.field static b:I

.field static c:Ljava/util/concurrent/ExecutorService;

.field static d:Ljava/util/concurrent/ExecutorService;

.field static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbku;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Landroid/content/Context;

.field B:Lblc;

.field C:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lbkz;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/Runnable;

.field f:Lbdj;

.field g:Lbnf;

.field h:Lbng;

.field i:Lbgb;

.field j:Lbjs;

.field k:Lbnx;

.field l:Lbnr;

.field m:Lboe;

.field n:Lbno;

.field o:Lbol;

.field p:Lboc;

.field q:Lbnt;

.field r:Ljava/lang/String;

.field s:I

.field t:Lauj;

.field u:Ljava/lang/String;

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbmc;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/lang/String;

.field x:Lbjy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbjy",
            "<",
            "Lbdb",
            "<",
            "Lbmm;",
            ">;>;"
        }
    .end annotation
.end field

.field y:Lbkx;

.field z:Lbmo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbku;->a:Landroid/os/Handler;

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lbku;->b:I

    .line 62
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbku;->c:Ljava/util/concurrent/ExecutorService;

    .line 63
    sget v0, Lbku;->b:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    sget v0, Lbku;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lbku;->d:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbku;->e:Ljava/util/HashMap;

    .line 256
    new-instance v0, Lbkv;

    invoke-direct {v0}, Lbkv;-><init>()V

    sput-object v0, Lbku;->D:Ljava/util/Comparator;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbku;->v:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lbjy;

    invoke-direct {v0}, Lbjy;-><init>()V

    iput-object v0, p0, Lbku;->x:Lbjy;

    .line 146
    new-instance v0, Lbkx;

    invoke-direct {v0, p0}, Lbkx;-><init>(Lbku;)V

    iput-object v0, p0, Lbku;->y:Lbkx;

    .line 149
    new-instance v0, Lblc;

    invoke-direct {v0, p0}, Lblc;-><init>(Lbku;)V

    iput-object v0, p0, Lbku;->B:Lblc;

    .line 268
    new-instance v0, Lbkw;

    invoke-direct {v0, p0}, Lbkw;-><init>(Lbku;)V

    iput-object v0, p0, Lbku;->E:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbku;->C:Ljava/util/WeakHashMap;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lbku;->A:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lbku;->w:Ljava/lang/String;

    .line 155
    new-instance v0, Lbdj;

    new-instance v2, Lbag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ion-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbag;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lbdj;-><init>(Lbag;)V

    iput-object v0, p0, Lbku;->f:Lbdj;

    .line 156
    iget-object v0, p0, Lbku;->f:Lbdj;

    invoke-virtual {v0}, Lbdj;->c()Lbiq;

    move-result-object v0

    new-instance v2, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    invoke-virtual {v0, v2}, Lbiq;->a(Ljavax/net/ssl/HostnameVerifier;)V

    .line 157
    iget-object v0, p0, Lbku;->f:Lbdj;

    invoke-virtual {v0}, Lbdj;->c()Lbiq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbiq;->b(Z)V

    .line 158
    iget-object v0, p0, Lbku;->f:Lbdj;

    new-instance v2, Lbnf;

    iget-object v3, p0, Lbku;->f:Lbdj;

    invoke-virtual {v3}, Lbdj;->c()Lbiq;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lbnf;-><init>(Landroid/content/Context;Lbei;)V

    iput-object v2, p0, Lbku;->g:Lbnf;

    invoke-virtual {v0, v2}, Lbdj;->a(Lbdr;)V

    .line 160
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lbku;->f:Lbdj;

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v2, v4, v5}, Lbgb;->a(Lbdj;Ljava/io/File;J)Lbgb;

    move-result-object v0

    iput-object v0, p0, Lbku;->i:Lbgb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    new-instance v0, Lbjs;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v4, 0x7fffffffffffffffL

    const/4 v1, 0x0

    invoke-direct {v0, v2, v4, v5, v1}, Lbjs;-><init>(Ljava/io/File;JZ)V

    iput-object v0, p0, Lbku;->j:Lbjs;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lbku;->j()V

    .line 181
    :cond_0
    iget-object v0, p0, Lbku;->f:Lbdj;

    invoke-virtual {v0}, Lbdj;->b()Lbeo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbeo;->a(Z)V

    .line 182
    iget-object v0, p0, Lbku;->f:Lbdj;

    invoke-virtual {v0}, Lbdj;->c()Lbiq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbiq;->a(Z)V

    .line 184
    new-instance v0, Lbmo;

    invoke-direct {v0, p0}, Lbmo;-><init>(Lbku;)V

    iput-object v0, p0, Lbku;->z:Lbmo;

    .line 186
    invoke-virtual {p0}, Lbku;->g()Lbkx;

    move-result-object v0

    new-instance v1, Lbol;

    invoke-direct {v1}, Lbol;-><init>()V

    iput-object v1, p0, Lbku;->o:Lbol;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    move-result-object v0

    new-instance v1, Lboc;

    invoke-direct {v1}, Lboc;-><init>()V

    iput-object v1, p0, Lbku;->p:Lboc;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    move-result-object v0

    new-instance v1, Lbnx;

    invoke-direct {v1}, Lbnx;-><init>()V

    iput-object v1, p0, Lbku;->k:Lbnx;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    move-result-object v0

    new-instance v1, Lbnr;

    invoke-direct {v1}, Lbnr;-><init>()V

    iput-object v1, p0, Lbku;->l:Lbnr;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    move-result-object v0

    new-instance v1, Lboe;

    invoke-direct {v1}, Lboe;-><init>()V

    iput-object v1, p0, Lbku;->m:Lboe;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    move-result-object v0

    new-instance v1, Lbno;

    invoke-direct {v1}, Lbno;-><init>()V

    iput-object v1, p0, Lbku;->n:Lbno;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    move-result-object v0

    new-instance v1, Lbnt;

    invoke-direct {v1}, Lbnt;-><init>()V

    iput-object v1, p0, Lbku;->q:Lbnt;

    invoke-virtual {v0, v1}, Lbkx;->a(Lbmc;)Lbkx;

    .line 194
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v3, "unable to set up response cache, clearing"

    invoke-static {v3, v0}, Lbld;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    invoke-static {v2}, Lbjx;->a(Ljava/io/File;)Z

    .line 168
    :try_start_1
    iget-object v3, p0, Lbku;->f:Lbdj;

    const-wide/32 v4, 0xa00000

    invoke-static {v3, v2, v4, v5}, Lbgb;->a(Lbdj;Ljava/io/File;J)Lbgb;

    move-result-object v2

    iput-object v2, p0, Lbku;->i:Lbgb;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 170
    :catch_1
    move-exception v2

    .line 171
    const-string v2, "unable to set up response cache, failing"

    invoke-static {v2, v0}, Lbld;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lbku;
    .locals 2

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can not pass null context in to retrieve ion instance"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    sget-object v0, Lbku;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbku;

    .line 113
    if-nez v0, :cond_1

    .line 114
    sget-object v1, Lbku;->e:Ljava/util/HashMap;

    new-instance v0, Lbku;

    invoke-direct {v0, p0, p1}, Lbku;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lbnd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbnd",
            "<",
            "Lbmx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lbku;->b(Landroid/content/Context;)Lbku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbku;->c(Landroid/content/Context;)Lbnd;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lbku;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lbku;
    .locals 1

    .prologue
    .line 100
    const-string v0, "ion"

    invoke-static {p0, v0}, Lbku;->a(Landroid/content/Context;Ljava/lang/String;)Lbku;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lbku;->D:Ljava/util/Comparator;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lbku;->f:Lbdj;

    new-instance v1, Lbng;

    invoke-direct {v1, p0}, Lbng;-><init>(Lbku;)V

    iput-object v1, p0, Lbku;->h:Lbng;

    invoke-virtual {v0, v1}, Lbdj;->a(Lbdr;)V

    .line 400
    return-void
.end method


# virtual methods
.method a(Lbda;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 325
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lbda;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lbda;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lbku;->C:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkz;

    .line 331
    if-nez v0, :cond_2

    .line 332
    new-instance v0, Lbkz;

    invoke-direct {v0}, Lbkz;-><init>()V

    .line 333
    iget-object v1, p0, Lbku;->C:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbkz;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    iget-object v1, p0, Lbku;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    iget-object v1, p0, Lbku;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lbku;->A:Landroid/content/Context;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Lbnd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbnd",
            "<",
            "Lbmx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lble;

    invoke-static {p1}, Lbkm;->a(Landroid/content/Context;)Lbkm;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lble;-><init>(Lbkm;Lbku;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lbku;->w:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lbdj;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lbku;->f:Lbdj;

    return-object v0
.end method

.method public f()Lbag;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lbku;->f:Lbdj;

    invoke-virtual {v0}, Lbdj;->d()Lbag;

    move-result-object v0

    return-object v0
.end method

.method public g()Lbkx;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lbku;->y:Lbkx;

    return-object v0
.end method

.method public h()Lbmo;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lbku;->z:Lbmo;

    return-object v0
.end method
