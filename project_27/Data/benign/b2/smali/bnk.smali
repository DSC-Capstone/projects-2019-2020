.class public Lbnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbft;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Laut;",
        ">",
        "Ljava/lang/Object;",
        "Lbft",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:[B

.field b:Laut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Lauj;


# direct methods
.method public constructor <init>(Lauj;Laut;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lbnk;->b:Laut;

    .line 23
    iput-object p1, p0, Lbnk;->c:Lauj;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "application/json"

    return-object v0
.end method

.method public a(Lbea;Lbbf;Lbcn;)V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lbnk;->a:[B

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 36
    iget-object v2, p0, Lbnk;->c:Lauj;

    iget-object v3, p0, Lbnk;->b:Laut;

    invoke-virtual {v2, v3, v1}, Lauj;->a(Laut;Ljava/lang/Appendable;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lbnk;->a:[B

    .line 39
    :cond_0
    iget-object v0, p0, Lbnk;->a:[B

    invoke-static {p2, v0, p3}, Lbch;->a(Lbbf;[BLbcn;)V

    .line 40
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbnk;->a:[B

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lbnk;->b:Laut;

    invoke-virtual {v0}, Laut;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lbnk;->a:[B

    .line 56
    :cond_0
    iget-object v0, p0, Lbnk;->a:[B

    array-length v0, v0

    return v0
.end method
