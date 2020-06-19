.class Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/message/storage/TempPath;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempPath"
.end annotation


# instance fields
.field private path:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createTempFile()Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-static {v0, p0, v1, v1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath(Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 0

    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
