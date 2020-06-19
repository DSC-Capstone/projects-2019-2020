.class public Lbnl;
.super Lbnm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnm",
        "<",
        "Lauw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lauw;

    invoke-direct {p0, v0}, Lbnm;-><init>(Ljava/lang/Class;)V

    .line 13
    return-void
.end method
