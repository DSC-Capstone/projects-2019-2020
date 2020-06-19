.class public abstract Lorg/jaxen/expr/DefaultExpr;
.super Ljava/lang/Object;
.source "DefaultExpr.java"

# interfaces
.implements Lorg/jaxen/expr/Expr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Ljava/util/Iterator;

    .line 81
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 76
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 78
    check-cast p0, Ljava/util/List;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    .line 81
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/jaxen/util/SingleObjectIterator;

    invoke-direct {v0, p0}, Lorg/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static convertToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 86
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Ljava/util/List;

    .line 91
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/jaxen/util/SingletonList;

    invoke-direct {v0, p0}, Lorg/jaxen/util/SingletonList;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public simplify()Lorg/jaxen/expr/Expr;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method
