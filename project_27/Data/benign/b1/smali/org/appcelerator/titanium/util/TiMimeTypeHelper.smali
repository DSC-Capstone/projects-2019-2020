.class public Lorg/appcelerator/titanium/util/TiMimeTypeHelper;
.super Ljava/lang/Object;
.source "TiMimeTypeHelper.java"


# static fields
.field public static final EXTRA_MIMETYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_TYPE_JAVASCRIPT:Ljava/lang/String; = "text/javascript"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    .line 19
    sget-object v0, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    const-string v1, "js"

    const-string v2, "text/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "defaultExtension"    # Ljava/lang/String;

    .prologue
    .line 55
    move-object v3, p1

    .line 56
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 58
    move-object v3, v1

    :cond_0
    move-object v0, v3

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_1
    sget-object v4, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "ext":Ljava/lang/String;
    sget-object v4, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "application/octet-stream"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "defaultType"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeTypeFromFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMimeTypeFromFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "defaultType"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 30
    .local v2, "mtm":Landroid/webkit/MimeTypeMap;
    move-object v1, p1

    .line 32
    .local v1, "mimetype":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {v2, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 35
    move-object v1, v3

    .line 44
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 37
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "lowerExtension":Ljava/lang/String;
    sget-object v4, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    sget-object v4, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->EXTRA_MIMETYPES:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mimetype":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "mimetype":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isBinaryMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "parts":[Ljava/lang/String;
    aget-object p0, v0, v2

    .line 75
    const-string v3, "application/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "xml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 79
    .restart local v0    # "parts":[Ljava/lang/String;
    :cond_1
    const-string v3, "image/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "xml"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    :cond_2
    const-string v3, "audio/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "video/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 87
    goto :goto_0

    .end local v0    # "parts":[Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 89
    goto :goto_0
.end method
