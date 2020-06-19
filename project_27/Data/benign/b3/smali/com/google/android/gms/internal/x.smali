.class public final Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/z;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/z;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/y;)V

    return-object v0
.end method
