.class public Lbgw;
.super Lbbn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbbf;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lbbn;-><init>(Lbbf;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lbgw;->a(I)V

    .line 25
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, Lbgw;->a(Lbaz;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbgw;->a(I)V

    .line 30
    return-void
.end method

.method public b(Lbaz;)Lbaz;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbaz;->b(Ljava/nio/ByteBuffer;)V

    .line 18
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 19
    return-object p1
.end method
