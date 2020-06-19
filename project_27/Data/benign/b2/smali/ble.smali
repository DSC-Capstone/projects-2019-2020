.class Lble;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbmx;
.implements Lbmy;
.implements Lbmz;
.implements Lbna;
.implements Lbnd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbmx;",
        "Lbmy;",
        "Lbmz;",
        "Lbna;",
        "Lbnd",
        "<",
        "Lbmx;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic B:Z


# instance fields
.field A:Lbks;

.field a:Lbku;

.field b:Lbkm;

.field c:Landroid/os/Handler;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Lbfb;

.field h:Z

.field i:Lbfk;

.field j:I

.field k:Lbft;

.field l:Z

.field m:Lblv;

.field n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field p:Lbme;

.field q:Lbme;

.field r:Ljava/lang/String;

.field s:I

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field u:Ljava/lang/String;

.field v:I

.field w:Lbme;

.field x:Landroid/widget/ProgressBar;

.field y:Landroid/app/ProgressDialog;

.field z:Lbme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lble;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lble;->B:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbkm;Lbku;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    iput-object v0, p0, Lble;->c:Landroid/os/Handler;

    .line 86
    const-string v0, "GET"

    iput-object v0, p0, Lble;->d:Ljava/lang/String;

    .line 186
    const/16 v0, 0x7530

    iput v0, p0, Lble;->j:I

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lble;->l:Z

    .line 90
    invoke-virtual {p1}, Lbkm;->a()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const-string v1, "Ion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Building request with dead context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iput-object p2, p0, Lble;->a:Lbku;

    .line 94
    iput-object p1, p0, Lble;->b:Lbkm;

    .line 95
    return-void
.end method

.method private a(Landroid/net/Uri;)Lbea;
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lble;->a:Lbku;

    invoke-virtual {v0}, Lbku;->g()Lbkx;

    move-result-object v0

    invoke-virtual {v0}, Lbkx;->b()Lbnq;

    move-result-object v0

    iget-object v1, p0, Lble;->d:Ljava/lang/String;

    iget-object v2, p0, Lble;->g:Lbfb;

    invoke-interface {v0, p1, v1, v2}, Lbnq;->a(Landroid/net/Uri;Ljava/lang/String;Lbfb;)Lbea;

    move-result-object v0

    .line 283
    iget-boolean v1, p0, Lble;->l:Z

    invoke-virtual {v0, v1}, Lbea;->a(Z)Lbea;

    .line 284
    iget-object v1, p0, Lble;->k:Lbft;

    invoke-virtual {v0, v1}, Lbea;->a(Lbft;)V

    .line 285
    iget-object v1, p0, Lble;->a:Lbku;

    iget-object v1, v1, Lbku;->r:Ljava/lang/String;

    iget-object v2, p0, Lble;->a:Lbku;

    iget v2, v2, Lbku;->s:I

    invoke-virtual {v0, v1, v2}, Lbea;->b(Ljava/lang/String;I)V

    .line 286
    iget-object v1, p0, Lble;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lble;->r:Ljava/lang/String;

    iget v2, p0, Lble;->s:I

    invoke-virtual {v0, v1, v2}, Lbea;->b(Ljava/lang/String;I)V

    .line 288
    :cond_0
    iget-object v1, p0, Lble;->u:Ljava/lang/String;

    iget v2, p0, Lble;->v:I

    invoke-virtual {v0, v1, v2}, Lbea;->a(Ljava/lang/String;I)V

    .line 289
    iget v1, p0, Lble;->j:I

    invoke-virtual {v0, v1}, Lbea;->a(I)Lbea;

    .line 290
    const-string v1, "preparing request"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 291
    return-object v0
.end method

.method private a(Lbft;)Lble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbft",
            "<TT;>;)",
            "Lble;"
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lble;->f:Z

    if-nez v0, :cond_0

    .line 202
    const-string v0, "POST"

    iput-object v0, p0, Lble;->d:Ljava/lang/String;

    .line 203
    :cond_0
    iput-object p1, p0, Lble;->k:Lbft;

    .line 204
    return-object p0
.end method

