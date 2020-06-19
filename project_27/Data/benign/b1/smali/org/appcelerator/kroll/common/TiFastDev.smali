.class public Lorg/appcelerator/kroll/common/TiFastDev;
.super Ljava/lang/Object;
.source "TiFastDev.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/common/TiFastDev$Session;
    }
.end annotation


# static fields
.field public static final COMMAND_EXISTS:Ljava/lang/String; = "exists"

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_HANDSHAKE:Ljava/lang/String; = "handshake"

.field public static final COMMAND_KILL:Ljava/lang/String; = "kill"

.field public static final COMMAND_LENGTH:Ljava/lang/String; = "length"

.field public static final COMMAND_RESTART:Ljava/lang/String; = "restart"

.field public static final COMMAND_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final EMULATOR_HOST:Ljava/lang/String; = "10.0.2.2"

.field private static final FASTDEV_PORT:I = 0x1f3f

.field public static final MAX_TOKEN_COUNT:I = 0x10

.field public static final RESULT_OK:Ljava/lang/String; = "OK"

.field private static final TAG:Ljava/lang/String; = "TiFastDev"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "tifastdev"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = "tmp"

.field private static final TRACE:Z

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static _instance:Lorg/appcelerator/kroll/common/TiFastDev;


# instance fields
.field protected appGuid:Ljava/lang/String;

.field protected enabled:Z

.field protected fastDevSocket:Ljava/net/Socket;

.field protected listen:Z

.field protected port:I

.field protected restarting:Z

.field protected session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

.field protected tempHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

.field protected urlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "TiFastDev"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiFastDev;->TRACE:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollApplication;)V
    .locals 3
    .param p1, "app"    # Lorg/appcelerator/kroll/KrollApplication;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    iput-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->listen:Z

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    .line 68
    iput-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    .line 83
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->getAppGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->appGuid:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->tempHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    .line 89
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->isFastDevMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v0

    .line 94
    .local v0, "deployData":Lorg/appcelerator/kroll/common/TiDeployData;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 99
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->readDeployData(Lorg/appcelerator/kroll/common/TiDeployData;)V

    .line 101
    iget-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-direct {v1, p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;-><init>(Lorg/appcelerator/kroll/common/TiFastDev;)V

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    .line 103
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->executeHandshake()V

    .line 104
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->start()V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiFastDev;->TRACE:Z

    return v0
.end method

.method public static getInstance()Lorg/appcelerator/kroll/common/TiFastDev;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    return-object v0
.end method

.method public static initFastDev(Lorg/appcelerator/kroll/KrollApplication;)V
    .locals 1
    .param p0, "app"    # Lorg/appcelerator/kroll/KrollApplication;

    .prologue
    .line 73
    new-instance v0, Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-direct {v0, p0}, Lorg/appcelerator/kroll/common/TiFastDev;-><init>(Lorg/appcelerator/kroll/KrollApplication;)V

    sput-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    .line 74
    return-void
.end method

.method public static isFastDevEnabled()Z
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/common/TiFastDev;-><init>(Lorg/appcelerator/kroll/KrollApplication;)V

    sput-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    .line 235
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiFastDev;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-boolean v0, v0, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v0, v0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v0, v0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->close()V

    .line 249
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iput-object v1, v0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    .line 252
    :cond_1
    sput-object v1, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    goto :goto_0
.end method


# virtual methods
.method protected acceptConnection()V
    .locals 4

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x1f3f

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 130
    .local v1, "server":Ljava/net/ServerSocket;
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "server":Ljava/net/ServerSocket;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 135
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showDisabledWarning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected connect()V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v2, "10.0.2.2"

    iget v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TiFastDev"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 147
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showDisabledWarning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "exists"

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendMessage([Ljava/lang/String;)[[B

    move-result-object v0

    .line 185
    .local v0, "result":[[B
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 186
    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toInt([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 189
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 186
    goto :goto_0

    :cond_1
    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 5
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "length"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendMessage([Ljava/lang/String;)[[B

    move-result-object v0

    .line 175
    .local v0, "result":[[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 176
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toInt([B)I

    move-result v1

    .line 179
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    return v0
.end method

.method public openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 194
    iget-object v7, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    monitor-enter v7

    .line 195
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 196
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "get"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendTokens([Ljava/lang/String;)Z

    .line 198
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readTokenCount()I

    move-result v4

    .line 199
    .local v4, "tokenCount":I
    if-ge v4, v11, :cond_0

    .line 200
    monitor-exit v7

    .line 226
    :goto_0
    return-object v5

    .line 203
    :cond_0
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readInt()I

    move-result v1

    .line 204
    .local v1, "length":I
    if-gtz v1, :cond_1

    .line 205
    monitor-exit v7

    goto :goto_0

    .line 225
    .end local v1    # "length":I
    .end local v4    # "tokenCount":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 211
    .restart local v1    # "length":I
    .restart local v4    # "tokenCount":I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->tempHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    const-string v8, "tifastdev"

    const-string v9, "tmp"

    invoke-virtual {v6, v8, v9}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 212
    .local v2, "tempFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v3, "tempOut":Ljava/io/FileOutputStream;
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v3, v1}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pumpCount(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 214
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 216
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 217
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 219
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "tempOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    monitor-exit v7

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected readDeployData(Lorg/appcelerator/kroll/common/TiDeployData;)V
    .locals 3
    .param p1, "deployData"    # Lorg/appcelerator/kroll/common/TiDeployData;

    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/appcelerator/kroll/common/TiDeployData;->getFastDevPort()I

    move-result v0

    iput v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    .line 111
    invoke-virtual {p1}, Lorg/appcelerator/kroll/common/TiDeployData;->getFastDevListen()Z

    move-result v0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->listen:Z

    .line 113
    iget-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->listen:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "TiFastDev"

    const-string v1, "Enabling Fastdev in listening mode..."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev;->acceptConnection()V

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 118
    const-string v0, "TiFastDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling Fastdev on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev;->connect()V

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    goto :goto_0
.end method

.method protected showDisabledWarning(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: FastDev mode is disabled. Error Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showToast(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 154
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 157
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v2

    invoke-interface {v2}, Lorg/appcelerator/kroll/KrollApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, "ctx":Landroid/content/Context;
    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 159
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    return-void
.end method

.method public toURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->urlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
