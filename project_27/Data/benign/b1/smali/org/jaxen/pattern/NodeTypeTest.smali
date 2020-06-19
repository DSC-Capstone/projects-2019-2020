.class public Lorg/jaxen/pattern/NodeTypeTest;
.super Lorg/jaxen/pattern/NodeTest;
.source "NodeTypeTest.java"


# static fields
.field public static final ATTRIBUTE_TEST:Lorg/jaxen/pattern/NodeTypeTest;

.field public static final COMMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

.field public static final DOCUMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

.field public static final ELEMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

.field public static final NAMESPACE_TEST:Lorg/jaxen/pattern/NodeTypeTest;

.field public static final PROCESSING_INSTRUCTION_TEST:Lorg/jaxen/pattern/NodeTypeTest;

.field public static final TEXT_TEST:Lorg/jaxen/pattern/NodeTypeTest;


# instance fields
.field private nodeType:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->DOCUMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    .line 63
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->ELEMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    .line 66
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->ATTRIBUTE_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    .line 69
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->COMMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    .line 72
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->TEXT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    .line 75
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->PROCESSING_INSTRUCTION_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    .line 78
    new-instance v0, Lorg/jaxen/pattern/NodeTypeTest;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/jaxen/pattern/NodeTypeTest;-><init>(S)V

    sput-object v0, Lorg/jaxen/pattern/NodeTypeTest;->NAMESPACE_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "nodeType"    # S

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/jaxen/pattern/NodeTest;-><init>()V

    .line 86
    iput-short p1, p0, Lorg/jaxen/pattern/NodeTypeTest;->nodeType:S

    .line 87
    return-void
.end method


# virtual methods
.method public getMatchType()S
    .locals 1

    .prologue
    .line 104
    iget-short v0, p0, Lorg/jaxen/pattern/NodeTypeTest;->nodeType:S

    return v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 98
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-short v0, p0, Lorg/jaxen/pattern/NodeTypeTest;->nodeType:S

    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 112
    :pswitch_1
    const-string v0, "child()"

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "@*"

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v0, "namespace()"

    goto :goto_0

    .line 118
    :pswitch_4
    const-string v0, "/"

    goto :goto_0

    .line 120
    :pswitch_5
    const-string v0, "comment()"

    goto :goto_0

    .line 122
    :pswitch_6
    const-string v0, "text()"

    goto :goto_0

    .line 124
    :pswitch_7
    const-string v0, "processing-instruction()"

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    .locals 2
    .param p1, "node"    # Ljava/lang/Object;
    .param p2, "context"    # Lorg/jaxen/Context;

    .prologue
    .line 93
    iget-short v0, p0, Lorg/jaxen/pattern/NodeTypeTest;->nodeType:S

    invoke-virtual {p2}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getNodeType(Ljava/lang/Object;)S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/jaxen/pattern/NodeTypeTest;->nodeType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
