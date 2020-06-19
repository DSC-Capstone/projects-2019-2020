.class final Lio/senseai/kelvinsdk/DeviceObject$1;
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
        "Lio/senseai/kelvinsdk/DeviceObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2147
    new-instance v0, Lio/senseai/kelvinsdk/DeviceObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/senseai/kelvinsdk/DeviceObject;-><init>(Landroid/os/Parcel;Lio/senseai/kelvinsdk/DeviceObject$1;)V

    .line 143
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    .line 1152
    new-array v0, p1, [Lio/senseai/kelvinsdk/DeviceObject;

    .line 143
    return-object v0
.end method
