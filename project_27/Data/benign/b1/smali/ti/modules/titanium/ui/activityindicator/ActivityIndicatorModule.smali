.class public Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ActivityIndicatorModule.java"


# static fields
.field public static final DETERMINANT:I = 0x1

.field public static final DIALOG:I = 0x1

.field public static final INDETERMINANT:I

.field public static final STATUS_BAR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModule;-><init>()V

    .line 33
    return-void
.end method
