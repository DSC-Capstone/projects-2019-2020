.class Lbhb;
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
    .line 68
    iput-object p1, p0, Lbhb;->a:Lbha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lbhb;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lbhb;->a:Lbha;

    iget-boolean v0, v0, Lbha;->b:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lbhb;->a:Lbha;

    iget-object v0, v0, Lbha;->e:Lbgz;

    iget-object v0, v0, Lbgz;->e:Ljava/util/zip/CRC32;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 73
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2, v0}, Lbgz;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lbhb;->a:Lbha;

    iget-object v1, v1, Lbha;->d:Lbbr;

    new-instance v2, Lbhc;

    invoke-direct {v2, p0}, Lbhc;-><init>(Lbhb;)V

    invoke-virtual {v1, v0, v2}, Lbbr;->a(ILbcb;)Lbbr;

    .line 82
    return-void
.end method
