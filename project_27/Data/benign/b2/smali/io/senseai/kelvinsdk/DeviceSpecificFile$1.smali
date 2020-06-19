.class final Lio/senseai/kelvinsdk/DeviceSpecificFile$1;
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
        "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2021
    new-instance v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/senseai/kelvinsdk/DeviceSpecificFile;-><init>(Landroid/os/Parcel;Lio/senseai/kelvinsdk/DeviceSpecificFile$1;)V

    .line 17
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .line 1026
    new-array v0, p1, [Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 17
    return-object v0
.end method
