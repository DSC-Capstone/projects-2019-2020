.class public Lorg/appcelerator/titanium/io/TiFileFactory;
.super Ljava/lang/Object;
.source "TiFileFactory.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiFileFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/io/TiFileFactory;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "stream"    # Z

    .prologue
    .line 26
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 27
    .local v0, "parts":[Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    return-object v1
.end method

.method public static createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 10
    .param p0, "parts"    # [Ljava/lang/String;
    .param p1, "stream"    # Z

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    aget-object v2, p0, v7

    .line 35
    .local v2, "initial":Ljava/lang/String;
    sget-boolean v4, Lorg/appcelerator/titanium/io/TiFileFactory;->DBG:Z

    if-eqz v4, :cond_0

    .line 36
    const-string v4, "TiFileFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting initial from parts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    const-string v4, "app://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v1, Lorg/appcelerator/titanium/io/TiResourceFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-direct {v1, v3}, Lorg/appcelerator/titanium/io/TiResourceFile;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    :goto_0
    return-object v1

    .line 43
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    const-string v4, "file:///android_asset/Resources/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    new-instance v1, Lorg/appcelerator/titanium/io/TiResourceFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-direct {v1, v3}, Lorg/appcelerator/titanium/io/TiResourceFile;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto :goto_0

    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    const-string v4, "appdata://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 48
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_3

    .line 52
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Lorg/appcelerator/titanium/io/TiFileFactory;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "f":Ljava/io/File;
    new-instance v1, Lorg/appcelerator/titanium/io/TiFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appdata://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4, p1}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 56
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto :goto_0

    .end local v0    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_4
    const-string v4, "appdata-private://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {v8}, Lorg/appcelerator/titanium/io/TiFileFactory;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .restart local v0    # "f":Ljava/io/File;
    new-instance v1, Lorg/appcelerator/titanium/io/TiFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appdata-private://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4, p1}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 61
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto/16 :goto_0

    .end local v0    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    new-instance v1, Lorg/appcelerator/titanium/io/TiFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 65
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto/16 :goto_0

    .end local v3    # "path":Ljava/lang/String;
    :cond_6
    const-string v4, "content://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v1, Lorg/appcelerator/titanium/io/TitaniumBlob;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/appcelerator/titanium/io/TitaniumBlob;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto/16 :goto_0

    .end local v3    # "path":Ljava/lang/String;
    :cond_7
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 70
    const-string v3, ""

    .line 72
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->insertBefore(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v1, Lorg/appcelerator/titanium/io/TiFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 74
    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto/16 :goto_0

    .line 75
    .end local v3    # "path":Ljava/lang/String;
    :cond_8
    const-string v3, ""

    .line 76
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p0}, Lorg/appcelerator/titanium/io/TiFileFactory;->insertBefore(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/io/TiFileFactory;->formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {v8}, Lorg/appcelerator/titanium/io/TiFileFactory;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .restart local v0    # "f":Ljava/io/File;
    new-instance v1, Lorg/appcelerator/titanium/io/TiFile;

    .end local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appdata-private://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4, p1}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .restart local v1    # "file":Lorg/appcelerator/titanium/io/TiBaseFile;
    goto/16 :goto_0
.end method

.method private static formPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;

    .prologue
    .line 95
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_0
    const/4 v0, 0x1

    .local v0, "c":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 101
    aget-object v1, p1, v0

    .line 102
    .local v1, "part":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "part":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public static getDataDirectory(Z)Ljava/io/File;
    .locals 2
    .param p0, "privateStorage"    # Z

    .prologue
    .line 113
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static insertBefore(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;

    .prologue
    .line 85
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 86
    .local v1, "p":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 88
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v1
.end method

.method public static isLocalScheme(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 120
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v3, "app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "appdata"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "appdata-private"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const/4 v2, 0x0

    goto :goto_0
.end method
