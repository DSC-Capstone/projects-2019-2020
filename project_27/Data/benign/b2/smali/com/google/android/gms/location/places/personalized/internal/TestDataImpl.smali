.class public Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;
.super Larm;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Larh;


# instance fields
.field public final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Larh;

    invoke-direct {v0}, Larh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Larh;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Larm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->a:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Larh;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Laef;->a(Ljava/lang/Object;)Laeh;

    move-result-object v0

    const-string v1, "testName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laeh;->a(Ljava/lang/String;Ljava/lang/Object;)Laeh;

    move-result-object v0

    invoke-virtual {v0}, Laeh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Larh;

    invoke-static {p0, p1, p2}, Larh;->a(Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;Landroid/os/Parcel;I)V

    return-void
.end method
