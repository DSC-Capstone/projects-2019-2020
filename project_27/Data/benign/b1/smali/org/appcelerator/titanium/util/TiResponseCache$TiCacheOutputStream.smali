.class Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;
.super Ljava/io/FileOutputStream;
.source "TiResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiCacheOutputStream"
.end annotation


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/io/File;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 134
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;->uri:Ljava/net/URI;

    .line 135
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 142
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;->uri:Ljava/net/URI;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiResponseCache;->access$000(Ljava/net/URI;)V

    .line 143
    return-void
.end method
