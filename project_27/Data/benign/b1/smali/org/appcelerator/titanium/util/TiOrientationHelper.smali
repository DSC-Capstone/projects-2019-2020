.class public Lorg/appcelerator/titanium/util/TiOrientationHelper;
.super Ljava/lang/Object;
.source "TiOrientationHelper.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiOrientationHelper"

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_LANDSCAPE_REVERSE:I = 0x4

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_PORTRAIT_REVERSE:I = 0x3

.field public static final ORIENTATION_SQUARE:I = 0x5

.field public static final ORIENTATION_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiOrientationHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertConfigToTiOrientationMode(I)I
    .locals 1
    .param p0, "configOrientationMode"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 41
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
