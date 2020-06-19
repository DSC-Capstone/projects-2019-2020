.class Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;

    invoke-direct {v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    .line 149
    iget-object v2, v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    invoke-virtual {v2, p0}, Lcyanogenmod/app/ThemeComponent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v1, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    invoke-direct {v1, v0}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(Lcyanogenmod/app/ThemeVersion$ComponentVersion;)V

    move-object v0, v1

    .line 153
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceComponentVersions()Ljava/util/List;
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
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    sget-object v1, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    return-object v0
.end method
