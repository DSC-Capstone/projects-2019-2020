.class public abstract Lorg/jaxen/function/ext/LocaleFunctionSupport;
.super Ljava/lang/Object;
.source "LocaleFunctionSupport.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected findLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p1, "localeText"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "-"

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v2, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Lorg/jaxen/function/ext/LocaleFunctionSupport;->findLocaleForLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 138
    .end local v1    # "language":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 126
    .restart local v1    # "language":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "variant":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected findLocaleForLanguage(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v3

    .line 151
    .local v3, "locales":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 153
    aget-object v2, v3, v1

    .line 154
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 159
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "variant":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 167
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v5    # "variant":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 151
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getLocale(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/util/Locale;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "navigator"    # Lorg/jaxen/Navigator;

    .prologue
    .line 84
    instance-of v2, p1, Ljava/util/Locale;

    if-eqz v2, :cond_0

    .line 86
    check-cast p1, Ljava/util/Locale;

    .line 103
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 88
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 90
    check-cast v0, Ljava/util/List;

    .line 91
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/jaxen/function/ext/LocaleFunctionSupport;->getLocale(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    .line 97
    .end local v0    # "list":Ljava/util/List;
    :cond_1
    invoke-static {p1, p2}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 100
    invoke-virtual {p0, v1}, Lorg/jaxen/function/ext/LocaleFunctionSupport;->findLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    .line 103
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method
