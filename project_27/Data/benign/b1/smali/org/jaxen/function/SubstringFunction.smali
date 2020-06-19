.class public Lorg/jaxen/function/SubstringFunction;
.super Ljava/lang/Object;
.source "SubstringFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unicodeSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 238
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "jChar":I
    const/4 v3, 0x0

    .local v3, "uChar":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 240
    .local v0, "c":C
    if-lt v3, p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    :cond_0
    const v4, 0xd800

    if-lt v0, v4, :cond_1

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    if-lt v3, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 13
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 168
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 169
    .local v0, "argc":I
    if-lt v0, v10, :cond_0

    if-le v0, v12, :cond_1

    .line 170
    :cond_0
    new-instance v9, Lorg/jaxen/FunctionCallException;

    const-string v10, "substring() requires two or three arguments."

    invoke-direct {v9, v10}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 173
    :cond_1
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v4

    .line 175
    .local v4, "nav":Lorg/jaxen/Navigator;
    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v4}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "str":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 178
    const-string v9, ""

    .line 230
    :goto_0
    return-object v9

    .line 181
    :cond_2
    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v4}, Lorg/jaxen/function/StringLengthFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v7

    .line 183
    .local v7, "stringLength":I
    if-nez v7, :cond_3

    .line 184
    const-string v9, ""

    goto :goto_0

    .line 187
    :cond_3
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v4}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    .line 189
    .local v1, "d1":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 190
    const-string v9, ""

    goto :goto_0

    .line 193
    :cond_4
    invoke-static {v1, v4}, Lorg/jaxen/function/RoundFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 195
    .local v5, "start":I
    move v8, v7

    .line 196
    .local v8, "substringLength":I
    if-ne v0, v12, :cond_5

    .line 197
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v4}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v2

    .line 199
    .local v2, "d2":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    move-result v9

    if-nez v9, :cond_6

    .line 200
    invoke-static {v2, v4}, Lorg/jaxen/function/RoundFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v8

    .line 207
    .end local v2    # "d2":Ljava/lang/Double;
    :cond_5
    :goto_1
    if-gez v8, :cond_7

    const-string v9, ""

    goto :goto_0

    .line 203
    .restart local v2    # "d2":Ljava/lang/Double;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 209
    .end local v2    # "d2":Ljava/lang/Double;
    :cond_7
    add-int v3, v5, v8

    .line 210
    .local v3, "end":I
    if-ne v0, v10, :cond_8

    move v3, v7

    .line 213
    :cond_8
    if-gez v5, :cond_b

    .line 214
    const/4 v5, 0x0

    .line 220
    :cond_9
    if-le v3, v7, :cond_c

    .line 221
    move v3, v7

    .line 225
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v7, v9, :cond_d

    .line 227
    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 216
    :cond_b
    if-le v5, v7, :cond_9

    .line 217
    const-string v9, ""

    goto :goto_0

    .line 223
    :cond_c
    if-ge v3, v5, :cond_a

    const-string v9, ""

    goto :goto_0

    .line 230
    :cond_d
    invoke-static {v6, v5, v3}, Lorg/jaxen/function/SubstringFunction;->unicodeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method
