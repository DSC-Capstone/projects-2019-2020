.class Lnr;
.super Lix;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnp;


# direct methods
.method constructor <init>(Lnp;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lnr;->a:Lnp;

    invoke-direct {p0}, Lix;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lnr;->a:Lnp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnp;->a(Lnp;Loa;)Loa;

    .line 159
    iget-object v0, p0, Lnr;->a:Lnp;

    invoke-static {v0}, Lnp;->c(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 160
    return-void
.end method
