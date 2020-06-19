.class Lbjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbjk;


# direct methods
.method constructor <init>(Lbjk;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lbjm;->a:Lbjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lbjm;->a:Lbjk;

    iget-object v0, v0, Lbjk;->f:Lbaz;

    invoke-virtual {v0}, Lbaz;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lbjm;->a:Lbjk;

    invoke-virtual {v0}, Lbjk;->m()Lbag;

    move-result-object v0

    new-instance v1, Lbjn;

    invoke-direct {v1, p0}, Lbjn;-><init>(Lbjm;)V

    invoke-virtual {v0, v1}, Lbag;->b(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lbjm;->a:Lbjk;

    iget-object v0, v0, Lbjk;->f:Lbaz;

    invoke-virtual {v0}, Lbaz;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lbjm;->a:Lbjk;

    iget v0, v0, Lbjk;->e:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    const/4 v1, -0x1

    iget-object v2, p0, Lbjm;->a:Lbjk;

    iget-object v2, v2, Lbjk;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 94
    iget-object v0, p0, Lbjm;->a:Lbjk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbjk;->a(Lbjk;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lbjm;->a:Lbjk;

    invoke-static {v1, v0}, Lbjk;->a(Lbjk;Ljava/lang/Exception;)V

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    iget-object v1, p0, Lbjm;->a:Lbjk;

    mul-int/lit8 v3, v2, 0x2

    iput v3, v1, Lbjk;->e:I

    .line 98
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lbjm;->a:Lbjk;

    iget-object v1, v1, Lbjk;->f:Lbaz;

    invoke-virtual {v1, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 100
    iget-object v0, p0, Lbjm;->a:Lbjk;

    invoke-virtual {v0}, Lbjk;->m()Lbag;

    move-result-object v0

    new-instance v1, Lbjo;

    invoke-direct {v1, p0}, Lbjo;-><init>(Lbjm;)V

    invoke-virtual {v0, v1}, Lbag;->b(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lbjm;->a:Lbjk;

    iget-object v0, v0, Lbjk;->f:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbjm;->a:Lbjk;

    invoke-virtual {v0}, Lbjk;->l()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method
