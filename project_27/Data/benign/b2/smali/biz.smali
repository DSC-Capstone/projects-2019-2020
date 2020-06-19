.class Lbiz;
.super Lbdc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdc",
        "<",
        "Lbhh;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lbde;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lbdc;-><init>()V

    .line 128
    new-instance v0, Lbde;

    invoke-direct {v0}, Lbde;-><init>()V

    iput-object v0, p0, Lbiz;->c:Lbde;

    return-void
.end method

.method synthetic constructor <init>(Lbir;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lbiz;-><init>()V

    return-void
.end method
