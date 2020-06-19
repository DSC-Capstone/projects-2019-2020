.class Lbac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final a:Lbjq;

.field final b:Lbaz;

.field final synthetic c:Lazx;


# direct methods
.method constructor <init>(Lazx;)V
    .locals 2

    .prologue
    .line 161
    iput-object p1, p0, Lbac;->c:Lazx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lbjq;

    invoke-direct {v0}, Lbjq;-><init>()V

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lbjq;->c(I)Lbjq;

    move-result-object v0

    iput-object v0, p0, Lbac;->a:Lbjq;

    .line 163
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbac;->b:Lbaz;

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    const/4 v8, 0x0

    .line 167
    iget-object v0, p0, Lbac;->c:Lazx;

    iget-boolean v0, v0, Lazx;->d:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbac;->c:Lazx;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lazx;->d:Z

    .line 172
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {p2, v0}, Lbaz;->a(Lbaz;)V

    .line 174
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->k()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lbac;->b:Lbaz;

    invoke-virtual {v2, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 179
    :cond_1
    sget-object v2, Lbaz;->g:Ljava/nio/ByteBuffer;

    .line 181
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->o()I

    move-result v0

    if-lez v0, :cond_3

    .line 182
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->n()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 184
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 185
    iget-object v3, p0, Lbac;->c:Lazx;

    iget-object v3, v3, Lazx;->p:Lbaz;

    invoke-virtual {v3}, Lbaz;->d()I

    move-result v3

    .line 190
    iget-object v4, p0, Lbac;->a:Lbjq;

    invoke-virtual {v4}, Lbjq;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 191
    iget-object v5, p0, Lbac;->c:Lazx;

    iget-object v5, v5, Lazx;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v2, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 192
    iget-object v6, p0, Lbac;->c:Lazx;

    iget-object v7, p0, Lbac;->c:Lazx;

    iget-object v7, v7, Lazx;->p:Lbaz;

    invoke-virtual {v6, v7, v4}, Lazx;->a(Lbaz;Ljava/nio/ByteBuffer;)V

    .line 193
    iget-object v4, p0, Lbac;->a:Lbjq;

    iget-object v6, p0, Lbac;->c:Lazx;

    iget-object v6, v6, Lazx;->p:Lbaz;

    invoke-virtual {v6}, Lbaz;->d()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lbjq;->a(J)V

    .line 195
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v6, :cond_6

    .line 196
    iget-object v0, p0, Lbac;->a:Lbjq;

    iget-object v4, p0, Lbac;->a:Lbjq;

    invoke-virtual {v4}, Lbjq;->b()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lbjq;->c(I)Lbjq;

    move v0, v1

    .line 210
    :cond_4
    :goto_1
    iget-object v4, p0, Lbac;->c:Lazx;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    invoke-static {v4, v5}, Lazx;->a(Lazx;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 211
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lbac;->c:Lazx;

    iget-object v0, v0, Lazx;->p:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 212
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0, v2}, Lbaz;->b(Ljava/nio/ByteBuffer;)V

    .line 217
    :cond_5
    iget-object v0, p0, Lbac;->c:Lazx;

    invoke-virtual {v0}, Lazx;->e()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lbac;->c:Lazx;

    iput-boolean v8, v0, Lazx;->d:Z

    goto/16 :goto_0

    .line 199
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v6, :cond_4

    .line 200
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0, v2}, Lbaz;->b(Ljava/nio/ByteBuffer;)V

    .line 201
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->o()I

    move-result v0

    if-le v0, v9, :cond_5

    .line 206
    iget-object v0, p0, Lbac;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->k()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lbac;->b:Lbaz;

    invoke-virtual {v2, v0}, Lbaz;->b(Ljava/nio/ByteBuffer;)V

    .line 208
    sget-object v0, Lbaz;->g:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    move v0, v1

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 221
    iget-object v1, p0, Lbac;->c:Lazx;

    invoke-static {v1, v0}, Lazx;->a(Lazx;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    iget-object v0, p0, Lbac;->c:Lazx;

    iput-boolean v8, v0, Lazx;->d:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbac;->c:Lazx;

    iput-boolean v8, v1, Lazx;->d:Z

    throw v0
.end method
