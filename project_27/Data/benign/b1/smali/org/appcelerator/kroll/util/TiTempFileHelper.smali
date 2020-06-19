.class public Lorg/appcelerator/kroll/util/TiTempFileHelper;
.super Ljava/lang/Object;
.source "TiTempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEFAULT_CLEAN_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TiTempFileHelper"

.field public static final TEMPDIR:Ljava/lang/String; = "_tmp"


# instance fields
.field private appPackageName:Ljava/lang/String;

.field protected createdThisSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private internalCacheDir:Ljava/io/File;

.field private previousExternalStorageState:Ljava/lang/String;

.field protected tempDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->appPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->internalCacheDir:Ljava/io/File;

    .line 50
    invoke-direct {p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->updateTempDir()V

    .line 51
    return-void
.end method

.method private updateTempDir()V
    .locals 7

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "extState":Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->previousExternalStorageState:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 176
    .local v2, "extStorage":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "Android"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v0, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->appPackageName:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "cache"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v3, "externalCacheDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "_tmp"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    .line 185
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v2    # "extStorage":Ljava/io/File;
    .end local v3    # "externalCacheDir":Ljava/io/File;
    :goto_0
    iget-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    iget-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 190
    :cond_0
    iput-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->previousExternalStorageState:Ljava/lang/String;

    .line 191
    return-void

    .line 181
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->internalCacheDir:Ljava/io/File;

    const-string v6, "_tmp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->updateTempDir()V

    .line 63
    iget-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-static {p1, p2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->excludeFileOnCleanup(Ljava/io/File;)V

    .line 65
    return-object v0
.end method

.method protected doCleanTempDir()V
    .locals 9

    .prologue
    .line 138
    iget-object v6, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 139
    const-string v6, "TiTempFileHelper"

    const-string v7, "The temp directory doesn\'t exist, skipping cleanup"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 143
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "absolutePath":Ljava/lang/String;
    iget-object v7, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    monitor-enter v7

    .line 145
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    monitor-exit v7

    .line 142
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    sget-boolean v6, Lorg/appcelerator/kroll/util/TiTempFileHelper;->DBG:Z

    if-eqz v6, :cond_3

    .line 151
    const-string v6, "TiTempFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting temporary file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TiTempFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public excludeFileOnCleanup(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v1

    .line 134
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->updateTempDir()V

    .line 164
    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    return-object v0
.end method

.method public scheduleCleanTempDir()V
    .locals 3

    .prologue
    .line 78
    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->scheduleCleanTempDir(JLjava/util/concurrent/TimeUnit;)V

    .line 79
    return-void
.end method

.method public scheduleCleanTempDir(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 88
    iget-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const-string v1, "TiTempFileHelper"

    const-string v2, "The external temp directory doesn\'t exist, skipping cleanup"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 95
    .local v0, "service":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;

    invoke-direct {v1, p0, v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;-><init>(Lorg/appcelerator/kroll/util/TiTempFileHelper;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
