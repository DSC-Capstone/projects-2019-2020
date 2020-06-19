.class Lbic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lbic;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 6

    .prologue
    .line 126
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lbaz;->a(Ljava/nio/ByteOrder;)Lbaz;

    .line 127
    iget-object v0, p0, Lbic;->a:Lbib;

    invoke-virtual {p2}, Lbaz;->f()I

    move-result v1

    iput v1, v0, Lbib;->b:I

    .line 128
    iget-object v0, p0, Lbic;->a:Lbib;

    invoke-virtual {p2}, Lbaz;->f()I

    move-result v1

    iput v1, v0, Lbib;->c:I

    .line 131
    iget-object v0, p0, Lbic;->a:Lbib;

    iget-object v1, p0, Lbic;->a:Lbib;

    iget v1, v1, Lbib;->b:I

    const/high16 v2, 0x3fff0000    # 1.9921875f

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, v0, Lbib;->f:S

    .line 132
    iget-object v0, p0, Lbic;->a:Lbib;

    iget-object v1, p0, Lbic;->a:Lbib;

    iget v1, v1, Lbib;->b:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    iput-byte v1, v0, Lbib;->e:B

    .line 133
    iget-object v0, p0, Lbic;->a:Lbib;

    iget-object v1, p0, Lbic;->a:Lbib;

    iget v1, v1, Lbib;->b:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, v0, Lbib;->d:B

    .line 135
    iget-object v0, p0, Lbic;->a:Lbib;

    iget-object v1, p0, Lbic;->a:Lbib;

    iget v1, v1, Lbib;->c:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lbib;->g:I

    .line 136
    invoke-static {}, Lbhz;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lbhz;->a()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lbic;->a:Lbib;

    iget v2, v2, Lbib;->g:I

    iget-object v3, p0, Lbic;->a:Lbib;

    iget-short v3, v3, Lbib;->f:S

    iget-object v4, p0, Lbic;->a:Lbib;

    iget-byte v4, v4, Lbib;->e:B

    iget-object v5, p0, Lbic;->a:Lbib;

    iget-byte v5, v5, Lbib;->d:B

    invoke-static {v1, v2, v3, v4, v5}, Lbia;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lbic;->a:Lbib;

    invoke-static {v0}, Lbib;->b(Lbib;)Lbbe;

    move-result-object v0

    iget-object v1, p0, Lbic;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbic;->a:Lbib;

    invoke-static {v2}, Lbib;->a(Lbib;)Lbcr;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbbe;->a(ILbcr;)V

    .line 140
    return-void
.end method