.method static synthetic a(Lble;Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lble;->a(Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lblp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lblp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0}, Lble;->c()Landroid/net/Uri;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid URI"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lblp;->a(Ljava/lang/Exception;)Z

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-direct {p0, v0}, Lble;->a(Landroid/net/Uri;)Lbea;

    move-result-object v0

    .line 308
    iput-object v0, p1, Lblp;->o:Lbea;

    .line 310
    invoke-direct {p0, p1, v0}, Lble;->a(Lblp;Lbea;)V

    goto :goto_0
.end method

.method private a(Lblp;Lbea;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lblp",
            "<TT;>;",
            "Lbea;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lble;->k:Lbft;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lble;->z:Lbme;

    if-nez v0, :cond_0

    iget-object v0, p0, Lble;->x:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lble;->w:Lbme;

    if-nez v0, :cond_0

    iget-object v0, p0, Lble;->y:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    new-instance v0, Lbmf;

    iget-object v1, p0, Lble;->k:Lbft;

    new-instance v2, Lblg;

    invoke-direct {v2, p0, p1}, Lblg;-><init>(Lble;Lblp;)V

    invoke-direct {v0, v1, v2}, Lbmf;-><init>(Lbft;Lbme;)V

    .line 344
    invoke-virtual {p2, v0}, Lbea;->a(Lbft;)V

    .line 347
    :cond_1
    invoke-virtual {p0, p2, p1}, Lble;->a(Lbea;Lblp;)V

    .line 348
    return-void
.end method

.method private a(Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lblp",
            "<TT;>;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lblf;

    invoke-direct {v0, p0, p1, p2, p3}, Lblf;-><init>(Lble;Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 250
    iget-object v1, p0, Lble;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lble;->a:Lbku;

    iget-object v1, v1, Lbku;->f:Lbdj;

    invoke-virtual {v1}, Lbdj;->d()Lbag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lble;->c:Landroid/os/Handler;

    invoke-static {v1, v0}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b()Lbfb;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lble;->g:Lbfb;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lbfb;

    invoke-direct {v0}, Lbfb;-><init>()V

    iput-object v0, p0, Lble;->g:Lbfb;

    .line 121
    iget-object v1, p0, Lble;->g:Lbfb;

    iget-object v0, p0, Lble;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lbea;->a(Lbfb;Landroid/net/Uri;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lble;->g:Lbfb;

    return-object v0

    .line 121
    :cond_1
    iget-object v0, p0, Lble;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 259
    :try_start_0
    iget-object v0, p0, Lble;->i:Lbfk;

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lble;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 261
    iget-object v0, p0, Lble;->i:Lbfk;

    invoke-virtual {v0}, Lbfk;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lble;->i:Lbfk;

    invoke-virtual {v1, v0}, Lbfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 278
    :cond_3
    return-object v0

    .line 269
    :cond_4
    :try_start_1
    iget-object v0, p0, Lble;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 273
    goto :goto_1
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Lble;
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lble;->d:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    .line 106
    :cond_0
    iput-object p2, p0, Lble;->e:Ljava/lang/String;

    .line 107
    return-object p0
.end method


# virtual methods
.method public a(I)Lble;
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lble;->j:I

    .line 190
    return-object p0
.end method

.method public a(Landroid/os/Handler;)Lble;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lble;->c:Landroid/os/Handler;

    .line 196
    return-object p0
.end method

.method public a(Laur;)Lble;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lbnk;

    iget-object v1, p0, Lble;->a:Lbku;

    invoke-virtual {v1}, Lbku;->g()Lbkx;

    move-result-object v1

    invoke-virtual {v1}, Lbkx;->a()Lauj;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lbnk;-><init>(Lauj;Laut;)V

    invoke-direct {p0, v0}, Lble;->a(Lbft;)Lble;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lble;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lble;->f:Z

    .line 114
    invoke-direct {p0, p1, p2}, Lble;->g(Ljava/lang/String;Ljava/lang/String;)Lble;

    move-result-object v0

    return-object v0
.end method

.method a(Lbbf;ZLjava/lang/Object;Ljava/lang/Runnable;)Lblp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbbf;",
            "ZTT;",
            "Ljava/lang/Runnable;",
            ")",
            "Lblp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lblk;

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lblk;-><init>(Lble;Ljava/lang/Runnable;ZLbbf;Ljava/lang/Object;)V

    .line 601
    invoke-direct {p0, v0}, Lble;->a(Lblp;)V

    .line 602
    return-object v0
.end method

.method public a(Ljava/io/File;)Lblp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lblp",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lbjj;

    iget-object v1, p0, Lble;->a:Lbku;

    invoke-virtual {v1}, Lbku;->f()Lbag;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lbjj;-><init>(Lbag;Ljava/io/File;)V

    const/4 v1, 0x1

    new-instance v2, Lblo;

    invoke-direct {v2, p0, p1}, Lblo;-><init>(Lble;Ljava/io/File;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lble;->a(Lbbf;ZLjava/lang/Object;Ljava/lang/Runnable;)Lblp;

    move-result-object v0

    return-object v0
.end method

.method public a()Lbnh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbnh",
            "<",
            "Lauw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Lbnl;

    invoke-direct {v0}, Lbnl;-><init>()V

    invoke-virtual {p0, v0}, Lble;->a(Lbjd;)Lbnh;

    move-result-object v0

    return-object v0
.end method

.method a(Lbjd;)Lbnh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbjd",
            "<TT;>;)",
            "Lbnh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lble;->a(Lbjd;Ljava/lang/Runnable;)Lbnh;

    move-result-object v0

    return-object v0
.end method

.method a(Lbjd;Ljava/lang/Runnable;)Lbnh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbjd",
            "<TT;>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lbnh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 610
    sget-boolean v0, Lble;->B:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 612
    :cond_0
    invoke-direct {p0}, Lble;->c()Landroid/net/Uri;

    move-result-object v2

    .line 613
    const/4 v0, 0x0

    .line 615
    if-eqz v2, :cond_3

    .line 616
    invoke-direct {p0, v2}, Lble;->a(Landroid/net/Uri;)Lbea;

    move-result-object v1

    .line 617
    invoke-interface {p1}, Lbjd;->a()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 618
    iget-object v0, p0, Lble;->a:Lbku;

    iget-object v0, v0, Lbku;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmc;

    .line 619
    iget-object v5, p0, Lble;->a:Lbku;

    invoke-interface {v0, v5, v1, v3}, Lbmc;->a(Lbku;Lbea;Ljava/lang/reflect/Type;)Lbnh;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_1

    .line 646
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    .line 625
    :cond_3
    new-instance v1, Lblm;

    invoke-direct {v1, p0, p2, p1}, Lblm;-><init>(Lble;Ljava/lang/Runnable;Lbjd;)V

    .line 639
    if-nez v2, :cond_4

    .line 640
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Invalid URI"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lblp;->a(Ljava/lang/Exception;)Z

    move-object v0, v1

    .line 641
    goto :goto_0

    .line 644
    :cond_4
    iput-object v0, v1, Lblp;->o:Lbea;

    .line 645
    invoke-direct {p0, v1}, Lble;->a(Lblp;)V

    move-object v0, v1

    .line 646
    goto :goto_0
.end method

.method a(Lbea;Lblp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbea;",
            "Lblp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Lble;->d(Lbea;Lblp;)Lbda;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    new-instance v1, Lbli;

    invoke-direct {v1, p0, p2}, Lbli;-><init>(Lble;Lblp;)V

    invoke-interface {v0, v1}, Lbda;->a(Lbdb;)Lbda;

    .line 376
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 367
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    new-instance v1, Lblj;

    invoke-direct {v1, p0, p1, p2}, Lblj;-><init>(Lble;Lbea;Lblp;)V

    invoke-static {v0, v1}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0, p1, p2}, Lble;->b(Lbea;Lblp;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lble;
    .locals 1

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    invoke-direct {p0}, Lble;->b()Lbfb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbfb;->c(Ljava/lang/String;)Ljava/util/List;

    .line 139
    :goto_0
    return-object p0

    .line 138
    :cond_0
    invoke-direct {p0}, Lble;->b()Lbfb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbfb;->a(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    goto :goto_0
.end method

.method public synthetic b(I)Lbne;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lble;->a(I)Lble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Laur;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lble;->a(Laur;)Lble;

    move-result-object v0

    return-object v0
.end method

.method b(Lbea;Lblp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbea;",
            "Lblp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lble;->m:Lblv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lble;->m:Lblv;

    invoke-interface {v0, p1}, Lblv;->a(Lbea;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0, p1, p2}, Lble;->c(Lbea;Lblp;)V

    .line 381
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lble;
    .locals 1

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 175
    :goto_0
    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lble;->i:Lbfk;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lbfk;

    invoke-direct {v0}, Lbfk;-><init>()V

    iput-object v0, p0, Lble;->i:Lbfk;

    .line 174
    :cond_1
    iget-object v0, p0, Lble;->i:Lbfk;

    invoke-virtual {v0, p1, p2}, Lbfk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Lbea;Lblp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbea;",
            "Lblp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lble;->a:Lbku;

    iget-object v0, v0, Lbku;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmc;

    .line 386
    iget-object v2, p0, Lble;->a:Lbku;

    invoke-interface {v0, v2, p1, p2}, Lbmc;->a(Lbku;Lbea;Lbdb;)Lbda;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using loader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbea;->a(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2, v2}, Lblp;->c(Lbcv;)Lbdg;

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unknown uri scheme"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lblp;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method

.method d(Lbea;Lblp;)Lbda;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbea;",
            "Lblp",
            "<TT;>;)",
            "Lbda",
            "<",
            "Lbea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lble;->a:Lbku;

    iget-object v0, v0, Lbku;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmc;

    .line 399
    iget-object v2, p0, Lble;->b:Lbkm;

    invoke-virtual {v2}, Lbkm;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lble;->a:Lbku;

    invoke-interface {v0, v2, v3, p1}, Lbmc;->a(Landroid/content/Context;Lbku;Lbea;)Lbda;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic d(Ljava/lang/String;Ljava/lang/String;)Lbne;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lble;->c(Ljava/lang/String;Ljava/lang/String;)Lble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ljava/lang/String;Ljava/lang/String;)Lbne;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lble;->b(Ljava/lang/String;Ljava/lang/String;)Lble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lble;->a(Ljava/lang/String;Ljava/lang/String;)Lble;

    move-result-object v0

    return-object v0
.end method
