.class public final Lbos;
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
        "Lcyanogenmod/profiles/LockSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcyanogenmod/profiles/LockSettings;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/LockSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcyanogenmod/profiles/LockSettings;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcyanogenmod/profiles/LockSettings;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lbos;->a(Landroid/os/Parcel;)Lcyanogenmod/profiles/LockSettings;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lbos;->a(I)[Lcyanogenmod/profiles/LockSettings;

    move-result-object v0

    return-object v0
.end method
