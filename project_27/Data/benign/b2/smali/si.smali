.class public Lsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lol;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lsi;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuView;Lse;)V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lsi;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public a(Lok;)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lsi;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/support/v7/widget/ActionMenuView;)Lol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lsi;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/support/v7/widget/ActionMenuView;)Lol;

    move-result-object v0

    invoke-interface {v0, p1}, Lol;->a(Lok;)V

    .line 749
    :cond_0
    return-void
.end method

.method public a(Lok;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lsi;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuView;)Lsj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsi;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuView;)Lsj;

    move-result-object v0

    invoke-interface {v0, p2}, Lsj;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
