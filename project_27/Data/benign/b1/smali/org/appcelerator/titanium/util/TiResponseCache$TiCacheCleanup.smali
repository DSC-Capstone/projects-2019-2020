.class Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;
.super Ljava/lang/Object;
.source "TiResponseCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiCacheCleanup"
.end annotation


# instance fields
.field private cacheDir:Ljava/io/File;

.field private maxSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;->cacheDir:Ljava/io/File;

    .line 63
    iput-wide p2, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;->maxSize:J

    .line 64
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 70
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v8, "lastTime":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/io/File;>;"
    iget-object v11, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;->cacheDir:Ljava/io/File;

    new-instance v12, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup$1;

    invoke-direct {v12, p0}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup$1;-><init>(Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;)V

    invoke-virtual {v11, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v0, v6

    .line 78
    .local v5, "hdrFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "hdrFile":Ljava/io/File;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v10, "sz":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 84
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .local v2, "cacheSize":J
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 87
    .local v7, "last":Ljava/lang/Long;
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 88
    .restart local v5    # "hdrFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "h":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v11, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;->cacheDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".bdy"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v1, "bdyFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v2, v11

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v2, v11

    .line 93
    iget-wide v11, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;->maxSize:J

    cmp-long v11, v2, v11

    if-lez v11, :cond_1

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 98
    .end local v1    # "bdyFile":Ljava/io/File;
    .end local v4    # "h":Ljava/lang/String;
    .end local v5    # "hdrFile":Ljava/io/File;
    .end local v7    # "last":Ljava/lang/Long;
    :cond_2
    return-void
.end method
