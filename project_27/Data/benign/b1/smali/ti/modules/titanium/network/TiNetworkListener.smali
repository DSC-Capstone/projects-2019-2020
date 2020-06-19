.class public Lti/modules/titanium/network/TiNetworkListener;
.super Ljava/lang/Object;
.source "TiNetworkListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/TiNetworkListener$1;,
        Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final EXTRA_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_FAILOVER:Ljava/lang/String; = "failover"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NETWORK_TYPE_NAME:Ljava/lang/String; = "networkTypeName"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final LCAT:Ljava/lang/String; = "TiNetListener"


# instance fields
.field private connectivityIntentFilter:Landroid/content/IntentFilter;

.field private context:Landroid/content/Context;

.field private listening:Z

.field private messageHandler:Landroid/os/Handler;

.field private receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/network/TiNetworkListener;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "messageHandler"    # Landroid/os/Handler;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;-><init>(Lti/modules/titanium/network/TiNetworkListener;Lti/modules/titanium/network/TiNetworkListener$1;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    .line 98
    iput-object p1, p0, Lti/modules/titanium/network/TiNetworkListener;->messageHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->connectivityIntentFilter:Landroid/content/IntentFilter;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/TiNetworkListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiNetworkListener;

    .prologue
    .line 27
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lti/modules/titanium/network/TiNetworkListener;->DBG:Z

    return v0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    iget-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 105
    iput-object p1, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lti/modules/titanium/network/TiNetworkListener;->connectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context was not cleaned up from last release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    const-string v0, "TiNetListener"

    const-string v1, "Connectivity listener is already attached"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/network/TiNetworkListener;->receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    .line 122
    :cond_0
    return-void
.end method
