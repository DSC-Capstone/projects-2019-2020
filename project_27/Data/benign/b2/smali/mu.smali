.class public Lmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lge;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lmu;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Liz;)Liz;
    .locals 4

    .prologue
    .line 332
    invoke-virtual {p2}, Liz;->b()I

    move-result v0

    .line 333
    iget-object v1, p0, Lmu;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I

    move-result v1

    .line 335
    if-eq v0, v1, :cond_0

    .line 336
    invoke-virtual {p2}, Liz;->a()I

    move-result v0

    invoke-virtual {p2}, Liz;->c()I

    move-result v2

    invoke-virtual {p2}, Liz;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Liz;->a(IIII)Liz;

    move-result-object p2

    .line 344
    :cond_0
    invoke-static {p1, p2}, Lgm;->a(Landroid/view/View;Liz;)Liz;

    move-result-object v0

    return-object v0
.end method
