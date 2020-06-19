.class public Lorg/jaxen/function/xslt/DocumentFunction;
.super Ljava/lang/Object;
.source "DocumentFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/String;Lorg/jaxen/Navigator;)Ljava/lang/Object;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "nav"    # Lorg/jaxen/Navigator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getDocument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    .line 74
    .local v0, "nav":Lorg/jaxen/Navigator;
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/jaxen/function/xslt/DocumentFunction;->evaluate(Ljava/lang/String;Lorg/jaxen/Navigator;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 81
    .end local v0    # "nav":Lorg/jaxen/Navigator;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/jaxen/FunctionCallException;

    const-string v3, "document() requires one argument."

    invoke-direct {v2, v3}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
