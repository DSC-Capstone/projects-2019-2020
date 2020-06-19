.class public Lbjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbc;


# instance fields
.field a:Lbag;

.field b:Ljava/io/InputStream;

.field c:Lbcr;

.field d:Z

.field e:I

.field f:Lbaz;

.field g:Ljava/lang/Runnable;

.field h:Lbcn;


# direct methods
.method public constructor <init>(Lbag;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lbjk;->e:I

    .line 74
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbjk;->f:Lbaz;

    .line 75
    new-instance v0, Lbjm;

    invoke-direct {v0, p0}, Lbjm;-><init>(Lbjk;)V

    iput-object v0, p0, Lbjk;->g:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lbjk;->a:Lbag;

    .line 24
    iput-object p2, p0, Lbjk;->b:Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Lbjk;->a()V

    .line 26
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lbjk;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method static synthetic a(Lbjk;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbjk;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lbjk;->m()Lbag;

    move-result-object v0

    new-instance v1, Lbjl;

    invoke-direct {v1, p0, p1}, Lbjl;-><init>(Lbjk;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lbcr;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lbjk;->c:Lbcr;

    .line 32
    return-void
.end method

.method public b(Lbcn;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lbjk;->h:Lbcn;

    .line 128
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbjk;->a(Ljava/lang/Exception;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lbjk;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f_()Lbcr;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbjk;->c:Lbcr;

    return-object v0
.end method

.method public h()Lbcn;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbjk;->h:Lbcn;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbjk;->d:Z

    .line 48
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbjk;->d:Z

    .line 53
    invoke-direct {p0}, Lbjk;->a()V

    .line 54
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lbjk;->d:Z

    return v0
.end method

.method public m()Lbag;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lbjk;->a:Lbag;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method
