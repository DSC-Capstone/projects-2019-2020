.class public Laph;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/ActivityRecognitionResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lacq;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lacq;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    invoke-static {p1, v1, v2, v3}, Lacq;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    invoke-static {p1, v1, v2, v3}, Lacq;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lacq;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {p1}, Laco;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v3, 0x0

    move-wide v4, v6

    move v2, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Laco;->a(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Laco;->a(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    invoke-static {p1, v1}, Laco;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v3, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lapj;

    invoke-static {p1, v1, v3}, Laco;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v1}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v1}, Laco;->h(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v1}, Laco;->h(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v1}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v0, :cond_1

    new-instance v1, Lacp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lacp;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(ILjava/util/List;JJI)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Laph;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Laph;->a(I)[Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    return-object v0
.end method
