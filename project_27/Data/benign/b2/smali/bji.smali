.class public Lbji;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field a:Lbaz;


# direct methods
.method public constructor <init>(Lbaz;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lbji;->a:Lbaz;

    .line 15
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbji;->a:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-gtz v0, :cond_0

    .line 20
    const/4 v0, -0x1

    .line 21
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbji;->a:Lbaz;

    invoke-virtual {v0}, Lbaz;->i()B

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbji;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lbji;->a:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-gtz v0, :cond_0

    .line 32
    const/4 v0, -0x1

    .line 35
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lbji;->a:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    iget-object v1, p0, Lbji;->a:Lbaz;

    invoke-virtual {v1, p1, p2, v0}, Lbaz;->a([BII)V

    goto :goto_0
.end method
