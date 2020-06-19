.class public final Lbot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcyanogenmod/profiles/RingModeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    .line 58
    new-array v0, p1, [Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lbot;->a(Landroid/os/Parcel;)Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lbot;->a(I)[Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v0

    return-object v0
.end method
