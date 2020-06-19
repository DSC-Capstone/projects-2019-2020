.class Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 7

    .prologue
    .line 191
    sget-object v2, Lcyanogenmod/app/ThemeComponent;->UNKNOWN:Lcyanogenmod/app/ThemeComponent;

    .line 192
    invoke-static {}, Lcyanogenmod/app/ThemeComponent;->values()[Lcyanogenmod/app/ThemeComponent;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 193
    iget v5, v0, Lcyanogenmod/app/ThemeComponent;->id:I

    iget v6, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    if-ne v5, v6, :cond_0

    move-object v2, v0

    .line 192
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_1
    iget v1, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    .line 199
    invoke-virtual {p0}, Landroid/content/ThemeVersion$ComponentVersion;->name()Ljava/lang/String;

    move-result-object v3

    .line 200
    iget v4, p0, Landroid/content/ThemeVersion$ComponentVersion;->minSupportedVersion:I

    .line 201
    iget v5, p0, Landroid/content/ThemeVersion$ComponentVersion;->currentVersion:I

    .line 203
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Landroid/content/ThemeVersion$ComponentVersion;->values()[Landroid/content/ThemeVersion$ComponentVersion;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 167
    invoke-static {v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v0

    .line 168
    iget-object v4, v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    invoke-virtual {v4, p0}, Lcyanogenmod/app/ThemeComponent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    :goto_1
    return-object v0

    .line 166
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDeviceComponentVersions()Ljava/util/List;
    .locals 5
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
    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {}, Landroid/content/ThemeVersion$ComponentVersion;->values()[Landroid/content/ThemeVersion$ComponentVersion;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 180
    invoke-static {v4}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-object v1
.end method
