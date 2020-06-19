.class Lcr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcp;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcp",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcq;

    invoke-direct {v0, p0}, Lcq;-><init>(Lcp;)V

    return-object v0
.end method
