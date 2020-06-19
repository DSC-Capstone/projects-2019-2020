.class public Lorg/jaxen/pattern/AnyChildNodeTest;
.super Lorg/jaxen/pattern/NodeTest;
.source "AnyChildNodeTest.java"


# static fields
.field private static instance:Lorg/jaxen/pattern/AnyChildNodeTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/jaxen/pattern/AnyChildNodeTest;

    invoke-direct {v0}, Lorg/jaxen/pattern/AnyChildNodeTest;-><init>()V

    sput-object v0, Lorg/jaxen/pattern/AnyChildNodeTest;->instance:Lorg/jaxen/pattern/AnyChildNodeTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/jaxen/pattern/NodeTest;-><init>()V

    .line 68
    return-void
.end method

.method public static getInstance()Lorg/jaxen/pattern/AnyChildNodeTest;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/jaxen/pattern/AnyChildNodeTest;->instance:Lorg/jaxen/pattern/AnyChildNodeTest;

    return-object v0
.end method


# virtual methods
.method public getMatchType()S
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 81
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "*"

    return-object v0
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;
    .param p2, "context"    # Lorg/jaxen/Context;

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p2}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/jaxen/Navigator;->getNodeType(Ljava/lang/Object;)S

    move-result v0

    .line 75
    .local v0, "type":S
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
