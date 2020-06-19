.class public Lti/modules/titanium/platform/AndroidModule;
.super Lti/modules/titanium/platform/PlatformModule;
.source "AndroidModule.java"


# static fields
.field public static final API_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lti/modules/titanium/platform/AndroidModule;->API_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lti/modules/titanium/platform/PlatformModule;-><init>()V

    .line 16
    return-void
.end method
