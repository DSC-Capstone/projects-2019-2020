.class public Lorg/jaxen/javabean/JavaBeanXPath;
.super Lorg/jaxen/BaseXPath;
.source "JavaBeanXPath.java"


# static fields
.field private static final serialVersionUID:J = -0x15c0f4e7039e6049L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "xpathExpr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lorg/jaxen/javabean/DocumentNavigator;->getInstance()Lorg/jaxen/Navigator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    .line 95
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/jaxen/BaseXPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "result":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jaxen/javabean/Element;

    if-eqz v4, :cond_1

    .line 132
    check-cast v3, Lorg/jaxen/javabean/Element;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/jaxen/javabean/Element;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 156
    :cond_0
    :goto_0
    return-object v2

    .line 134
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "newList":Ljava/util/List;
    check-cast v3, Ljava/util/Collection;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    .local v0, "listIter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "member":Ljava/lang/Object;
    instance-of v4, v1, Lorg/jaxen/javabean/Element;

    if-eqz v4, :cond_2

    .line 145
    check-cast v1, Lorg/jaxen/javabean/Element;

    .end local v1    # "member":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/jaxen/javabean/Element;->getObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .restart local v1    # "member":Ljava/lang/Object;
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "listIter":Ljava/util/Iterator;
    .end local v1    # "member":Ljava/lang/Object;
    .end local v2    # "newList":Ljava/util/List;
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_3
    move-object v2, v3

    .line 156
    goto :goto_0
.end method

.method protected getContext(Ljava/lang/Object;)Lorg/jaxen/Context;
    .locals 6
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 99
    instance-of v2, p1, Lorg/jaxen/Context;

    if-eqz v2, :cond_0

    .line 101
    check-cast p1, Lorg/jaxen/Context;

    .line 122
    .end local p1    # "node":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 104
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lorg/jaxen/javabean/Element;

    if-eqz v2, :cond_1

    .line 106
    invoke-super {p0, p1}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "newList":Ljava/util/List;
    check-cast p1, Ljava/util/List;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    .local v0, "listIter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    new-instance v2, Lorg/jaxen/javabean/Element;

    const-string v3, "root"

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lorg/jaxen/javabean/Element;-><init>(Lorg/jaxen/javabean/Element;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_2
    invoke-super {p0, v1}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    goto :goto_0

    .line 122
    .end local v0    # "listIter":Ljava/util/Iterator;
    .end local v1    # "newList":Ljava/util/List;
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_3
    new-instance v2, Lorg/jaxen/javabean/Element;

    const-string v3, "root"

    invoke-direct {v2, v5, v3, p1}, Lorg/jaxen/javabean/Element;-><init>(Lorg/jaxen/javabean/Element;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, v2}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    goto :goto_0
.end method
