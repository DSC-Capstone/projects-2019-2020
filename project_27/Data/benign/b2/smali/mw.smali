.class public final Lmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Lmw;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Lmt;)V
    .locals 0

    .prologue
    .line 1539
    invoke-direct {p0, p1}, Lmw;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public a(Lok;Z)V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lmw;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;Lok;)V

    .line 1552
    return-void
.end method

.method public a(Lok;)Z
    .locals 2

    .prologue
    .line 1542
    iget-object v0, p0, Lmw;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1543
    if-eqz v0, :cond_0

    .line 1544
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1546
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
