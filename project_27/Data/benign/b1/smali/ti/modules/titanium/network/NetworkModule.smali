.class public Lti/modules/titanium/network/NetworkModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "NetworkModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/NetworkModule$NetInfo;,
        Lti/modules/titanium/network/NetworkModule$State;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final EVENT_CONNECTIVITY:Ljava/lang/String; = "change"

.field private static final LCAT:Ljava/lang/String; = "TiNetwork"

.field public static final NETWORK_LAN:I = 0x3

.field public static final NETWORK_MOBILE:I = 0x2

.field public static final NETWORK_NONE:I = 0x0

.field public static final NETWORK_UNKNOWN:I = 0x4

.field public static final NETWORK_USER_AGENT:Ljava/lang/String;

.field public static final NETWORK_WIFI:I = 0x1


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isListeningForConnectivity:Z

.field private lastNetInfo:Lti/modules/titanium/network/NetworkModule$NetInfo;

.field private messageHandler:Landroid/os/Handler;

.field private networkListener:Lti/modules/titanium/network/TiNetworkListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/network/NetworkModule;->DBG:Z

    .line 34
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.agent"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/NetworkModule;->NETWORK_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 81
    new-instance v0, Lti/modules/titanium/network/NetworkModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/NetworkModule$1;-><init>(Lti/modules/titanium/network/NetworkModule;)V

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->messageHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lti/modules/titanium/network/NetworkModule$NetInfo;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/NetworkModule$NetInfo;-><init>(Lti/modules/titanium/network/NetworkModule;)V

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->lastNetInfo:Lti/modules/titanium/network/NetworkModule$NetInfo;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 125
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/NetworkModule;

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->lastNetInfo:Lti/modules/titanium/network/NetworkModule$NetInfo;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/network/NetworkModule;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/NetworkModule;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 4

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 275
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 282
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-object v1

    .line 277
    :cond_1
    sget-boolean v2, Lti/modules/titanium/network/NetworkModule;->DBG:Z

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "TiNetwork"

    const-string v3, "Activity is null when trying to retrieve the connectivity service"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private networkTypeToTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 230
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 228
    :pswitch_2
    const-string v0, "MOBILE"

    goto :goto_0

    .line 229
    :pswitch_3
    const-string v0, "LAN"

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 140
    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 151
    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public getNetworkType()I
    .locals 6

    .prologue
    .line 196
    const/4 v2, 0x4

    .line 199
    .local v2, "type":I
    iget-object v3, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 200
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 204
    :cond_0
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 205
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTitanium(ZI)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 213
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 208
    .restart local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 210
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "TiNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission has been removed. Cannot determine network type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lti/modules/titanium/network/NetworkModule;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnline()Z
    .locals 5

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 161
    .local v2, "result":Z
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 162
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 165
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const/4 v2, 0x1

    .line 173
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    sget-boolean v3, Lti/modules/titanium/network/NetworkModule;->DBG:Z

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "TiNetwork"

    const-string v4, "ConnectivityManager was null"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollModule;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 133
    const-string v0, "userAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lti/modules/titanium/network/NetworkModule;->NETWORK_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Titanium/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/NetworkModule;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected manageConnectivityListener(Z)V
    .locals 2
    .param p1, "attach"    # Z

    .prologue
    .line 245
    if-eqz p1, :cond_2

    .line 246
    iget-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    if-nez v0, :cond_1

    .line 247
    const-string v0, "change"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lti/modules/titanium/network/TiNetworkListener;

    iget-object v1, p0, Lti/modules/titanium/network/NetworkModule;->messageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lti/modules/titanium/network/TiNetworkListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    .line 251
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/network/TiNetworkListener;->attach(Landroid/content/Context;)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    .line 253
    sget-boolean v0, Lti/modules/titanium/network/NetworkModule;->DBG:Z

    if-eqz v0, :cond_1

    .line 254
    const-string v0, "TiNetwork"

    const-string v1, "Resuming: adding connectivity listener"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiNetworkListener;->detach()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    .line 262
    sget-boolean v0, Lti/modules/titanium/network/NetworkModule;->DBG:Z

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "TiNetwork"

    const-string v1, "Pausing: removing connectivity listener."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected networkTypeToTitanium(ZI)I
    .locals 1
    .param p1, "online"    # Z
    .param p2, "androidType"    # I

    .prologue
    .line 177
    const/4 v0, 0x4

    .line 178
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 179
    packed-switch p2, :pswitch_data_0

    .line 186
    const/4 v0, 0x4

    .line 191
    :goto_0
    return v0

    .line 181
    :pswitch_0
    const/4 v0, 0x1

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v0, 0x2

    .line 185
    goto :goto_0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 296
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onResume(Landroid/app/Activity;)V

    .line 288
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 290
    return-void
.end method
