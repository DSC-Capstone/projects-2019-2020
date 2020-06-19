.class abstract Lbkp;
.super Lbkm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Lbkm",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lbkm;-><init>(Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lbkp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
