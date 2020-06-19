.class public Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;
.super Lorg/apache/james/mime4j/message/storage/TempStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;,
        Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;,
        Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private random:Ljava/util/Random;

.field private rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/storage/TempStorage;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->random:Ljava/util/Random;

    new-instance v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    return-object v0
.end method

.method private createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ".tmp"

    :cond_1
    const/16 v0, 0x3e8

    monitor-enter p0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/james/mime4j/message/storage/TempPath;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    if-gtz v0, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Creating temp file failed: Unable to find unique file name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;-><init>(Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating dir \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private createTempPath(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x3e8

    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/james/mime4j/message/storage/TempPath;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-gtz v0, :cond_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to mkdirs on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating dir \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v3, v1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V

    return-object v0
.end method


# virtual methods
.method public getRootTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;

    return-object v0
.end method
