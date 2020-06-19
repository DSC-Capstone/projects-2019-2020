.class public final Lbor;
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
        "Lcyanogenmod/profiles/ConnectionSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcyanogenmod/profiles/ConnectionSettings;
    .locals 1

    .prologue
    .line 145
    new-array v0, p1, [Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lbor;->a(Landroid/os/Parcel;)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lbor;->a(I)[Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    return-object v0
.end method
