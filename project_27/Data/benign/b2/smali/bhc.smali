.class Lbhc;
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
.field final synthetic a:Lbhb;


# direct methods
.method constructor <init>(Lbhb;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lbhc;->a:Lbhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lbhc;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lbhc;->a:Lbhb;

    iget-object v0, v0, Lbhb;->a:Lbha;

    iget-boolean v0, v0, Lbha;->b:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lbhc;->a:Lbhb;

    iget-object v0, v0, Lbhb;->a:Lbha;

    iget-object v0, v0, Lbha;->e:Lbgz;

    iget-object v0, v0, Lbgz;->e:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 79
    :cond_0
    iget-object v0, p0, Lbhc;->a:Lbhb;

    iget-object v0, v0, Lbhb;->a:Lbha;

    invoke-static {v0}, Lbha;->a(Lbha;)V

    .line 80
    return-void
.end method
