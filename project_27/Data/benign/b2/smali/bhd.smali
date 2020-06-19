.class Lbhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbha;


# direct methods
.method constructor <init>(Lbha;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lbhd;->a:Lbha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lbhd;->a:Lbha;

    iget-boolean v0, v0, Lbha;->b:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    invoke-virtual {p2}, Lbaz;->o()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    invoke-virtual {p2}, Lbaz;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lbhd;->a:Lbha;

    iget-object v1, v1, Lbha;->e:Lbgz;

    iget-object v1, v1, Lbgz;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 98
    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p2}, Lbaz;->m()V

    .line 102
    iget-object v0, p0, Lbhd;->a:Lbha;

    invoke-static {v0}, Lbha;->b(Lbha;)V

    .line 103
    return-void
.end method
