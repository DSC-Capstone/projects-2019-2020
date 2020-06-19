.class public Lorg/apache/cordova/PluginEntry;
.super Ljava/lang/Object;
.source "PluginEntry.java"


# instance fields
.field public onload:Z

.field public plugin:Lorg/apache/cordova/CordovaPlugin;

.field public pluginClass:Ljava/lang/String;

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "pluginClass"    # Ljava/lang/String;
    .param p3, "onload"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->service:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->pluginClass:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginEntry;->onload:Z

    .line 63
    iput-object p1, p0, Lorg/apache/cordova/PluginEntry;->service:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/apache/cordova/PluginEntry;->pluginClass:Ljava/lang/String;

    .line 65
    iput-boolean p3, p0, Lorg/apache/cordova/PluginEntry;->onload:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/CordovaPlugin;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "plugin"    # Lorg/apache/cordova/CordovaPlugin;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->service:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->pluginClass:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 53
    iput-boolean v1, p0, Lorg/apache/cordova/PluginEntry;->onload:Z

    .line 75
    iput-object p1, p0, Lorg/apache/cordova/PluginEntry;->service:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginEntry;->pluginClass:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lorg/apache/cordova/PluginEntry;->onload:Z

    .line 79
    return-void
.end method

.method private getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "c":Ljava/lang/Class;
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    :cond_0
    return-object v0
.end method

.method private isCordovaPlugin(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-class v0, Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;)Lorg/apache/cordova/CordovaPlugin;
    .locals 5
    .param p1, "webView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "ctx"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 88
    iget-object v2, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 103
    :goto_0
    return-object v2

    .line 93
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/PluginEntry;->pluginClass:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/cordova/PluginEntry;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "c":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/apache/cordova/PluginEntry;->isCordovaPlugin(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/CordovaPlugin;

    iput-object v2, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 96
    iget-object v2, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v2, p2, p1}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 97
    iget-object v2, p0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error adding plugin "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/cordova/PluginEntry;->pluginClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
