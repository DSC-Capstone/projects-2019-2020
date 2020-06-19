.class public Lorg/appcelerator/kroll/common/TiConfig;
.super Ljava/lang/Object;
.source "TiConfig.java"


# static fields
.field public static DEBUG:Z

.field public static LOGD:Z

.field public static LOGV:Z

.field public static PROFILE:Z

.field public static RELEASE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sget-boolean v0, Landroid/util/Config;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    .line 22
    sget-boolean v0, Landroid/util/Config;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGV:Z

    .line 23
    sget-boolean v0, Landroid/util/Config;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    .line 24
    sget-boolean v0, Landroid/util/Config;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->RELEASE:Z

    .line 25
    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->PROFILE:Z

    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
