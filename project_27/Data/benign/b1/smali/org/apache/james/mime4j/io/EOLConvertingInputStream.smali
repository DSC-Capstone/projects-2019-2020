.class public Lorg/apache/james/mime4j/io/EOLConvertingInputStream;
.super Ljava/io/InputStream;


# static fields
.field public static final CONVERT_BOTH:I = 0x3

.field public static final CONVERT_CR:I = 0x1

.field public static final CONVERT_LF:I = 0x2


# instance fields
.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private previous:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->previous:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->flags:I

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    iput p2, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->flags:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    const/4 v2, -0x1

    const/16 v4, 0xa

    iget-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_1
    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_2
    :goto_1
    iput v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->previous:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->previous:I

    if-eq v2, v1, :cond_2

    iget-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v1

    goto :goto_1
.end method
