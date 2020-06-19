.class public Lorg/jaxen/saxpath/base/XPathReader;
.super Ljava/lang/Object;
.source "XPathReader.java"

# interfaces
.implements Lorg/jaxen/saxpath/XPathReader;


# static fields
.field private static defaultHandler:Lorg/jaxen/saxpath/XPathHandler;


# instance fields
.field private handler:Lorg/jaxen/saxpath/XPathHandler;

.field private lexer:Lorg/jaxen/saxpath/base/XPathLexer;

.field private tokens:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lorg/jaxen/saxpath/helpers/DefaultXPathHandler;

    invoke-direct {v0}, Lorg/jaxen/saxpath/helpers/DefaultXPathHandler;-><init>()V

    sput-object v0, Lorg/jaxen/saxpath/base/XPathReader;->defaultHandler:Lorg/jaxen/saxpath/XPathHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lorg/jaxen/saxpath/base/XPathReader;->defaultHandler:Lorg/jaxen/saxpath/XPathHandler;

    invoke-virtual {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->setXPathHandler(Lorg/jaxen/saxpath/XPathHandler;)V

    .line 82
    return-void
.end method

.method private LA(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v0

    return v0
.end method

.method private LT(I)Lorg/jaxen/saxpath/base/Token;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1050
    iget-object v1, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-gt v1, v2, :cond_0

    .line 1052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1054
    iget-object v1, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jaxen/saxpath/base/XPathReader;->lexer:Lorg/jaxen/saxpath/base/XPathLexer;

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/XPathLexer;->nextToken()Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/saxpath/base/Token;

    return-object v1
.end method

.method private abbrStep()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 724
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 728
    :pswitch_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 729
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lorg/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    .line 730
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 731
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    goto :goto_0

    .line 736
    :pswitch_1
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 737
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    .line 738
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 739
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private absoluteLocationPath()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 353
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startAbsoluteLocationPath()V

    .line 355
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 401
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->endAbsoluteLocationPath()V

    .line 402
    return-void

    .line 359
    :pswitch_0
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 361
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 370
    :pswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->steps()V

    goto :goto_0

    .line 378
    :pswitch_3
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    .line 379
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    .line 381
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 382
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 394
    :pswitch_4
    const-string v1, "Location path cannot end with //"

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 395
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 390
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :pswitch_5
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->steps()V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 361
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 382
    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private additiveExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 913
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->multiplicativeExpr()V

    .line 915
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    .line 916
    .local v0, "la":I
    :goto_0
    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    .line 918
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 937
    :goto_1
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    .line 922
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 923
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startAdditiveExpr()V

    .line 924
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->multiplicativeExpr()V

    .line 925
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/jaxen/saxpath/XPathHandler;->endAdditiveExpr(I)V

    goto :goto_1

    .line 930
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 931
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startAdditiveExpr()V

    .line 932
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->multiplicativeExpr()V

    .line 933
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/jaxen/saxpath/XPathHandler;->endAdditiveExpr(I)V

    goto :goto_1

    .line 939
    :cond_1
    return-void

    .line 918
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private andExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startAndExpr()V

    .line 809
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->equalityExpr()V

    .line 811
    const/4 v0, 0x0

    .line 813
    .local v0, "create":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 824
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jaxen/saxpath/XPathHandler;->endAndExpr(Z)V

    .line 825
    return-void

    .line 817
    :pswitch_0
    const/4 v0, 0x1

    .line 818
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 819
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->andExpr()V

    goto :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private arguments()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x1

    .line 236
    :goto_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 238
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->expr()V

    .line 240
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 242
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method private axisSpecifier()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "axis":I
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 574
    :goto_0
    return v0

    .line 552
    :pswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 553
    const/16 v0, 0x9

    .line 554
    goto :goto_0

    .line 558
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v1

    .line 560
    .local v1, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-virtual {v1}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jaxen/saxpath/Axis;->lookup(Ljava/lang/String;)I

    move-result v0

    .line 562
    if-nez v0, :cond_0

    .line 564
    invoke-virtual {v1}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->throwInvalidAxis(Ljava/lang/String;)V

    .line 567
    :cond_0
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 568
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1081
    iget-object v2, p0, Lorg/jaxen/saxpath/base/XPathReader;->lexer:Lorg/jaxen/saxpath/base/XPathLexer;

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "xpath":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenBegin()I

    move-result v0

    .line 1084
    .local v0, "position":I
    new-instance v2, Lorg/jaxen/saxpath/XPathSyntaxException;

    invoke-direct {v2, v1, v0, p1}, Lorg/jaxen/saxpath/XPathSyntaxException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method private equalityExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 829
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->relationalExpr()V

    .line 831
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    .line 832
    .local v0, "la":I
    :goto_0
    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    .line 834
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 853
    :goto_1
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    .line 838
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 839
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startEqualityExpr()V

    .line 840
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->relationalExpr()V

    .line 841
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/jaxen/saxpath/XPathHandler;->endEqualityExpr(I)V

    goto :goto_1

    .line 846
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 847
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startEqualityExpr()V

    .line 848
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->relationalExpr()V

    .line 849
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/jaxen/saxpath/XPathHandler;->endEqualityExpr(I)V

    goto :goto_1

    .line 855
    :cond_1
    return-void

    .line 834
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private expr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->orExpr()V

    .line 781
    return-void
.end method

.method private filterExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startFilterExpr()V

    .line 256
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 289
    :goto_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 291
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->endFilterExpr()V

    .line 292
    return-void

    .line 260
    :sswitch_0
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 262
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/jaxen/saxpath/XPathHandler;->number(D)V

    goto :goto_0

    .line 267
    .end local v0    # "token":Lorg/jaxen/saxpath/base/Token;
    :sswitch_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->literal()V

    goto :goto_0

    .line 272
    :sswitch_2
    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 273
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->expr()V

    .line 274
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_0

    .line 279
    :sswitch_3
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->functionCall()V

    goto :goto_0

    .line 284
    :sswitch_4
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->variableReference()V

    goto :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x17 -> :sswitch_2
        0x19 -> :sswitch_4
        0x1a -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method private functionCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x13

    const/16 v3, 0x10

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 210
    .local v0, "functionName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 212
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 220
    :goto_0
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/jaxen/saxpath/XPathHandler;->startFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/16 v2, 0x17

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 227
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->arguments()V

    .line 229
    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 231
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaxen/saxpath/XPathHandler;->endFunction()V

    .line 232
    return-void

    .line 217
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private isNodeTypeName(Lorg/jaxen/saxpath/base/Token;)Z
    .locals 2
    .param p1, "name"    # Lorg/jaxen/saxpath/base/Token;

    .prologue
    .line 1063
    invoke-virtual {p1}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "text":Ljava/lang/String;
    const-string v1, "node"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "comment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "processing-instruction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    :cond_0
    const/4 v1, 0x1

    .line 1076
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private literal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v0

    .line 202
    .local v0, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jaxen/saxpath/XPathHandler;->literal(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private match(I)Lorg/jaxen/saxpath/base/Token;
    .locals 4
    .param p1, "tokenType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/XPathSyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1026
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    .line 1028
    iget-object v2, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/saxpath/base/Token;

    .line 1030
    .local v1, "token":Lorg/jaxen/saxpath/base/Token;
    invoke-virtual {v1}, Lorg/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1032
    iget-object v2, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1033
    return-object v1

    .line 1037
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/jaxen/saxpath/base/TokenTypes;->getTokenText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 1038
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0
.end method

.method private multiplicativeExpr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 943
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    .line 945
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    .line 946
    .local v0, "la":I
    :goto_0
    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    .line 948
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 975
    :goto_1
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    .line 952
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 953
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startMultiplicativeExpr()V

    .line 954
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    .line 955
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/jaxen/saxpath/XPathHandler;->endMultiplicativeExpr(I)V

    goto :goto_1

    .line 960
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 961
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startMultiplicativeExpr()V

    .line 962
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    .line 963
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v4}, Lorg/jaxen/saxpath/XPathHandler;->endMultiplicativeExpr(I)V

    goto :goto_1

    .line 968
    :pswitch_2
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 969
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startMultiplicativeExpr()V

    .line 970
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    .line 971
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/jaxen/saxpath/XPathHandler;->endMultiplicativeExpr(I)V

    goto :goto_1

    .line 978
    :cond_1
    return-void

    .line 948
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private nameTest(I)V
    .locals 5
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 676
    .local v0, "localName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 693
    :goto_0
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 708
    :goto_1
    if-nez v1, :cond_0

    .line 710
    const-string v1, ""

    .line 713
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2, p1, v1, v0}, Lorg/jaxen/saxpath/XPathHandler;->startNameStep(ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 719
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaxen/saxpath/XPathHandler;->endNameStep()V

    .line 720
    return-void

    .line 680
    :pswitch_0
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 684
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    .line 685
    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_0

    .line 697
    :sswitch_0
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    .line 698
    goto :goto_1

    .line 702
    :sswitch_1
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 703
    const-string v0, "*"

    goto :goto_1

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    .line 693
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 680
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch
.end method

.method private nodeTest(I)V
    .locals 2
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 579
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 604
    const-string v1, "Expected <QName> or *"

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 605
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 583
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :sswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 592
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/base/XPathReader;->nameTest(I)V

    .line 607
    :goto_0
    return-void

    .line 587
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/base/XPathReader;->nodeTypeTest(I)V

    goto :goto_0

    .line 600
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/base/XPathReader;->nameTest(I)V

    goto :goto_0

    .line 579
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 583
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method private nodeTypeTest(I)V
    .locals 7
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1a

    const/16 v5, 0x18

    .line 611
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    .line 612
    .local v2, "nodeTypeToken":Lorg/jaxen/saxpath/base/Token;
    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "nodeType":Ljava/lang/String;
    const/16 v4, 0x17

    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 616
    const-string v4, "processing-instruction"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    const-string v3, ""

    .line 620
    .local v3, "piName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 622
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v3

    .line 625
    :cond_0
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 627
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lorg/jaxen/saxpath/XPathHandler;->startProcessingInstructionNodeStep(ILjava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 632
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4}, Lorg/jaxen/saxpath/XPathHandler;->endProcessingInstructionNodeStep()V

    .line 669
    .end local v3    # "piName":Ljava/lang/String;
    :goto_0
    return-void

    .line 634
    :cond_1
    const-string v4, "node"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 636
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 638
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    .line 640
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 642
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4}, Lorg/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    goto :goto_0

    .line 644
    :cond_2
    const-string v4, "text"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 646
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 648
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jaxen/saxpath/XPathHandler;->startTextNodeStep(I)V

    .line 650
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 652
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4}, Lorg/jaxen/saxpath/XPathHandler;->endTextNodeStep()V

    goto :goto_0

    .line 654
    :cond_3
    const-string v4, "comment"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 656
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 658
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jaxen/saxpath/XPathHandler;->startCommentNodeStep(I)V

    .line 660
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicates()V

    .line 662
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v4

    invoke-interface {v4}, Lorg/jaxen/saxpath/XPathHandler;->endCommentNodeStep()V

    goto :goto_0

    .line 666
    :cond_4
    const-string v4, "Expected node-type"

    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 667
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0
.end method

