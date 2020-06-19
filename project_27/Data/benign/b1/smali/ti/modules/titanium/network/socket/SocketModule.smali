.class public Lti/modules/titanium/network/socket/SocketModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "SocketModule.java"


# static fields
.field public static final CLOSED:I = 0x4

.field public static final CONNECTED:I = 0x2

.field private static final DBG:Z

.field public static final ERROR:I = 0x5

.field public static final INITIALIZED:I = 0x1

.field private static final LCAT:Ljava/lang/String; = "SocketModule"

.field public static final LISTENING:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/network/socket/SocketModule;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 38
    invoke-direct {p0}, Lti/modules/titanium/network/socket/SocketModule;-><init>()V

    .line 39
    return-void
.end method
