.class Lio/senseai/kelvinsdk/HeatTransferConstant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/senseai/kelvinsdk/HeatTransferConstant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field K:Ljava/lang/String;

.field r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lio/senseai/kelvinsdk/HeatTransferConstant$1;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/HeatTransferConstant$1;-><init>()V

    sput-object v0, Lio/senseai/kelvinsdk/HeatTransferConstant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->r:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->K:Ljava/lang/String;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/senseai/kelvinsdk/HeatTransferConstant$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/HeatTransferConstant;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->r:Ljava/lang/String;

    return-object v0
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->K:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setR(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->r:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lio/senseai/kelvinsdk/HeatTransferConstant;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
