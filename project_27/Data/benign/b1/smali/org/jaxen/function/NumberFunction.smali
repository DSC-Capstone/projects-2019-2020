.class public Lorg/jaxen/function/NumberFunction;
.super Ljava/lang/Object;
.source "NumberFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# static fields
.field private static final NaN:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/jaxen/function/NumberFunction;->NaN:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 177
    instance-of v3, p0, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 179
    check-cast p0, Ljava/lang/Double;

    .line 213
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 181
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 183
    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "doubleValue":Ljava/lang/Double;
    move-object p0, v0

    .line 187
    goto :goto_0

    .line 189
    .end local v0    # "doubleValue":Ljava/lang/Double;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object p0, Lorg/jaxen/function/NumberFunction;->NaN:Ljava/lang/Double;

    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    instance-of v3, p0, Ljava/util/List;

    if-nez v3, :cond_2

    instance-of v3, p0, Ljava/util/Iterator;

    if-eqz v3, :cond_3

    .line 196
    :cond_2
    invoke-static {p0, p1}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_3
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    :cond_4
    invoke-static {p0, p1}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_5
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 204
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v3, :cond_6

    .line 206
    new-instance p0, Ljava/lang/Double;

    .end local p0    # "obj":Ljava/lang/Object;
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 210
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_6
    new-instance p0, Ljava/lang/Double;

    .end local p0    # "obj":Ljava/lang/Object;
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 213
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    sget-object p0, Lorg/jaxen/function/NumberFunction;->NaN:Ljava/lang/Double;

    goto :goto_0
.end method

.method public static isNaN(D)Z
    .locals 1
    .param p0, "val"    # D

    .prologue
    .line 225
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public static isNaN(Ljava/lang/Double;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/Double;

    .prologue
    .line 237
    sget-object v0, Lorg/jaxen/function/NumberFunction;->NaN:Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "number() takes at most one argument."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
