.class Lorg/jaxen/dom/DocumentNavigator$2;
.super Lorg/jaxen/dom/DocumentNavigator$NodeIterator;
.source "DocumentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jaxen/dom/DocumentNavigator;->getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jaxen/dom/DocumentNavigator;


# direct methods
.method constructor <init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V
    .locals 0
    .param p2, "x0"    # Lorg/w3c/dom/Node;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/jaxen/dom/DocumentNavigator$2;->this$0:Lorg/jaxen/dom/DocumentNavigator;

    invoke-direct {p0, p1, p2}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method protected getFirstNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 186
    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1    # "n":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getNextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method
