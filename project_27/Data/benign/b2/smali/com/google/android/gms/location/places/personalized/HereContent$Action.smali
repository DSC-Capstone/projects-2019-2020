.class public final Lcom/google/android/gms/location/places/personalized/HereContent$Action;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lari;


# instance fields
.field public final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lari;

    invoke-direct {v0}, Lari;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->CREATOR:Lari;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->a:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->CREATOR:Lari;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Laef;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Laef;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Laef;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Laef;->a(Ljava/lang/Object;)Laeh;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laeh;->a(Ljava/lang/String;Ljava/lang/Object;)Laeh;

    move-result-object v0

    const-string v1, "uri"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laeh;->a(Ljava/lang/String;Ljava/lang/Object;)Laeh;

    move-result-object v0

    invoke-virtual {v0}, Laeh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/HereContent$Action;->CREATOR:Lari;

    invoke-static {p0, p1, p2}, Lari;->a(Lcom/google/android/gms/location/places/personalized/HereContent$Action;Landroid/os/Parcel;I)V

    return-void
.end method
