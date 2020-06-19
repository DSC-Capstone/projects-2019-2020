.class public Lorg/appcelerator/kroll/common/TiDeployData;
.super Ljava/lang/Object;
.source "TiDeployData.java"


# static fields
.field private static final DBG:Z

.field protected static final DEBUGGER_ENABLED:Ljava/lang/String; = "debuggerEnabled"

.field protected static final DEBUGGER_PORT:Ljava/lang/String; = "debuggerPort"

.field protected static final FASTDEV_LISTEN:Ljava/lang/String; = "fastdevListen"

.field protected static final FASTDEV_PORT:Ljava/lang/String; = "fastdevPort"

.field private static final TAG:Ljava/lang/String; = "TiDeployData"


# instance fields
.field private deployData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiDeployData;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "extStorage":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "deploy.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v0, "deployJson":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiDeployData;->readDeployData(Ljava/io/File;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getDebuggerPort()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 84
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "debuggerPort"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFastDevListen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "fastdevListen"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFastDevPort()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 96
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "fastdevPort"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isDebuggerEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "debuggerEnabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected readDeployData(Ljava/io/File;)V
    .locals 5
    .param p1, "deployJson"    # Ljava/io/File;

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    .local v1, "stream":Ljava/io/FileInputStream;
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    .line 55
    sget-boolean v2, Lorg/appcelerator/kroll/common/TiDeployData;->DBG:Z

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "TiDeployData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read deploy data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "TiDeployData"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "TiDeployData"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
