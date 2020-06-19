.class Lbhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbcb",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbha;


# direct methods
.method constructor <init>(Lbha;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lbhe;->a:Lbha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lbhe;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v0}, Lbgz;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 122
    iget-object v1, p0, Lbhe;->a:Lbha;

    iget-object v1, v1, Lbha;->e:Lbgz;

    iget-object v1, v1, Lbgz;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    if-eq v1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lbhe;->a:Lbha;

    iget-object v0, v0, Lbha;->e:Lbgz;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbgz;->a(Ljava/lang/Exception;)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lbhe;->a:Lbha;

    iget-object v0, v0, Lbha;->e:Lbgz;

    iget-object v0, v0, Lbgz;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 127
    iget-object v0, p0, Lbhe;->a:Lbha;

    iget-object v0, v0, Lbha;->e:Lbgz;

    iput-boolean v4, v0, Lbgz;->d:Z

    .line 128
    iget-object v0, p0, Lbhe;->a:Lbha;

    iget-object v0, v0, Lbha;->e:Lbgz;

    iget-object v1, p0, Lbhe;->a:Lbha;

    iget-object v1, v1, Lbha;->c:Lbbc;

    invoke-virtual {v0, v1}, Lbgz;->a(Lbbc;)V

    goto :goto_0
.end method
