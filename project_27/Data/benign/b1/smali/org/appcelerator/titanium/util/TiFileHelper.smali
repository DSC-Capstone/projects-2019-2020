.class public Lorg/appcelerator/titanium/util/TiFileHelper;
.super Ljava/lang/Object;
.source "TiFileHelper.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiFileHlpr"

.field private static final MACOSX_PREFIX:Ljava/lang/String; = "__MACOSX"

.field public static final RESOURCE_ROOT_ASSETS:Ljava/lang/String; = "file:///android_asset/Resources"

.field public static final SD_CARD_PREFIX:Ljava/lang/String; = "/sdcard/Ti.debug"

.field public static final TI_DIR:Ljava/lang/String; = "tiapp"

.field public static final TI_DIR_JS:Ljava/lang/String; = "tijs"

.field private static final TI_RESOURCE_PREFIX:Ljava/lang/String; = "ti:"

.field private static _instance:Lorg/appcelerator/titanium/util/TiFileHelper;

.field private static foundResourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static notFoundResourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static resourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static systemIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

.field private softContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    .line 72
    new-instance v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    .line 73
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    .line 79
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    .line 85
    :cond_1
    const-string v1, "tiapp"

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    .line 88
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_camera"

    const v3, 0x1080037

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_search"

    const v3, 0x108004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_add"

    const v3, 0x1080033

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_delete"

    const v3, 0x108003c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_play"

    const v3, 0x1080024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_ff"

    const v3, 0x1080021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_pause"

    const v3, 0x1080023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_rew"

    const v3, 0x1080026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_edit"

    const v3, 0x108003e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_close_clear_cancel"

    const v3, 0x1080038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_save"

    const v3, 0x108004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_help"

    const v3, 0x1080040

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_next"

    const v3, 0x1080022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_preferences"

    const v3, 0x1080049

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_previous"

    const v3, 0x1080025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_revert"

    const v3, 0x108004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_send"

    const v3, 0x1080050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_share"

    const v3, 0x1080052

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_view"

    const v3, 0x1080057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_zoom"

    const v3, 0x1080059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 125
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    return-object v0
.end method

