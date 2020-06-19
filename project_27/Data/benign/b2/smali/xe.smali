.class public Lxe;
.super Lyp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyp",
        "<",
        "Lxg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lxr;)V
    .locals 1

    new-instance v0, Lxf;

    invoke-direct {v0, p1}, Lxf;-><init>(Lxr;)V

    invoke-direct {p0, p1, v0}, Lyp;-><init>(Lxr;Lyq;)V

    return-void
.end method
