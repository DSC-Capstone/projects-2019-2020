.class Lbha;
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
.field a:I

.field b:Z

.field final synthetic c:Lbbc;

.field final synthetic d:Lbbr;

.field final synthetic e:Lbgz;


# direct methods
.method constructor <init>(Lbgz;Lbbc;Lbbr;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lbha;->e:Lbgz;

    iput-object p2, p0, Lbha;->c:Lbbc;

    iput-object p3, p0, Lbha;->d:Lbbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v0, Lbbr;

    iget-object v1, p0, Lbha;->c:Lbbc;

    invoke-direct {v0, v1}, Lbbr;-><init>(Lbbc;)V

    .line 91
    new-instance v1, Lbhd;

    invoke-direct {v1, p0}, Lbhd;-><init>(Lbha;)V

    .line 105
    iget v2, p0, Lbha;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v0, v3, v1}, Lbbr;->a(BLbcr;)Lbbr;

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v2, p0, Lbha;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v0, v3, v1}, Lbbr;->a(BLbcr;)Lbbr;

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lbha;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lbha;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lbha;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lbha;->b:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lbha;->d:Lbbr;

    const/4 v1, 0x2

    new-instance v2, Lbhe;

    invoke-direct {v2, p0}, Lbhe;-><init>(Lbha;)V

    invoke-virtual {v0, v1, v2}, Lbbr;->a(ILbcb;)Lbbr;

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lbha;->e:Lbgz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbgz;->d:Z

    .line 134
    iget-object v0, p0, Lbha;->e:Lbgz;

    iget-object v1, p0, Lbha;->c:Lbbc;

    invoke-virtual {v0, v1}, Lbgz;->a(Lbbc;)V

    goto :goto_0
.end method

.method static synthetic b(Lbha;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lbha;->b()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lbha;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v1, v2}, Lbgz;->a([BILjava/nio/ByteOrder;)S

    move-result v2

    .line 57
    const/16 v3, -0x74e1

    if-eq v2, v3, :cond_0

    .line 58
    iget-object v3, p0, Lbha;->e:Lbgz;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "unknown format (magic number %x)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lbgz;->a(Ljava/lang/Exception;)V

    .line 59
    iget-object v0, p0, Lbha;->c:Lbbc;

    new-instance v1, Lbcs;

    invoke-direct {v1}, Lbcs;-><init>()V

    invoke-interface {v0, v1}, Lbbc;->a(Lbcr;)V

    .line 87
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput v2, p0, Lbha;->a:I

    .line 63
    iget v2, p0, Lbha;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lbha;->b:Z

    .line 64
    iget-boolean v0, p0, Lbha;->b:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lbha;->e:Lbgz;

    iget-object v0, v0, Lbgz;->e:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 67
    :cond_1
    iget v0, p0, Lbha;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lbha;->d:Lbbr;

    const/4 v1, 0x2

    new-instance v2, Lbhb;

    invoke-direct {v2, p0}, Lbhb;-><init>(Lbha;)V

    invoke-virtual {v0, v1, v2}, Lbbr;->a(ILbcb;)Lbbr;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 63
    goto :goto_1

    .line 85
    :cond_3
    invoke-direct {p0}, Lbha;->a()V

    goto :goto_0
.end method
