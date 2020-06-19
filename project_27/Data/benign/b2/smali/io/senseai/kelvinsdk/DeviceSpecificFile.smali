.class Lio/senseai/kelvinsdk/DeviceSpecificFile;
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
            "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field filename:Ljava/lang/String;

.field scalar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lio/senseai/kelvinsdk/DeviceSpecificFile$1;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile$1;-><init>()V

    sput-object v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->filename:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->scalar:I

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/senseai/kelvinsdk/DeviceSpecificFile$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/DeviceSpecificFile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getScalar()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->scalar:I

    return v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->filename:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setScalar(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->scalar:I

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget v0, p0, Lio/senseai/kelvinsdk/DeviceSpecificFile;->scalar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
