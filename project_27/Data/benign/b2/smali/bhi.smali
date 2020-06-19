.class public Lbhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbaw;


# instance fields
.field a:J

.field b:Lbcu;

.field final c:I

.field d:Lbcn;

.field e:Lbcn;

.field f:Lbcr;

.field g:Lbaz;

.field h:Lbdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbdg",
            "<",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Z

.field j:I

.field k:Z

.field l:Lbaz;

.field final synthetic m:Lbhh;


# direct methods
.method public constructor <init>(Lbhh;IZZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lbhi;->m:Lbhh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p0, Lbhi;->m:Lbhh;

    iget-object v0, v0, Lbhh;->l:Lbii;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lbii;->d(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbhi;->a:J

    .line 103
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbhi;->g:Lbaz;

    .line 104
    new-instance v0, Lbdg;

    invoke-direct {v0}, Lbdg;-><init>()V

    iput-object v0, p0, Lbhi;->h:Lbdg;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhi;->i:Z

    .line 202
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbhi;->l:Lbaz;

    .line 131
    iput p2, p0, Lbhi;->c:I

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lbhi;->m:Lbhh;

    iget-object v0, v0, Lbhh;->d:Lbhr;

    const/4 v1, 0x1

    iget v2, p0, Lbhi;->c:I

    iget-object v3, p0, Lbhi;->l:Lbaz;

    invoke-interface {v0, v1, v2, v3}, Lbhr;->a(ZILbaz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 117
    iget v0, p0, Lbhi;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lbhi;->j:I

    .line 118
    iget v0, p0, Lbhi;->j:I

    iget-object v1, p0, Lbhi;->m:Lbhh;

    iget-object v1, v1, Lbhh;->j:Lbii;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lbii;->d(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lbhi;->m:Lbhh;

    iget-object v0, v0, Lbhh;->d:Lbhr;

    iget v1, p0, Lbhi;->c:I

    iget v2, p0, Lbhi;->j:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lbhr;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lbhi;->j:I

    .line 127
    :cond_0
    iget-object v0, p0, Lbhi;->m:Lbhh;

    invoke-virtual {v0, p1}, Lbhh;->a(I)V

    .line 128
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 140
    iget-wide v0, p0, Lbhi;->a:J

    .line 141
    iget-wide v2, p0, Lbhi;->a:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lbhi;->a:J

    .line 142
    iget-wide v2, p0, Lbhi;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbhi;->b:Lbcu;

    invoke-static {v0}, Lbch;->a(Lbcu;)V

    .line 144
    :cond_0
    return-void
.end method

.method public a(Lbaz;)V
    .locals 4

    .prologue
    .line 205
    iget-wide v0, p0, Lbhi;->a:J

    iget-object v2, p0, Lbhi;->m:Lbhh;

    iget-wide v2, v2, Lbhh;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 206
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v1, p0, Lbhi;->l:Lbaz;

    invoke-virtual {v1}, Lbaz;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "wtf"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 213
    :cond_1
    iget-object v1, p0, Lbhi;->l:Lbaz;

    invoke-virtual {p1, v1, v0}, Lbaz;->a(Lbaz;I)V

    .line 214
    iget-object p1, p0, Lbhi;->l:Lbaz;

    .line 218
    :cond_2
    :try_start_0
    iget-object v1, p0, Lbhi;->m:Lbhh;

    iget-object v1, v1, Lbhh;->d:Lbhr;

    const/4 v2, 0x0

    iget v3, p0, Lbhi;->c:I

    invoke-interface {v1, v2, v3, p1}, Lbhr;->a(ZILbaz;)V

    .line 219
    iget-wide v2, p0, Lbhi;->a:J

    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lbhi;->a:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Lbcn;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lbhi;->d:Lbcn;

    .line 254
    return-void
.end method

.method public a(Lbcr;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lbhi;->f:Lbcr;

    .line 154
    return-void
.end method

.method public a(Lbcu;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lbhi;->b:Lbcu;

    .line 229
    return-void
.end method

.method public a(Ljava/util/List;Lbhv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;",
            "Lbhv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lbhi;->h:Lbdg;

    invoke-virtual {v0, p1}, Lbdg;->b(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public b()Lbhh;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lbhi;->m:Lbhh;

    return-object v0
.end method

.method public b(Lbcn;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lbhi;->e:Lbcn;

    .line 190
    return-void
.end method

.method public c()Lbdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbdg",
            "<",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lbhi;->h:Lbdg;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhi;->i:Z

    .line 180
    return-void
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    iget v0, p0, Lbhi;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 136
    :goto_0
    iget-object v3, p0, Lbhi;->m:Lbhh;

    iget-boolean v3, v3, Lbhh;->h:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v1, v2

    .line 136
    goto :goto_1
.end method

.method public f_()Lbcr;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lbhi;->f:Lbcr;

    return-object v0
.end method

.method public g()Lbcu;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lbhi;->b:Lbcu;

    return-object v0
.end method

.method public h()Lbcn;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lbhi;->e:Lbcn;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lbhi;->i:Z

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhi;->k:Z

    .line 170
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhi;->k:Z

    .line 175
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lbhi;->k:Z

    return v0
.end method

.method public m()Lbag;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lbhi;->m:Lbhh;

    iget-object v0, v0, Lbhh;->a:Lbaw;

    invoke-interface {v0}, Lbaw;->m()Lbag;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method
