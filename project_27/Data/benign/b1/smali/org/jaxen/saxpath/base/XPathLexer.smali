.class Lorg/jaxen/saxpath/base/XPathLexer;
.super Ljava/lang/Object;
.source "XPathLexer.java"


# instance fields
.field private currentPosition:I

.field private endPosition:I

.field private previousToken:Lorg/jaxen/saxpath/base/Token;

.field private xpath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "xpath"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/base/XPathLexer;->setXPath(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private LA(I)C
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 898
    iget v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->endPosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 900
    const v0, 0xffff

    .line 903
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private and()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 469
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 474
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 475
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 476
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 479
    :cond_0
    return-object v0
.end method

.method private at()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 649
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x11

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 654
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 656
    return-object v0
.end method

.method private colon()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 661
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x13

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 665
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 667
    return-object v0
.end method

.method private comma()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 580
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x1e

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 585
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 587
    return-object v0
.end method

.method private consume()V
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    .line 909
    return-void
.end method

.method private currentPosition()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    return v0
.end method

.method private div()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_0

    .line 445
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0xb

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 450
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 451
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 452
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 455
    :cond_0
    return-object v0
.end method

.method private dollar()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 626
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x19

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 630
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 632
    return-object v0
.end method

.method private dots()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 793
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 807
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0xe

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 811
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 816
    :goto_0
    return-object v0

    .line 797
    :pswitch_0
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0xf

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 801
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 802
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method private doubleColon()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 672
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x14

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 677
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 678
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 680
    return-object v0
.end method

.method private endPosition()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->endPosition:I

    return v0
.end method

.method private equals()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 592
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 597
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 599
    return-object v0
.end method

.method private hasMoreChars()Z
    .locals 2

    .prologue
    .line 928
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v0

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->endPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private identifier()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v0

    .line 356
    .local v0, "start":I
    :goto_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathLexer;->isIdentifierChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Lorg/jaxen/saxpath/base/Token;

    .end local v1    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v2, 0x10

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 373
    .restart local v1    # "token":Lorg/jaxen/saxpath/base/Token;
    return-object v1
.end method

.method private identifierOrOperatorName()Lorg/jaxen/saxpath/base/Token;
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    iget-object v1, p0, Lorg/jaxen/saxpath/base/XPathLexer;->previousToken:Lorg/jaxen/saxpath/base/Token;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lorg/jaxen/saxpath/base/XPathLexer;->previousToken:Lorg/jaxen/saxpath/base/Token;

    invoke-virtual {v1}, Lorg/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 337
    :pswitch_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->operatorName()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 332
    :pswitch_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->identifier()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 333
    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->identifier()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isIdentifierChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 933
    invoke-static {p1}, Lorg/jaxen/saxpath/base/Verifier;->isXMLNCNameCharacter(C)Z

    move-result v0

    return v0
.end method

.method private isIdentifierStartChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 938
    invoke-static {p1}, Lorg/jaxen/saxpath/base/Verifier;->isXMLNCNameStartCharacter(C)Z

    move-result v0

    return v0
.end method

.method private leftBracket()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 821
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x15

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 826
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 828
    return-object v0
.end method

.method private leftParen()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 845
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 850
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 852
    return-object v0
.end method

.method private literal()Lorg/jaxen/saxpath/base/Token;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 764
    const/4 v2, 0x0

    .line 766
    .local v2, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    .line 768
    .local v0, "match":C
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 770
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v1

    .line 773
    .local v1, "start":I
    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 776
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    .line 778
    new-instance v2, Lorg/jaxen/saxpath/base/Token;

    .end local v2    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v5

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 783
    .restart local v2    # "token":Lorg/jaxen/saxpath/base/Token;
    :cond_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 786
    :cond_1
    return-object v2
.end method

.method private minus()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 604
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 608
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 610
    return-object v0
.end method

.method private mod()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 421
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0xa

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 426
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 427
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 428
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 431
    :cond_0
    return-object v0
.end method

.method private notEquals()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 685
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 690
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 691
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 693
    return-object v0
.end method

.method private number()Lorg/jaxen/saxpath/base/Token;
    .locals 6

    .prologue
    .line 505
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v1

    .line 506
    .local v1, "start":I
    const/4 v0, 0x1

    .line 511
    .local v0, "periodAllowed":Z
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 541
    :cond_0
    :pswitch_0
    new-instance v2, Lorg/jaxen/saxpath/base/Token;

    const/16 v3, 0x1d

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v5

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    return-object v2

    .line 514
    :pswitch_1
    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 517
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 534
    :pswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private operatorName()Lorg/jaxen/saxpath/base/Token;
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 407
    :goto_0
    return-object v0

    .line 384
    :sswitch_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->and()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 385
    goto :goto_0

    .line 390
    :sswitch_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->or()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 391
    goto :goto_0

    .line 396
    :sswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->mod()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 397
    goto :goto_0

    .line 402
    :sswitch_3
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->div()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x64 -> :sswitch_3
        0x6d -> :sswitch_2
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method private or()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    .line 491
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 496
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 497
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 500
    :cond_0
    return-object v0
.end method

.method private pipe()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 637
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x12

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 642
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 644
    return-object v0
.end method

.method private plus()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 615
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 619
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 621
    return-object v0
.end method

.method private relationalOperator()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/4 v2, 0x2

    .line 698
    const/4 v0, 0x0

    .line 700
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    return-object v0

    .line 704
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 706
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 710
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 720
    :goto_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 714
    :cond_0
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    goto :goto_1

    .line 725
    :pswitch_2
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 727
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 731
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 741
    :goto_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 735
    :cond_1
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    goto :goto_2

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private rightBracket()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 833
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 838
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 840
    return-object v0
.end method

.method private rightParen()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 857
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x18

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 862
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 864
    return-object v0
.end method

.method private setPreviousToken(Lorg/jaxen/saxpath/base/Token;)V
    .locals 0
    .param p1, "previousToken"    # Lorg/jaxen/saxpath/base/Token;

    .prologue
    .line 923
    iput-object p1, p0, Lorg/jaxen/saxpath/base/XPathLexer;->previousToken:Lorg/jaxen/saxpath/base/Token;

    .line 924
    return-void
.end method

.method private setXPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jaxen/saxpath/base/XPathLexer;->xpath:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->endPosition:I

    .line 72
    return-void
.end method

.method private slashes()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 869
    const/4 v0, 0x0

    .line 871
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 885
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0xc

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 889
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 893
    :goto_0
    return-object v0

    .line 875
    :pswitch_0
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/16 v1, 0xd

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 879
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 880
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private star()Lorg/jaxen/saxpath/base/Token;
    .locals 5

    .prologue
    .line 752
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/16 v1, 0x9

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 757
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 759
    return-object v0
.end method

.method private whitespace()Lorg/jaxen/saxpath/base/Token;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 549
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    .line 552
    :goto_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 572
    :cond_0
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 561
    :sswitch_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    .line 554
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getXPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jaxen/saxpath/base/XPathLexer;->xpath:Ljava/lang/String;

    return-object v0
.end method

.method nextToken()Lorg/jaxen/saxpath/base/Token;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 81
    const/4 v0, 0x0

    .line 85
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 256
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathLexer;->isIdentifierStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->identifierOrOperatorName()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 263
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 265
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v1

    if-nez v1, :cond_4

    .line 267
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, -0x1

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->endPosition()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .line 282
    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 284
    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathLexer;->setPreviousToken(Lorg/jaxen/saxpath/base/Token;)V

    .line 286
    return-object v0

    .line 91
    :sswitch_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->dollar()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 92
    goto :goto_0

    .line 98
    :sswitch_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->literal()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 99
    goto :goto_0

    .line 104
    :sswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->slashes()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 105
    goto :goto_0

    .line 110
    :sswitch_3
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->comma()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 111
    goto :goto_0

    .line 116
    :sswitch_4
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->leftParen()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 117
    goto :goto_0

    .line 122
    :sswitch_5
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->rightParen()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 123
    goto :goto_0

    .line 128
    :sswitch_6
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->leftBracket()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 129
    goto :goto_0

    .line 134
    :sswitch_7
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->rightBracket()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 140
    :sswitch_8
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->plus()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 146
    :sswitch_9
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->minus()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 153
    :sswitch_a
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->relationalOperator()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 154
    goto :goto_0

    .line 159
    :sswitch_b
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->equals()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 160
    goto :goto_0

    .line 165
    :sswitch_c
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    .line 167
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->notEquals()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    .line 174
    :sswitch_d
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->pipe()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 175
    goto :goto_0

    .line 180
    :sswitch_e
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->at()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 181
    goto :goto_0

    .line 186
    :sswitch_f
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_3

    .line 188
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->doubleColon()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :cond_3
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->colon()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 194
    goto/16 :goto_0

    .line 199
    :sswitch_10
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->star()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 200
    goto/16 :goto_0

    .line 205
    :sswitch_11
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 223
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->dots()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 224
    goto/16 :goto_0

    .line 218
    :pswitch_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->number()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 219
    goto/16 :goto_0

    .line 241
    :sswitch_12
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->number()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 242
    goto/16 :goto_0

    .line 250
    :sswitch_13
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->whitespace()Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 251
    goto/16 :goto_0

    .line 274
    :cond_4
    new-instance v0, Lorg/jaxen/saxpath/base/Token;

    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    const/4 v1, -0x3

    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->currentPosition()I

    move-result v3

    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathLexer;->endPosition()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    .restart local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    goto/16 :goto_1

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_13
        0xd -> :sswitch_13
        0x20 -> :sswitch_13
        0x21 -> :sswitch_c
        0x22 -> :sswitch_1
        0x24 -> :sswitch_0
        0x27 -> :sswitch_1
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x2a -> :sswitch_10
        0x2b -> :sswitch_8
        0x2c -> :sswitch_3
        0x2d -> :sswitch_9
        0x2e -> :sswitch_11
        0x2f -> :sswitch_2
        0x30 -> :sswitch_12
        0x31 -> :sswitch_12
        0x32 -> :sswitch_12
        0x33 -> :sswitch_12
        0x34 -> :sswitch_12
        0x35 -> :sswitch_12
        0x36 -> :sswitch_12
        0x37 -> :sswitch_12
        0x38 -> :sswitch_12
        0x39 -> :sswitch_12
        0x3a -> :sswitch_f
        0x3c -> :sswitch_a
        0x3d -> :sswitch_b
        0x3e -> :sswitch_a
        0x40 -> :sswitch_e
        0x5b -> :sswitch_6
        0x5d -> :sswitch_7
        0x7c -> :sswitch_d
    .end sparse-switch

    .line 205
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
