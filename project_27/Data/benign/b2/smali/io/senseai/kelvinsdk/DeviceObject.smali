.class Lio/senseai/kelvinsdk/DeviceObject;
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
            "Lio/senseai/kelvinsdk/DeviceObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:Ljava/lang/String;
    .annotation runtime Lavj;
        a = "id"
    .end annotation
.end field

.field private _v:I

.field private ambient:Lio/senseai/kelvinsdk/HeatTransferConstant;

.field private deviceSpecificFiles:Ljava/util/List;
    .annotation runtime Lavj;
        a = "files"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private skin:Lio/senseai/kelvinsdk/HeatTransferConstant;

.field private typeCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lio/senseai/kelvinsdk/DeviceObject$1;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/DeviceObject$1;-><init>()V

    sput-object v0, Lio/senseai/kelvinsdk/DeviceObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->_v:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->_id:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->model:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->osVersion:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    const-class v1, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 40
    const-class v0, Lio/senseai/kelvinsdk/HeatTransferConstant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/HeatTransferConstant;

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->ambient:Lio/senseai/kelvinsdk/HeatTransferConstant;

    .line 41
    const-class v0, Lio/senseai/kelvinsdk/HeatTransferConstant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/HeatTransferConstant;

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->skin:Lio/senseai/kelvinsdk/HeatTransferConstant;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->typeCode:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/senseai/kelvinsdk/DeviceObject$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/DeviceObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getAmbient()Lio/senseai/kelvinsdk/HeatTransferConstant;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->ambient:Lio/senseai/kelvinsdk/HeatTransferConstant;

    return-object v0
.end method

.method public getDeviceSpecificFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    return-object v0
.end method

.method public getFilenames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 122
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 124
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 125
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 127
    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScalars()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 135
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 137
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getScalar()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 139
    goto :goto_0
.end method

.method public getSkin()Lio/senseai/kelvinsdk/HeatTransferConstant;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->skin:Lio/senseai/kelvinsdk/HeatTransferConstant;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->typeCode:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public get_v()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->_v:I

    return v0
.end method

.method public setAmbient(Lio/senseai/kelvinsdk/HeatTransferConstant;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->ambient:Lio/senseai/kelvinsdk/HeatTransferConstant;

    .line 96
    return-void
.end method

.method public setDeviceSpecificFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->model:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->osVersion:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSkin(Lio/senseai/kelvinsdk/HeatTransferConstant;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->skin:Lio/senseai/kelvinsdk/HeatTransferConstant;

    .line 104
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->typeCode:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->_id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public set_v(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lio/senseai/kelvinsdk/DeviceObject;->_v:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->_v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->deviceSpecificFiles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->skin:Lio/senseai/kelvinsdk/HeatTransferConstant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->ambient:Lio/senseai/kelvinsdk/HeatTransferConstant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Lio/senseai/kelvinsdk/DeviceObject;->typeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return-void
.end method
