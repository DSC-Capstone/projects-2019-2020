.class public Lorg/appcelerator/titanium/util/TiEventHelper;
.super Ljava/lang/Object;
.source "TiEventHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fireClicked(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p0, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 48
    const-string v0, "click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static fireFocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p0, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 52
    const-string v0, "focused"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static fireUnfocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p0, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 56
    const-string v0, "unfocused"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "extraProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 21
    .local v1, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "source"

    invoke-virtual {v1, v3, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v3, "type"

    invoke-virtual {v1, v3, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public static varargs fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "properties"    # [Ljava/lang/String;

    .prologue
    .line 35
    array-length v2, p2

    if-nez v2, :cond_0

    .line 36
    const/4 v2, 0x0

    check-cast v2, Ljava/util/Map;

    invoke-static {p0, p1, v2}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "extraProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 41
    add-int/lit8 v2, v1, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 42
    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method
