.class final Lhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Lge;


# direct methods
.method constructor <init>(Lge;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lhg;->a:Lge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lja;

    invoke-direct {v0, p2}, Lja;-><init>(Landroid/view/WindowInsets;)V

    .line 62
    iget-object v1, p0, Lhg;->a:Lge;

    invoke-interface {v1, p1, v0}, Lge;->a(Landroid/view/View;Liz;)Liz;

    move-result-object v0

    check-cast v0, Lja;

    .line 64
    invoke-virtual {v0}, Lja;->e()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
