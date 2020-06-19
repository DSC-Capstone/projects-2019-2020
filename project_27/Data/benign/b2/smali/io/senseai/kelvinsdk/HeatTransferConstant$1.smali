.class final Lio/senseai/kelvinsdk/HeatTransferConstant$1;
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
        "Lio/senseai/kelvinsdk/HeatTransferConstant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2022
    new-instance v0, Lio/senseai/kelvinsdk/HeatTransferConstant;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/senseai/kelvinsdk/HeatTransferConstant;-><init>(Landroid/os/Parcel;Lio/senseai/kelvinsdk/HeatTransferConstant$1;)V

    .line 18
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    .line 1027
    new-array v0, p1, [Lio/senseai/kelvinsdk/HeatTransferConstant;

    .line 18
    return-object v0
.end method
