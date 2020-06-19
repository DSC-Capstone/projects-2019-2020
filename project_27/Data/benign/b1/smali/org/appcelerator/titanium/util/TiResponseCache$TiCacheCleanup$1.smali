.class Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup$1;
.super Ljava/lang/Object;
.source "TiResponseCache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup$1;->this$0:Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, ".hdr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
