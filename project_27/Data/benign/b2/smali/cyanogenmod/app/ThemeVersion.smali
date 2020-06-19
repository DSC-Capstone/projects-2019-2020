.class public Lcyanogenmod/app/ThemeVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CM11:I = 0x1

.field private static final CM12_PRE_VERSIONING:I = 0x2

.field private static final MIN_SUPPORTED_THEME_VERSION_FIELD_NAME:Ljava/lang/String; = "MIN_SUPPORTED_THEME_VERSION"

.field private static final THEME_VERSION_CLASS_NAME:Ljava/lang/String; = "android.content.ThemeVersion"

.field private static final THEME_VERSION_FIELD_NAME:Ljava/lang/String; = "THEME_VERSION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method public static getComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcyanogenmod/app/ThemeVersion;->getVersion()I

    move-result v0

    .line 66
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 68
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 69
    invoke-static {p0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public static getComponentVersions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcyanogenmod/app/ThemeVersion;->getVersion()I

    move-result v0

    .line 77
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 79
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->getDeviceComponentVersions()Ljava/util/List;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->getDeviceComponentVersions()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMinSupportedVersion()I
    .locals 2

    .prologue
    .line 52
    :try_start_0
    const-string v0, "android.content.ThemeVersion"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-string v1, "MIN_SUPPORTED_THEME_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getVersion()I
    .locals 2

    .prologue
    .line 38
    :try_start_0
    const-string v0, "android.content.ThemeVersion"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-string v1, "THEME_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 46
    :goto_0
    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
