.class public Lorg/jaxen/function/StringFunction;
.super Ljava/lang/Object;
.source "StringFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# static fields
.field private static format:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 186
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    sput-object v1, Lorg/jaxen/function/StringFunction;->format:Ljava/text/DecimalFormat;

    .line 189
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 190
    .local v0, "symbols":Ljava/text/DecimalFormatSymbols;
    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 191
    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lorg/jaxen/function/StringFunction;->format:Ljava/text/DecimalFormat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 193
    sget-object v1, Lorg/jaxen/function/StringFunction;->format:Ljava/text/DecimalFormat;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 194
    sget-object v1, Lorg/jaxen/function/StringFunction;->format:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 195
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 330
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 258
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 260
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 261
    .local v4, "list":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    const-string p0, ""

    goto :goto_0

    .line 266
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 269
    .end local v4    # "list":Ljava/util/List;
    :cond_2
    if-eqz p1, :cond_a

    .line 272
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 276
    :cond_3
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 278
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 281
    :cond_4
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 283
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    .line 284
    .local v1, "childAxisIterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 287
    .local v2, "descendant":Ljava/lang/Object;
    invoke-interface {p1, v2}, Lorg/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    invoke-interface {p1, v2}, Lorg/jaxen/Navigator;->getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 293
    .end local v1    # "childAxisIterator":Ljava/util/Iterator;
    .end local v2    # "descendant":Ljava/lang/Object;
    :cond_6
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 295
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 297
    :cond_7
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isComment(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 299
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 301
    :cond_8
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 303
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 305
    :cond_9
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 307
    invoke-interface {p1, p0}, Lorg/jaxen/Navigator;->getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 311
    :cond_a
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 313
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_b
    instance-of v5, p0, Ljava/lang/Boolean;

    if-eqz v5, :cond_c

    .line 317
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lorg/jaxen/function/StringFunction;->stringValue(Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 319
    :cond_c
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_d

    .line 321
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/jaxen/function/StringFunction;->stringValue(D)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Lorg/jaxen/UnsupportedAxisException;
    new-instance v5, Lorg/jaxen/JaxenRuntimeException;

    invoke-direct {v5, v3}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 330
    .end local v3    # "e":Lorg/jaxen/UnsupportedAxisException;
    :cond_d
    const-string p0, ""

    goto/16 :goto_0
.end method

.method private static stringValue(D)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D

    .prologue
    .line 339
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_0

    const-string v0, "0"

    .line 346
    :goto_0
    return-object v0

    .line 342
    :cond_0
    const/4 v0, 0x0

    .line 343
    .local v0, "result":Ljava/lang/String;
    sget-object v2, Lorg/jaxen/function/StringFunction;->format:Ljava/text/DecimalFormat;

    monitor-enter v2

    .line 344
    :try_start_0
    sget-object v1, Lorg/jaxen/function/StringFunction;->format:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 345
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static stringValue(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 352
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    .line 224
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 230
    :cond_1
    new-instance v1, Lorg/jaxen/FunctionCallException;

    const-string v2, "string() takes at most argument."

    invoke-direct {v1, v2}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