.method private orExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 785
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startOrExpr()V

    .line 787
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->andExpr()V

    .line 789
    const/4 v0, 0x0

    .line 791
    .local v0, "create":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 802
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jaxen/saxpath/XPathHandler;->endOrExpr(Z)V

    .line 803
    return-void

    .line 795
    :pswitch_0
    const/4 v0, 0x1

    .line 796
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 797
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->orExpr()V

    goto :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method private pathExpr()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 122
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startPathExpr()V

    .line 124
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 191
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 129
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :pswitch_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->filterExpr()V

    .line 131
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 133
    :cond_0
    const-string v1, "Node-set expected"

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 134
    .restart local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 142
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :pswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->filterExpr()V

    .line 144
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 146
    :cond_1
    invoke-virtual {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    .line 195
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->endPathExpr()V

    .line 196
    return-void

    .line 153
    :pswitch_3
    invoke-direct {p0, v7}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->isNodeTypeName(Lorg/jaxen/saxpath/base/Token;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v7}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_6

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_6

    .line 161
    :cond_4
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->filterExpr()V

    .line 163
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-eq v1, v5, :cond_5

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 165
    :cond_5
    invoke-virtual {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    .line 170
    :cond_6
    invoke-virtual {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    .line 179
    :pswitch_4
    invoke-virtual {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-virtual {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private predicateExpr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->expr()V

    .line 776
    return-void
.end method

.method private predicates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 749
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicate()V

    goto :goto_0

    .line 758
    :cond_0
    return-void
.end method

.method private relationalExpr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 860
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    .line 862
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    .line 870
    .local v0, "la":I
    :goto_0
    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_1

    .line 871
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 906
    :goto_1
    invoke-direct {p0, v6}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    .line 875
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 876
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    .line 877
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    .line 878
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    .line 883
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 884
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    .line 885
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    .line 886
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v4}, Lorg/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    .line 891
    :pswitch_2
    invoke-direct {p0, v5}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 892
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    .line 893
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    .line 894
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    .line 899
    :pswitch_3
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 900
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    .line 901
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    .line 902
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    .line 908
    :cond_1
    return-void

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private relativeLocationPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xc

    .line 406
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->startRelativeLocationPath()V

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->steps()V

    .line 428
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->endRelativeLocationPath()V

    .line 429
    return-void

    .line 412
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_0

    .line 417
    :pswitch_1
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    .line 418
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    .line 420
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private steps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 433
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 451
    const-string v1, "Expected one of \'.\', \'..\', \'@\', \'*\', <QName>"

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 452
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 442
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :sswitch_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->step()V

    .line 458
    :goto_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 462
    :cond_0
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 484
    :goto_1
    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 497
    :pswitch_0
    const-string v1, "Expected one of \'.\', \'..\', \'@\', \'*\', <QName>"

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 498
    .restart local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 466
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_1

    .line 471
    :pswitch_2
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    .line 472
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    .line 474
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    goto :goto_1

    .line 492
    :pswitch_3
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->step()V

    goto :goto_0

    .line 481
    :cond_1
    :sswitch_1
    return-void

    .line 433
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch

    .line 462
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 484
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private throwInvalidAxis(Ljava/lang/String;)V
    .locals 5
    .param p1, "invalidAxis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v3, p0, Lorg/jaxen/saxpath/base/XPathReader;->lexer:Lorg/jaxen/saxpath/base/XPathLexer;

    invoke-virtual {v3}, Lorg/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, "xpath":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaxen/saxpath/base/Token;->getTokenBegin()I

    move-result v1

    .line 1094
    .local v1, "position":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected valid axis name instead of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "message":Ljava/lang/String;
    new-instance v3, Lorg/jaxen/saxpath/XPathSyntaxException;

    invoke-direct {v3, v2, v1, v0}, Lorg/jaxen/saxpath/XPathSyntaxException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v3
.end method

.method private unaryExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 982
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->unionExpr()V

    .line 1000
    :goto_0
    return-void

    .line 986
    :pswitch_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->startUnaryExpr()V

    .line 987
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 988
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    .line 989
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lorg/jaxen/saxpath/XPathHandler;->endUnaryExpr(I)V

    goto :goto_0

    .line 982
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private unionExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startUnionExpr()V

    .line 1006
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->pathExpr()V

    .line 1008
    const/4 v0, 0x0

    .line 1010
    .local v0, "create":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1021
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jaxen/saxpath/XPathHandler;->endUnionExpr(Z)V

    .line 1022
    return-void

    .line 1014
    :pswitch_0
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 1015
    const/4 v0, 0x1

    .line 1016
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->expr()V

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method private variableReference()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x13

    const/16 v3, 0x10

    .line 296
    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 301
    .local v1, "variableName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 303
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-direct {p0, v4}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 311
    :goto_0
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/jaxen/saxpath/XPathHandler;->variableReference(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void

    .line 308
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jaxen/saxpath/base/XPathReader;->handler:Lorg/jaxen/saxpath/XPathHandler;

    return-object v0
.end method

.method locationPath(Z)V
    .locals 4
    .param p1, "isAbsolute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 319
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 345
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 346
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 324
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :pswitch_1
    if-eqz p1, :cond_0

    .line 326
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->absoluteLocationPath()V

    .line 349
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->relativeLocationPath()V

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->relativeLocationPath()V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)V
    .locals 5
    .param p1, "xpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lorg/jaxen/saxpath/base/XPathReader;->setUpParse(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->startXPath()V

    .line 100
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->expr()V

    .line 102
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/saxpath/XPathHandler;->endXPath()V

    .line 104
    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/jaxen/saxpath/base/XPathReader;->LT(I)Lorg/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    .line 107
    .local v0, "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    throw v0

    .line 110
    .end local v0    # "ex":Lorg/jaxen/saxpath/XPathSyntaxException;
    :cond_0
    iput-object v4, p0, Lorg/jaxen/saxpath/base/XPathReader;->lexer:Lorg/jaxen/saxpath/base/XPathLexer;

    .line 111
    iput-object v4, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method predicate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->startPredicate()V

    .line 764
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 766
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->predicateExpr()V

    .line 768
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->match(I)Lorg/jaxen/saxpath/base/Token;

    .line 770
    invoke-virtual {p0}, Lorg/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lorg/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/saxpath/XPathHandler;->endPredicate()V

    .line 771
    return-void
.end method

.method setUpParse(Ljava/lang/String;)V
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lorg/jaxen/saxpath/base/XPathLexer;

    invoke-direct {v0, p1}, Lorg/jaxen/saxpath/base/XPathLexer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaxen/saxpath/base/XPathReader;->lexer:Lorg/jaxen/saxpath/base/XPathLexer;

    .line 118
    return-void
.end method

.method public setXPathHandler(Lorg/jaxen/saxpath/XPathHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/jaxen/saxpath/XPathHandler;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jaxen/saxpath/base/XPathReader;->handler:Lorg/jaxen/saxpath/XPathHandler;

    .line 87
    return-void
.end method

.method step()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "axis":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 541
    :goto_0
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/jaxen/saxpath/base/XPathReader;->nodeTest(I)V

    .line 542
    :goto_1
    return-void

    .line 514
    :pswitch_1
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->abbrStep()V

    goto :goto_1

    .line 519
    :pswitch_2
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->axisSpecifier()I

    move-result v0

    .line 520
    goto :goto_0

    .line 524
    :pswitch_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 526
    invoke-direct {p0}, Lorg/jaxen/saxpath/base/XPathReader;->axisSpecifier()I

    move-result v0

    goto :goto_0

    .line 530
    :cond_0
    const/4 v0, 0x1

    .line 532
    goto :goto_0

    .line 536
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
