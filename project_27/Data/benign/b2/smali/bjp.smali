.class public Lbjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbf;


# instance fields
.field b:Lbag;

.field c:Ljava/io/OutputStream;

.field d:Lbcu;

.field e:Z

.field f:Ljava/lang/Exception;

.field g:Lbcn;


# direct methods
.method public constructor <init>(Lbag;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbjp;-><init>(Lbag;Ljava/io/OutputStream;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lbag;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lbjp;->b:Lbag;

    .line 33
    invoke-virtual {p0, p2}, Lbjp;->a(Ljava/io/OutputStream;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lbjp;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lbjp;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 23
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbjp;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {p0, v0}, Lbjp;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lbaz;)V
    .locals 5

    .prologue
    .line 48
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lbaz;->o()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lbaz;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lbjp;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    :try_start_1
    invoke-virtual {p0, v0}, Lbjp;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {p1}, Lbaz;->m()V

    .line 60
    :goto_1
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lbaz;->m()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbaz;->m()V

    throw v0
.end method

.method public a(Lbcn;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lbjp;->g:Lbcn;

    .line 94
    return-void
.end method

.method public a(Lbcu;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbjp;->d:Lbcu;

    .line 66
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbjp;->c:Ljava/io/OutputStream;

    .line 39
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lbjp;->e:Z

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbjp;->e:Z

    .line 84
    iput-object p1, p0, Lbjp;->f:Ljava/lang/Exception;

    .line 86
    iget-object v0, p0, Lbjp;->g:Lbcn;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lbjp;->g:Lbcn;

    iget-object v1, p0, Lbjp;->f:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lbcn;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbjp;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method public g()Lbcu;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lbjp;->d:Lbcu;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lbjp;->e:Z

    return v0
.end method
