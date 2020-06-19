.class Lorg/jaxen/expr/NodeComparator;
.super Ljava/lang/Object;
.source "NodeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private navigator:Lorg/jaxen/Navigator;


# direct methods
.method constructor <init>(Lorg/jaxen/Navigator;)V
    .locals 0
    .param p1, "navigator"    # Lorg/jaxen/Navigator;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    .line 63
    return-void
.end method

.method private compareSiblings(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "sib1"    # Ljava/lang/Object;
    .param p2, "sib2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v2, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v2, p1}, Lorg/jaxen/Navigator;->getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 137
    .local v0, "following":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "next":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    .line 141
    .end local v1    # "next":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getDepth(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "depth":I
    move-object v1, p1

    .line 150
    .local v1, "parent":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v2, v1}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return v0
.end method

.method private isNonChild(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v0, p1}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v0, p1}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 67
    iget-object v10, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    if-nez v10, :cond_0

    .line 124
    :goto_0
    return v7

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lorg/jaxen/expr/NodeComparator;->isNonChild(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, p2}, Lorg/jaxen/expr/NodeComparator;->isNonChild(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 72
    :try_start_0
    iget-object v10, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v10, p1}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 73
    .local v5, "p1":Ljava/lang/Object;
    iget-object v10, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v10, p2}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 75
    .local v6, "p2":Ljava/lang/Object;
    if-ne v5, v6, :cond_2

    .line 76
    iget-object v10, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v10, p1}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v10, p2}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v8

    .line 77
    goto :goto_0

    .line 79
    :cond_1
    iget-object v8, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v8, p2}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v8, p1}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v7, v9

    .line 80
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, v5, v6}, Lorg/jaxen/expr/NodeComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 86
    .end local v5    # "p1":Ljava/lang/Object;
    .end local v6    # "p2":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 87
    .local v4, "ex":Lorg/jaxen/UnsupportedAxisException;
    goto :goto_0

    .line 93
    .end local v4    # "ex":Lorg/jaxen/UnsupportedAxisException;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jaxen/expr/NodeComparator;->getDepth(Ljava/lang/Object;)I

    move-result v2

    .line 94
    .local v2, "depth1":I
    invoke-direct {p0, p2}, Lorg/jaxen/expr/NodeComparator;->getDepth(Ljava/lang/Object;)I

    move-result v3

    .line 96
    .local v3, "depth2":I
    move-object v0, p1

    .line 97
    .local v0, "a1":Ljava/lang/Object;
    move-object v1, p2

    .line 99
    .local v1, "a2":Ljava/lang/Object;
    :goto_1
    if-le v2, v3, :cond_4

    .line 100
    iget-object v10, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v10, v0}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 103
    :cond_4
    if-ne v0, p2, :cond_5

    move v7, v9

    goto :goto_0

    .line 105
    :cond_5
    :goto_2
    if-le v3, v2, :cond_6

    .line 106
    iget-object v9, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v9, v1}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 109
    :cond_6
    if-ne v1, p1, :cond_8

    move v7, v8

    goto :goto_0

    .line 118
    .restart local v5    # "p1":Ljava/lang/Object;
    .restart local v6    # "p2":Ljava/lang/Object;
    :cond_7
    move-object v0, v5

    .line 119
    move-object v1, v6

    .line 113
    .end local v5    # "p1":Ljava/lang/Object;
    .end local v6    # "p2":Ljava/lang/Object;
    :cond_8
    iget-object v8, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v8, v0}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 114
    .restart local v5    # "p1":Ljava/lang/Object;
    iget-object v8, p0, Lorg/jaxen/expr/NodeComparator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v8, v1}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 115
    .restart local v6    # "p2":Ljava/lang/Object;
    if-ne v5, v6, :cond_7

    .line 116
    invoke-direct {p0, v0, v1}, Lorg/jaxen/expr/NodeComparator;->compareSiblings(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto/16 :goto_0

    .line 123
    .end local v0    # "a1":Ljava/lang/Object;
    .end local v1    # "a2":Ljava/lang/Object;
    .end local v2    # "depth1":I
    .end local v3    # "depth2":I
    .end local v5    # "p1":Ljava/lang/Object;
    .end local v6    # "p2":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 124
    .restart local v4    # "ex":Lorg/jaxen/UnsupportedAxisException;
    goto/16 :goto_0
.end method
