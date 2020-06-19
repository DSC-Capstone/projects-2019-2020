.class public Lorg/jaxen/function/BooleanFunction;
.super Ljava/lang/Object;
.source "BooleanFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 153
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 155
    check-cast v2, Ljava/util/List;

    .line 158
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 160
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 196
    .end local v2    # "list":Ljava/util/List;
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 164
    .restart local v2    # "list":Ljava/util/List;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 171
    .end local v2    # "list":Ljava/util/List;
    :cond_1
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 173
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v3, p0

    goto :goto_0

    .line 176
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 178
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 179
    .local v0, "d":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 183
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 186
    .end local v0    # "d":D
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 188
    check-cast p0, Ljava/lang/String;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 196
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    if-eqz p0, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
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
    .line 126
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "boolean() requires one argument"

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
