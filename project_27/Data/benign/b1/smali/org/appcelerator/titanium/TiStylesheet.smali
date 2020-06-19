.class public abstract Lorg/appcelerator/titanium/TiStylesheet;
.super Ljava/lang/Object;
.source "TiStylesheet.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "TiStylesheet"


# instance fields
.field protected final classesDensityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final classesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final idsDensityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final idsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiStylesheet;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method protected addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Lorg/appcelerator/kroll/KrollDict;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollDict;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 30
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 34
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public final getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 11
    .param p1, "objectId"    # Ljava/lang/String;
    .param p3, "density"    # Ljava/lang/String;
    .param p4, "basename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollDict;"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-boolean v8, Lorg/appcelerator/titanium/TiStylesheet;->DBG:Z

    if-eqz v8, :cond_0

    .line 39
    const-string v8, "TiStylesheet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStylesheet id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", classes: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", density: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", basename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 43
    .local v7, "result":Lorg/appcelerator/kroll/KrollDict;
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    if-eqz v8, :cond_2

    .line 45
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 46
    .local v1, "classMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 47
    .local v4, "globalMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    .line 48
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "clazz":Ljava/lang/String;
    invoke-virtual {p0, v7, v4, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v7, v1, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v1    # "classMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v2    # "clazz":Ljava/lang/String;
    .end local v4    # "globalMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    if-eqz v8, :cond_6

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v3, Ljava/util/HashMap;

    .line 61
    .restart local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_3
    const/4 v0, 0x0

    .line 62
    .local v0, "classDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 63
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 66
    .restart local v0    # "classDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_4
    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    .line 67
    :cond_5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .restart local v2    # "clazz":Ljava/lang/String;
    invoke-virtual {p0, v7, v3, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v7, v0, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    .end local v0    # "classDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v2    # "clazz":Ljava/lang/String;
    .end local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    if-eqz v8, :cond_7

    if-eqz p1, :cond_7

    .line 75
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {p0, v7, v8, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 76
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {p0, v7, v8, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 78
    :cond_7
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    if-eqz v8, :cond_a

    if-eqz p1, :cond_a

    .line 80
    const/4 v3, 0x0

    .line 81
    .restart local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 82
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v3, Ljava/util/HashMap;

    .line 84
    .restart local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_8
    const/4 v6, 0x0

    .line 85
    .local v6, "idDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 86
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "idDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v6, Ljava/util/HashMap;

    .line 88
    .restart local v6    # "idDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_9
    invoke-virtual {p0, v7, v3, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v7, v6, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 91
    .end local v3    # "globalDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v6    # "idDensityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_a
    return-object v7
.end method
