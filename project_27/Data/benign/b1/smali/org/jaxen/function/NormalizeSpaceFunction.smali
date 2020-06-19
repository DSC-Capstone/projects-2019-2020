.class public Lorg/jaxen/function/NormalizeSpaceFunction;
.super Ljava/lang/Object;
.source "NormalizeSpaceFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;
    .locals 10
    .param p0, "strArg"    # Ljava/lang/Object;
    .param p1, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 136
    invoke-static {p0, p1}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 140
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 141
    .local v5, "write":I
    const/4 v1, 0x0

    .line 142
    .local v1, "lastWrite":I
    const/4 v7, 0x0

    .line 143
    .local v7, "wroteOne":Z
    const/4 v2, 0x0

    .line 144
    .local v2, "read":I
    :cond_0
    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_3

    .line 146
    aget-char v8, v0, v2

    invoke-static {v8}, Lorg/jaxen/function/NormalizeSpaceFunction;->isXMLSpace(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 148
    if-eqz v7, :cond_1

    .line 150
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "write":I
    .local v6, "write":I
    const/16 v8, 0x20

    aput-char v8, v0, v5

    move v5, v6

    .line 154
    .end local v6    # "write":I
    .restart local v5    # "write":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 156
    array-length v8, v0

    if-ge v2, v8, :cond_0

    aget-char v8, v0, v2

    invoke-static {v8}, Lorg/jaxen/function/NormalizeSpaceFunction;->isXMLSpace(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "write":I
    .restart local v6    # "write":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "read":I
    .local v3, "read":I
    aget-char v8, v0, v2

    aput-char v8, v0, v5

    .line 161
    const/4 v7, 0x1

    .line 162
    move v1, v6

    move v2, v3

    .end local v3    # "read":I
    .restart local v2    # "read":I
    move v5, v6

    .end local v6    # "write":I
    .restart local v5    # "write":I
    goto :goto_0

    .line 166
    :cond_3
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v8
.end method

.method private static isXMLSpace(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 171
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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
    .line 107
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/NormalizeSpaceFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 113
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/NormalizeSpaceFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "normalize-space() cannot have more than one argument"

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
