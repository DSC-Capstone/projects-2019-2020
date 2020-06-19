.class public Lorg/jaxen/XPathFunctionContext;
.super Lorg/jaxen/SimpleFunctionContext;
.source "XPathFunctionContext.java"


# static fields
.field private static instance:Lorg/jaxen/XPathFunctionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lorg/jaxen/XPathFunctionContext;

    invoke-direct {v0}, Lorg/jaxen/XPathFunctionContext;-><init>()V

    sput-object v0, Lorg/jaxen/XPathFunctionContext;->instance:Lorg/jaxen/XPathFunctionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaxen/XPathFunctionContext;-><init>(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "includeExtensionFunctions"    # Z

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/jaxen/SimpleFunctionContext;-><init>()V

    .line 148
    invoke-direct {p0}, Lorg/jaxen/XPathFunctionContext;->registerXPathFunctions()V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lorg/jaxen/XPathFunctionContext;->registerXSLTFunctions()V

    .line 151
    invoke-direct {p0}, Lorg/jaxen/XPathFunctionContext;->registerExtensionFunctions()V

    .line 153
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/jaxen/FunctionContext;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/jaxen/XPathFunctionContext;->instance:Lorg/jaxen/XPathFunctionContext;

    return-object v0
.end method

.method private registerExtensionFunctions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    const-string v0, "evaluate"

    new-instance v1, Lorg/jaxen/function/ext/EvaluateFunction;

    invoke-direct {v1}, Lorg/jaxen/function/ext/EvaluateFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 282
    const-string v0, "lower-case"

    new-instance v1, Lorg/jaxen/function/ext/LowerFunction;

    invoke-direct {v1}, Lorg/jaxen/function/ext/LowerFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 286
    const-string v0, "upper-case"

    new-instance v1, Lorg/jaxen/function/ext/UpperFunction;

    invoke-direct {v1}, Lorg/jaxen/function/ext/UpperFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 290
    const-string v0, "ends-with"

    new-instance v1, Lorg/jaxen/function/ext/EndsWithFunction;

    invoke-direct {v1}, Lorg/jaxen/function/ext/EndsWithFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 293
    return-void
.end method

.method private registerXPathFunctions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string v0, "boolean"

    new-instance v1, Lorg/jaxen/function/BooleanFunction;

    invoke-direct {v1}, Lorg/jaxen/function/BooleanFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 161
    const-string v0, "ceiling"

    new-instance v1, Lorg/jaxen/function/CeilingFunction;

    invoke-direct {v1}, Lorg/jaxen/function/CeilingFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 165
    const-string v0, "concat"

    new-instance v1, Lorg/jaxen/function/ConcatFunction;

    invoke-direct {v1}, Lorg/jaxen/function/ConcatFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 169
    const-string v0, "contains"

    new-instance v1, Lorg/jaxen/function/ContainsFunction;

    invoke-direct {v1}, Lorg/jaxen/function/ContainsFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 173
    const-string v0, "count"

    new-instance v1, Lorg/jaxen/function/CountFunction;

    invoke-direct {v1}, Lorg/jaxen/function/CountFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 177
    const-string v0, "false"

    new-instance v1, Lorg/jaxen/function/FalseFunction;

    invoke-direct {v1}, Lorg/jaxen/function/FalseFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 181
    const-string v0, "floor"

    new-instance v1, Lorg/jaxen/function/FloorFunction;

    invoke-direct {v1}, Lorg/jaxen/function/FloorFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 185
    const-string v0, "id"

    new-instance v1, Lorg/jaxen/function/IdFunction;

    invoke-direct {v1}, Lorg/jaxen/function/IdFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 189
    const-string v0, "lang"

    new-instance v1, Lorg/jaxen/function/LangFunction;

    invoke-direct {v1}, Lorg/jaxen/function/LangFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 193
    const-string v0, "last"

    new-instance v1, Lorg/jaxen/function/LastFunction;

    invoke-direct {v1}, Lorg/jaxen/function/LastFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 197
    const-string v0, "local-name"

    new-instance v1, Lorg/jaxen/function/LocalNameFunction;

    invoke-direct {v1}, Lorg/jaxen/function/LocalNameFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 201
    const-string v0, "name"

    new-instance v1, Lorg/jaxen/function/NameFunction;

    invoke-direct {v1}, Lorg/jaxen/function/NameFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 205
    const-string v0, "namespace-uri"

    new-instance v1, Lorg/jaxen/function/NamespaceUriFunction;

    invoke-direct {v1}, Lorg/jaxen/function/NamespaceUriFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 209
    const-string v0, "normalize-space"

    new-instance v1, Lorg/jaxen/function/NormalizeSpaceFunction;

    invoke-direct {v1}, Lorg/jaxen/function/NormalizeSpaceFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 213
    const-string v0, "not"

    new-instance v1, Lorg/jaxen/function/NotFunction;

    invoke-direct {v1}, Lorg/jaxen/function/NotFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 217
    const-string v0, "number"

    new-instance v1, Lorg/jaxen/function/NumberFunction;

    invoke-direct {v1}, Lorg/jaxen/function/NumberFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 221
    const-string v0, "position"

    new-instance v1, Lorg/jaxen/function/PositionFunction;

    invoke-direct {v1}, Lorg/jaxen/function/PositionFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 225
    const-string v0, "round"

    new-instance v1, Lorg/jaxen/function/RoundFunction;

    invoke-direct {v1}, Lorg/jaxen/function/RoundFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 229
    const-string v0, "starts-with"

    new-instance v1, Lorg/jaxen/function/StartsWithFunction;

    invoke-direct {v1}, Lorg/jaxen/function/StartsWithFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 233
    const-string v0, "string"

    new-instance v1, Lorg/jaxen/function/StringFunction;

    invoke-direct {v1}, Lorg/jaxen/function/StringFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 237
    const-string v0, "string-length"

    new-instance v1, Lorg/jaxen/function/StringLengthFunction;

    invoke-direct {v1}, Lorg/jaxen/function/StringLengthFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 241
    const-string v0, "substring-after"

    new-instance v1, Lorg/jaxen/function/SubstringAfterFunction;

    invoke-direct {v1}, Lorg/jaxen/function/SubstringAfterFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 245
    const-string v0, "substring-before"

    new-instance v1, Lorg/jaxen/function/SubstringBeforeFunction;

    invoke-direct {v1}, Lorg/jaxen/function/SubstringBeforeFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 249
    const-string v0, "substring"

    new-instance v1, Lorg/jaxen/function/SubstringFunction;

    invoke-direct {v1}, Lorg/jaxen/function/SubstringFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 253
    const-string v0, "sum"

    new-instance v1, Lorg/jaxen/function/SumFunction;

    invoke-direct {v1}, Lorg/jaxen/function/SumFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 257
    const-string v0, "true"

    new-instance v1, Lorg/jaxen/function/TrueFunction;

    invoke-direct {v1}, Lorg/jaxen/function/TrueFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 261
    const-string v0, "translate"

    new-instance v1, Lorg/jaxen/function/TranslateFunction;

    invoke-direct {v1}, Lorg/jaxen/function/TranslateFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 264
    return-void
.end method

.method private registerXSLTFunctions()V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x0

    const-string v1, "document"

    new-instance v2, Lorg/jaxen/function/xslt/DocumentFunction;

    invoke-direct {v2}, Lorg/jaxen/function/xslt/DocumentFunction;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V

    .line 272
    return-void
.end method
