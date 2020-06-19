.class public Lbjq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lbjq;->b:I

    .line 13
    const/16 v0, 0x1000

    iput v0, p0, Lbjq;->c:I

    .line 20
    sget v0, Lbaz;->d:I

    iput v0, p0, Lbjq;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lbjq;->b:I

    invoke-virtual {p0, v0}, Lbjq;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lbjq;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lbjq;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 32
    long-to-int v0, p1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbjq;->b:I

    .line 33
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lbjq;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lbjq;->b:I

    .line 41
    return-void
.end method

.method public c(I)Lbjq;
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lbjq;->c:I

    .line 49
    return-object p0
.end method
