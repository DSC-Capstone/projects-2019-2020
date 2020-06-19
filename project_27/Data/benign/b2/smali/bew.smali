.class Lbew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Lazo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazo",
            "<",
            "Lbds;",
            ">;"
        }
    .end annotation
.end field

.field c:Lazo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazo",
            "<",
            "Lbex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    iput-object v0, p0, Lbew;->b:Lazo;

    .line 108
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    iput-object v0, p0, Lbew;->c:Lazo;

    return-void
.end method
