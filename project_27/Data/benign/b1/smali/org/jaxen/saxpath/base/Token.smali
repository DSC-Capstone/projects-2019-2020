.class Lorg/jaxen/saxpath/base/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private parseText:Ljava/lang/String;

.field private tokenBegin:I

.field private tokenEnd:I

.field private tokenType:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "tokenType"    # I
    .param p2, "parseText"    # Ljava/lang/String;
    .param p3, "tokenBegin"    # I
    .param p4, "tokenEnd"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/base/Token;->setTokenType(I)V

    .line 67
    invoke-direct {p0, p2}, Lorg/jaxen/saxpath/base/Token;->setParseText(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p3}, Lorg/jaxen/saxpath/base/Token;->setTokenBegin(I)V

    .line 69
    invoke-direct {p0, p4}, Lorg/jaxen/saxpath/base/Token;->setTokenEnd(I)V

    .line 70
    return-void
.end method

.method private setParseText(Ljava/lang/String;)V
    .locals 0
    .param p1, "parseText"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/jaxen/saxpath/base/Token;->parseText:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private setTokenBegin(I)V
    .locals 0
    .param p1, "tokenBegin"    # I

    .prologue
    .line 95
    iput p1, p0, Lorg/jaxen/saxpath/base/Token;->tokenBegin:I

    .line 96
    return-void
.end method

.method private setTokenEnd(I)V
    .locals 0
    .param p1, "tokenEnd"    # I

    .prologue
    .line 105
    iput p1, p0, Lorg/jaxen/saxpath/base/Token;->tokenEnd:I

    .line 106
    return-void
.end method

.method private setTokenType(I)V
    .locals 0
    .param p1, "tokenType"    # I

    .prologue
    .line 74
    iput p1, p0, Lorg/jaxen/saxpath/base/Token;->tokenType:I

    .line 75
    return-void
.end method


# virtual methods
.method getTokenBegin()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/jaxen/saxpath/base/Token;->tokenBegin:I

    return v0
.end method

.method getTokenEnd()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/jaxen/saxpath/base/Token;->tokenEnd:I

    return v0
.end method

.method getTokenText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jaxen/saxpath/base/Token;->parseText:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/Token;->getTokenBegin()I

    move-result v1

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/Token;->getTokenEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTokenType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/jaxen/saxpath/base/Token;->tokenType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaxen/saxpath/base/Token;->tokenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
