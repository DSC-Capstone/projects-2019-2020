.class public Lti/modules/titanium/filesystem/FilesystemModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "FilesystemModule.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiFilesystem"

.field public static final MODE_APPEND:I = 0x2

.field public static final MODE_READ:I = 0x0

.field public static final MODE_WRITE:I = 0x1

.field private static RESOURCES_DIR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/filesystem/FilesystemModule;->DBG:Z

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app://"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/filesystem/FilesystemModule;->RESOURCES_DIR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 43
    invoke-direct {p0}, Lti/modules/titanium/filesystem/FilesystemModule;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public createTempDirectory(Lorg/appcelerator/kroll/KrollInvocation;)Lti/modules/titanium/filesystem/FileProxy;
    .locals 6
    .param p1, "invocation"    # Lorg/appcelerator/kroll/KrollInvocation;

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, "tmpdir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 66
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 67
    .local v2, "parts":[Ljava/lang/String;
    new-instance v4, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getSourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4
.end method

.method public createTempFile(Lorg/appcelerator/kroll/KrollInvocation;)Lti/modules/titanium/filesystem/FileProxy;
    .locals 6
    .param p1, "invocation"    # Lorg/appcelerator/kroll/KrollInvocation;

    .prologue
    .line 50
    :try_start_0
    const-string v3, "tifile"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 51
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 52
    .local v2, "parts":[Ljava/lang/String;
    new-instance v3, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getSourceUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "parts":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "TiFilesystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create tmp file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getApplicationDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "appdata-private://"

    return-object v0
.end method

.method public getApplicationDirectory()Lti/modules/titanium/filesystem/FileProxy;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "appdata://"

    return-object v0
.end method

.method public getFile(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Lti/modules/titanium/filesystem/FileProxy;
    .locals 3
    .param p1, "invocation"    # Lorg/appcelerator/kroll/KrollInvocation;
    .param p2, "parts"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "sparts":[Ljava/lang/String;
    new-instance v1, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public getLineEnding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "app://"

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public getTempDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 111
    .local v0, "tiApplication":Lorg/appcelerator/titanium/TiApplication;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->getTempDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isExternalStoragePresent()Z
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openStream(Lorg/appcelerator/kroll/KrollInvocation;I[Ljava/lang/Object;)Lti/modules/titanium/stream/FileStreamProxy;
    .locals 4
    .param p1, "invocation"    # Lorg/appcelerator/kroll/KrollInvocation;
    .param p2, "mode"    # I
    .param p3, "parts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "sparts":[Ljava/lang/String;
    new-instance v0, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    .local v0, "fileProxy":Lti/modules/titanium/filesystem/FileProxy;
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->open(IZ)V

    .line 133
    new-instance v2, Lti/modules/titanium/stream/FileStreamProxy;

    invoke-direct {v2, v0}, Lti/modules/titanium/stream/FileStreamProxy;-><init>(Lorg/appcelerator/titanium/TiFileProxy;)V

    return-object v2
.end method
