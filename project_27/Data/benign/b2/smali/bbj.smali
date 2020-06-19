.class public Lbbj;
.super Lbbd;
.source "SourceFile"


# instance fields
.field c:Lbag;

.field d:Ljava/io/File;

.field e:Lbcr;

.field f:Z

.field g:Lbaz;

.field h:Ljava/nio/channels/FileChannel;

.field i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lbag;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lbbd;-><init>()V

    .line 60
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbbj;->g:Lbaz;

    .line 62
    new-instance v0, Lbbk;

    invoke-direct {v0, p0}, Lbbk;-><init>(Lbbj;)V

    iput-object v0, p0, Lbbj;->i:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lbbj;->c:Lbag;

    .line 20
    iput-object p2, p0, Lbbj;->d:Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Lbag;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbbj;->f:Z

    .line 22
    iget-boolean v0, p0, Lbbj;->f:Z

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lbbj;->a()V

    .line 24
    :cond_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lbbj;->c:Lbag;

    iget-object v1, p0, Lbbj;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public a(Lbcr;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lbbj;->e:Lbcr;

    .line 30
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lbbj;->h:Ljava/nio/channels/FileChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 57
    invoke-super {p0, p1}, Lbbd;->a(Ljava/lang/Exception;)V

    .line 58
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lbbj;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f_()Lbcr;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbbj;->e:Lbcr;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbj;->f:Z

    .line 46
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbj;->f:Z

    .line 51
    invoke-direct {p0}, Lbbj;->a()V

    .line 52
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lbbj;->f:Z

    return v0
.end method

.method public m()Lbag;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lbbj;->c:Lbag;

    return-object v0
.end method
