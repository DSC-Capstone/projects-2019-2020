.class public final Lorg/apache/james/mime4j/parser/MimeEntityConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxLineLen:I

.field private maximalBodyDescriptor:Z

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x3e8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMaxContentLen()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLen()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return v0
.end method

.method public isMaximalBodyDescriptor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return v0
.end method

.method public isStrictParsing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return v0
.end method

.method public setMaxContentLen(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-void
.end method

.method public setMaxHeaderCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return-void
.end method

.method public setMaxLineLen(I)V
    .locals 0

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return-void
.end method

.method public setMaximalBodyDescriptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return-void
.end method

.method public setStrictParsing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    const-string v1, "[max body descriptor: "

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, "][strict parsing: "

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, "][max header length: "

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
