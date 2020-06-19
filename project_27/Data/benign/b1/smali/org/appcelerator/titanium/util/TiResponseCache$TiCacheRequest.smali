.class Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;
.super Ljava/net/CacheRequest;
.source "TiResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiCacheRequest"
.end annotation


# instance fields
.field private bFile:Ljava/io/File;

.field private contentLength:J

.field private hFile:Ljava/io/File;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/io/File;Ljava/io/File;J)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "bFile"    # Ljava/io/File;
    .param p3, "hFile"    # Ljava/io/File;
    .param p4, "contentLength"    # J

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->uri:Ljava/net/URI;

    .line 156
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->bFile:Ljava/io/File;

    .line 157
    iput-object p3, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->hFile:Ljava/io/File;

    .line 158
    iput-wide p4, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->contentLength:J

    .line 159
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->bFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->contentLength:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "TiResponseCache"

    const-string v1, "Failed to add item to the cache!"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->bFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->bFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->hFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->hFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 179
    :cond_1
    return-void
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->uri:Ljava/net/URI;

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;->bFile:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;-><init>(Ljava/net/URI;Ljava/io/File;)V

    return-object v0
.end method
