.class public Lorg/jaxen/pattern/TextNodeTest;
.super Lorg/jaxen/pattern/NodeTest;
.source "TextNodeTest.java"


# static fields
.field public static final SINGLETON:Lorg/jaxen/pattern/TextNodeTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/jaxen/pattern/TextNodeTest;

    invoke-direct {v0}, Lorg/jaxen/pattern/TextNodeTest;-><init>()V

    sput-object v0, Lorg/jaxen/pattern/TextNodeTest;->SINGLETON:Lorg/jaxen/pattern/TextNodeTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/jaxen/pattern/NodeTest;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public getMatchType()S
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    return v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 74
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "text()"

    return-object v0
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .param p2, "context"    # Lorg/jaxen/Context;

    .prologue
    .line 69
    invoke-virtual {p2}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