.method private getRootDir(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    const-string v1, ""

    .line 652
    .local v1, "root":Ljava/lang/String;
    const/4 v3, 0x0

    .line 653
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 654
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 657
    const-string v4, "__MACOSX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 660
    const-string v4, "tiapp.xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 661
    const-string v4, "\\/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "segments":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "segments":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 665
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "segments":[Ljava/lang/String;
    :cond_2
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0
.end method

.method private getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private titaniumPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 638
    const-string v0, ""

    if-eq p1, v0, :cond_0

    const-string v0, "tiapp.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Resources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    .local p3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->titaniumPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "files":[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_2

    .line 619
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 620
    aget-object v2, v0, v1

    .line 621
    .local v2, "newPath":Ljava/lang/String;
    move-object v3, p2

    .line 622
    .local v3, "todo":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    :goto_1
    invoke-direct {p0, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->titaniumPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-direct {p0, p1, v3, p3}, Lorg/appcelerator/titanium/util/TiFileHelper;->walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 619
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 635
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "newPath":Ljava/lang/String;
    .end local v3    # "todo":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V
    .locals 7
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "dirs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 597
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 598
    array-length v3, v1

    .line 599
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 600
    aget-object v0, v1, v2

    .line 601
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-direct {p0, v0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V

    .line 599
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_0
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v4, :cond_1

    .line 606
    const-string v4, "TiFileHlpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 612
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_2
    return-void
.end method


# virtual methods
.method public deployFromAssets(Ljava/io/File;)V
    .locals 20
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 390
    .local v6, "ctx":Landroid/content/Context;
    if-eqz v6, :cond_6

    .line 391
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v15, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 393
    .local v2, "am":Landroid/content/res/AssetManager;
    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1, v15}, Lorg/appcelerator/titanium/util/TiFileHelper;->walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 396
    invoke-virtual/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V

    .line 399
    const/4 v3, 0x0

    .line 400
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 401
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x1fa0

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 403
    .local v5, "buf":[B
    :try_start_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 404
    .local v13, "len":I
    const/4 v12, 0x0

    .local v12, "i":I
    move-object v11, v10

    .local v11, "fos":Ljava/lang/Object;
    move-object v4, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v4, "bis":Ljava/lang/Object;
    :goto_0
    if-ge v12, v13, :cond_5

    .line 405
    :try_start_1
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 406
    .local v14, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 408
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    const/16 v18, 0x1fa0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v8, Ljava/io/File;

    .end local v4    # "bis":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v8, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .local v8, "df":Ljava/io/File;
    sget-boolean v17, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v17, :cond_0

    .line 411
    const-string v17, "TiFileHlpr"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Copying to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 416
    .end local v11    # "fos":Ljava/lang/Object;
    .local v16, "read":I
    :goto_1
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 417
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 431
    .end local v8    # "df":Ljava/io/File;
    .end local v9    # "f":Ljava/io/File;
    .end local v12    # "i":I
    .end local v13    # "len":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "read":I
    :catchall_0
    move-exception v17

    :goto_2
    if-eqz v3, :cond_1

    .line 433
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 437
    :goto_3
    const/4 v3, 0x0

    .line 439
    :cond_1
    if-eqz v10, :cond_2

    .line 441
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 445
    :goto_4
    const/4 v10, 0x0

    :cond_2
    throw v17

    .line 420
    .restart local v8    # "df":Ljava/io/File;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v12    # "i":I
    .restart local v13    # "len":I
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v16    # "read":I
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 421
    const/4 v3, 0x0

    .line 422
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 423
    const/4 v10, 0x0

    .line 404
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "df":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "read":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object v11, v10

    .restart local v11    # "fos":Ljava/lang/Object;
    move-object v4, v3

    .restart local v4    # "bis":Ljava/lang/Object;
    goto/16 :goto_0

    .line 425
    :cond_4
    :try_start_7
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v7, "d":Ljava/io/File;
    const-string v17, "TiFileHlpr"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Creating directory: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v10, v11

    .end local v11    # "fos":Ljava/lang/Object;
    .local v10, "fos":Ljava/lang/Object;
    move-object v3, v4

    .end local v4    # "bis":Ljava/lang/Object;
    .local v3, "bis":Ljava/lang/Object;
    goto :goto_5

    .line 431
    .end local v3    # "bis":Ljava/lang/Object;
    .end local v7    # "d":Ljava/io/File;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fos":Ljava/lang/Object;
    .end local v14    # "path":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/lang/Object;
    .restart local v11    # "fos":Ljava/lang/Object;
    :cond_5
    if-eqz v4, :cond_7

    .line 433
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 437
    :goto_6
    const/4 v3, 0x0

    .line 439
    .end local v4    # "bis":Ljava/lang/Object;
    :goto_7
    if-eqz v11, :cond_6

    .line 441
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 445
    :goto_8
    const/4 v10, 0x0

    .line 449
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "buf":[B
    .end local v11    # "fos":Ljava/lang/Object;
    .end local v12    # "i":I
    .end local v13    # "len":I
    .end local v15    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    return-void

    .line 434
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "bis":Ljava/lang/Object;
    .restart local v5    # "buf":[B
    .restart local v11    # "fos":Ljava/lang/Object;
    .restart local v12    # "i":I
    .restart local v13    # "len":I
    .restart local v15    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    goto :goto_6

    .line 442
    .end local v4    # "bis":Ljava/lang/Object;
    :catch_1
    move-exception v17

    goto :goto_8

    .line 434
    .end local v11    # "fos":Ljava/lang/Object;
    .end local v12    # "i":I
    .end local v13    # "len":I
    .local v3, "bis":Ljava/io/BufferedInputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v18

    goto :goto_3

    .line 442
    :catch_3
    move-exception v18

    goto :goto_4

    .line 431
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bis":Ljava/lang/Object;
    .restart local v11    # "fos":Ljava/lang/Object;
    .restart local v12    # "i":I
    .restart local v13    # "len":I
    :catchall_1
    move-exception v17

    move-object v10, v11

    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v4    # "bis":Ljava/lang/Object;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v14    # "path":Ljava/lang/String;
    :catchall_2
    move-exception v17

    move-object v10, v11

    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "path":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/lang/Object;
    :cond_7
    move-object v3, v4

    .end local v4    # "bis":Ljava/lang/Object;
    .local v3, "bis":Ljava/lang/Object;
    goto :goto_7
.end method

.method public deployFromZip(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .param p1, "fname"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V

    .line 456
    const/4 v9, 0x0

    .line 457
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 458
    .local v8, "ze":Ljava/util/zip/ZipEntry;
    const/16 v10, 0x1fa0

    new-array v0, v10, [B

    .line 462
    .local v0, "buf":[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v9

    .line 463
    invoke-direct {p0, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;->getRootDir(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "root":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 465
    .local v7, "rootLen":I
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 467
    sget-boolean v10, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v10, :cond_0

    .line 468
    const-string v10, "TiFileHlpr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Zip file root: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v9

    .line 473
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 474
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "name":Ljava/lang/String;
    const-string v10, "__MACOSX"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 476
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 516
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "root":Ljava/lang/String;
    .end local v7    # "rootLen":I
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_1

    .line 518
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 521
    :cond_1
    :goto_1
    throw v10

    .line 480
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "root":Ljava/lang/String;
    .restart local v7    # "rootLen":I
    :cond_2
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 482
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 483
    sget-boolean v10, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v10, :cond_3

    .line 484
    const-string v10, "TiFileHlpr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extracting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_3
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 487
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v1, "d":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 489
    sget-boolean v10, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v10, :cond_4

    .line 490
    const-string v10, "TiFileHlpr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Created directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v1    # "d":Ljava/io/File;
    :cond_4
    :goto_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 494
    :cond_5
    const/4 v2, 0x0

    .line 496
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 497
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 498
    .local v5, "read":I
    :goto_3
    :try_start_4
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_7

    .line 499
    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 502
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "read":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v2, :cond_6

    .line 504
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 507
    :cond_6
    :goto_5
    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 502
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "read":I
    :cond_7
    if-eqz v3, :cond_4

    .line 504
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 505
    :catch_0
    move-exception v10

    goto :goto_2

    .line 516
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "read":I
    :cond_8
    if-eqz v9, :cond_9

    .line 518
    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 524
    :cond_9
    :goto_6
    return-void

    .line 505
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "name":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_5

    .line 519
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "name":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_6

    .end local v6    # "root":Ljava/lang/String;
    .end local v7    # "rootLen":I
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .line 502
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "root":Ljava/lang/String;
    .restart local v7    # "rootLen":I
    :catchall_2
    move-exception v10

    goto :goto_4
.end method

.method public getDataDirectory(Z)Ljava/io/File;
    .locals 5
    .param p1, "privateStorage"    # Z

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "f":Ljava/io/File;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 577
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 579
    if-eqz p1, :cond_1

    .line 581
    const-string v3, "appdata"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 593
    :cond_0
    :goto_0
    return-object v1

    .line 585
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 586
    .local v2, "storageDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public getResourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v0, "file:///android_asset/Resources"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, "result":Ljava/io/File;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 564
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 566
    const-string v2, "TiFileHlpr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempFile: Directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist. Call to File.createTempFile() will fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    const-string v2, "tia"

    invoke-static {v2, p2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 570
    :cond_1
    return-object v1
.end method

.method public getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "result":Ljava/io/File;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 553
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 556
    :cond_0
    return-object v1
.end method

.method public getTitaniumResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->isTitaniumResource(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 328
    const-string v6, "TiFileHlpr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "malformed titanium resource url, resource not loaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v6, 0x0

    .line 363
    .end local v3    # "parts":[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 331
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    aget-object v5, v3, v6

    .line 332
    .local v5, "section":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v4, v3, v6

    .line 334
    .local v4, "resid":Ljava/lang/String;
    const-string v6, "ti:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v6, Lorg/appcelerator/titanium/util/TiFileHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/org/appcelerator/titanium/res/drawable/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 338
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 342
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "resid":Ljava/lang/String;
    .end local v5    # "section":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v6, v0

    .line 363
    goto :goto_0

    .line 340
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "parts":[Ljava/lang/String;
    .restart local v4    # "resid":Ljava/lang/String;
    .restart local v5    # "section":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 342
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :cond_2
    :goto_2
    throw v6

    .line 348
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v6, "Sys"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 349
    sget-object v6, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 350
    .local v1, "id":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 351
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 353
    :cond_4
    const-string v6, "TiFileHlpr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Drawable not found for system id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_5
    const-string v6, "TiFileHlpr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown section identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "resid":Ljava/lang/String;
    .end local v5    # "section":Ljava/lang/String;
    :cond_6
    const-string v6, "TiFileHlpr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring non titanium resource string id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "parts":[Ljava/lang/String;
    .restart local v4    # "resid":Ljava/lang/String;
    .restart local v5    # "section":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public isTitaniumResource(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "result":Z
    if-eqz p1, :cond_0

    const-string v1, "ti:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 318
    :cond_0
    return v0
.end method

.method public joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pre"    # Ljava/lang/String;
    .param p2, "post"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 376
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 381
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .param p3, "checkForNinePatch"    # Z

    .prologue
    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 260
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 309
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 267
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 268
    const-string v6, ".png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    const-string v6, ".9.png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "apath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".9.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 274
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 275
    if-eqz v5, :cond_1

    .line 276
    move-object p1, v0

    .line 285
    .end local v0    # "apath":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 286
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v5

    .line 288
    :cond_2
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 289
    .local v1, "b":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    invoke-virtual {v6, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->process(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 300
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 302
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    move-object v3, v2

    .line 309
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 278
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "apath":Ljava/lang/String;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 279
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    sget-boolean v6, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 280
    const-string v6, "TiFileHlpr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 297
    .end local v0    # "apath":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 298
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "TiFileHlpr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    if-eqz v5, :cond_4

    .line 302
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 303
    :catch_2
    move-exception v6

    goto :goto_3

    .line 291
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v5

    .line 292
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 293
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 294
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v3

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 300
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    .line 302
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 305
    :cond_6
    :goto_4
    throw v6

    .line 303
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v1    # "b":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v7

    goto :goto_4
.end method

.method public openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 28
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v13, 0x0

    .line 133
    .local v13, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 134
    .local v7, "context":Landroid/content/Context;
    if-eqz v7, :cond_2

    .line 135
    invoke-virtual/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->isTitaniumResource(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 136
    const-string v24, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, "parts":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 138
    const-string v24, "TiFileHlpr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "malformed titanium resource url, resource not loaded: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v20, 0x0

    .line 247
    .end local v16    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v20

    .line 142
    .restart local v16    # "parts":[Ljava/lang/String;
    :cond_1
    const/16 v24, 0x0

    aget-object v21, v16, v24

    .line 143
    .local v21, "titanium":Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v19, v16, v24

    .line 144
    .local v19, "section":Ljava/lang/String;
    const/16 v24, 0x2

    aget-object v18, v16, v24

    .line 146
    .local v18, "resid":Ljava/lang/String;
    const-string v24, "ti:"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 147
    const-class v24, Lorg/appcelerator/titanium/util/TiFileHelper;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "/org/appcelerator/titanium/res/drawable/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".png"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .end local v16    # "parts":[Ljava/lang/String;
    .end local v18    # "resid":Ljava/lang/String;
    .end local v19    # "section":Ljava/lang/String;
    .end local v21    # "titanium":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v20, v13

    .line 247
    goto :goto_0

    .line 148
    .restart local v16    # "parts":[Ljava/lang/String;
    .restart local v18    # "resid":Ljava/lang/String;
    .restart local v19    # "section":Ljava/lang/String;
    .restart local v21    # "titanium":Ljava/lang/String;
    :cond_3
    const-string v24, "Sys"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 149
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 150
    .local v12, "id":Ljava/lang/Integer;
    if-eqz v12, :cond_4

    .line 151
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    goto :goto_1

    .line 153
    :cond_4
    const-string v24, "TiFileHlpr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Drawable not found for system id: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v12    # "id":Ljava/lang/Integer;
    :cond_5
    const-string v24, "TiFileHlpr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown section identifier: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v16    # "parts":[Ljava/lang/String;
    .end local v18    # "resid":Ljava/lang/String;
    .end local v19    # "section":Ljava/lang/String;
    .end local v21    # "titanium":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 160
    :try_start_0
    new-instance v23, Ljava/net/URI;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 161
    .local v23, "uri":Ljava/net/URI;
    invoke-static/range {v23 .. v23}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 162
    invoke-static/range {v23 .. v23}, Lorg/appcelerator/titanium/util/TiResponseCache;->openCachedStream(Ljava/net/URI;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v20

    .line 163
    .local v20, "stream":Ljava/io/InputStream;
    if-nez v20, :cond_0

    .line 171
    .end local v20    # "stream":Ljava/io/InputStream;
    .end local v23    # "uri":Ljava/net/URI;
    :cond_7
    :goto_2
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v22, "u":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    .line 173
    .local v15, "lis":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 175
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v24, 0x2000

    move/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 177
    .local v8, "count":I
    const/16 v24, 0x2000

    :try_start_2
    move/from16 v0, v24

    new-array v6, v0, [B

    .line 179
    .local v6, "buf":[B
    :goto_3
    invoke-virtual {v15, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v8, v0, :cond_a

    .line 180
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v6, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 185
    .end local v6    # "buf":[B
    .end local v13    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 187
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "count":I
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v24, "TiFileHlpr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Problem pulling image data from "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v24

    :goto_5
    if-eqz v15, :cond_8

    .line 192
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 193
    const/4 v15, 0x0

    .line 198
    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 200
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 201
    const/4 v4, 0x0

    .line 204
    :cond_9
    :goto_7
    throw v24

    .line 183
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buf":[B
    .restart local v8    # "count":I
    .restart local v13    # "is":Ljava/io/InputStream;
    :cond_a
    :try_start_6
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .end local v13    # "is":Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    .restart local v13    # "is":Ljava/io/InputStream;
    if-eqz v15, :cond_b

    .line 192
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 193
    const/4 v15, 0x0

    .line 198
    :cond_b
    :goto_8
    if-eqz v5, :cond_15

    .line 200
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 201
    const/4 v4, 0x0

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 202
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v24

    move-object v4, v5

    .line 204
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 207
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buf":[B
    .end local v8    # "count":I
    .end local v15    # "lis":Ljava/io/InputStream;
    .end local v22    # "u":Ljava/net/URL;
    :cond_c
    const-string v24, "file:///android_asset/Resources"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 208
    const-string v24, "file:///android_asset/"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v14

    .line 209
    .local v14, "len":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    const/4 v10, 0x0

    .line 212
    .local v10, "found":Z
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 213
    const/4 v10, 0x1

    .line 233
    :cond_d
    :goto_9
    if-eqz v10, :cond_2

    .line 234
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    goto/16 :goto_1

    .line 214
    :cond_e
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 215
    const/16 v24, 0x0

    const-string v25, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "base":Ljava/lang/String;
    sget-object v25, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    monitor-enter v25

    .line 218
    :try_start_9
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 219
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, "paths":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_f

    .line 221
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2f

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v17, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 223
    :cond_f
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 225
    const/4 v10, 0x1

    .line 228
    .end local v11    # "i":I
    .end local v17    # "paths":[Ljava/lang/String;
    :cond_10
    if-nez v10, :cond_11

    .line 229
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_11
    monitor-exit v25

    goto/16 :goto_9

    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v24

    .line 236
    .end local v3    # "base":Ljava/lang/String;
    .end local v10    # "found":Z
    .end local v14    # "len":I
    :cond_12
    const-string v24, "/sdcard/Ti.debug"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 237
    new-instance v13, Ljava/io/FileInputStream;

    .end local v13    # "is":Ljava/io/InputStream;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v13    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 238
    :cond_13
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 239
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v22    # "u":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    .line 241
    goto/16 :goto_1

    .line 242
    .end local v22    # "u":Ljava/net/URL;
    :cond_14
    const-string v24, "Resources"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    goto/16 :goto_1

    .line 194
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buf":[B
    .restart local v8    # "count":I
    .restart local v15    # "lis":Ljava/io/InputStream;
    .restart local v22    # "u":Ljava/net/URL;
    :catch_2
    move-exception v24

    goto/16 :goto_8

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buf":[B
    .end local v8    # "count":I
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v25

    goto/16 :goto_6

    .line 202
    :catch_4
    move-exception v25

    goto/16 :goto_7

    .line 190
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "count":I
    :catchall_2
    move-exception v24

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 185
    .end local v8    # "count":I
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v9

    goto/16 :goto_4

    .line 168
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "lis":Ljava/io/InputStream;
    .end local v22    # "u":Ljava/net/URL;
    :catch_6
    move-exception v24

    goto/16 :goto_2

    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buf":[B
    .restart local v8    # "count":I
    .restart local v15    # "lis":Ljava/io/InputStream;
    .restart local v22    # "u":Ljava/net/URL;
    :cond_15
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method public wipeDirectoryTree(Ljava/io/File;)V
    .locals 7
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 528
    new-instance v1, Ljava/util/TreeSet;

    new-instance v4, Lorg/appcelerator/titanium/util/TiFileHelper$1;

    invoke-direct {v4, p0}, Lorg/appcelerator/titanium/util/TiFileHelper$1;-><init>(Lorg/appcelerator/titanium/util/TiFileHelper;)V

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 534
    .local v1, "dirs":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V

    .line 536
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 537
    .local v0, "d":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, "fn":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .local v2, "f":Ljava/io/File;
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 541
    const-string v4, "TiFileHlpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting Dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 545
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fn":Ljava/lang/String;
    :cond_1
    return-void
.end method
