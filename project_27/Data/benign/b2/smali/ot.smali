.class Lot;
.super Loh;
.source "SourceFile"

# interfaces
.implements Lfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Loh",
        "<",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        ">;",
        "Lfo;"
    }
.end annotation


# instance fields
.field final synthetic a:Loq;


# direct methods
.method constructor <init>(Loq;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lot;->a:Loq;

    .line 329
    invoke-direct {p0, p2}, Loh;-><init>(Ljava/lang/Object;)V

    .line 330
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lot;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Lot;->a:Loq;

    invoke-virtual {v1, p1}, Loq;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lot;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Lot;->a:Loq;

    invoke-virtual {v1, p1}, Loq;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
