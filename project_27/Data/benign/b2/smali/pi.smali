.class public Lpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liw;


# instance fields
.field a:I

.field final synthetic b:Lph;

.field private c:Z


# direct methods
.method protected constructor <init>(Lph;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Lpi;->b:Lph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpi;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lpi;->b:Lph;

    invoke-virtual {v0, v1}, Lph;->setVisibility(I)V

    .line 269
    iput-boolean v1, p0, Lpi;->c:Z

    .line 270
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lpi;->c:Z

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lpi;->b:Lph;

    const/4 v1, 0x0

    iput-object v1, v0, Lph;->i:Lig;

    .line 277
    iget-object v0, p0, Lpi;->b:Lph;

    iget v1, p0, Lpi;->a:I

    invoke-virtual {v0, v1}, Lph;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lpi;->b:Lph;

    iget-object v0, v0, Lph;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpi;->b:Lph;

    iget-object v0, v0, Lph;->c:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lpi;->b:Lph;

    iget-object v0, v0, Lph;->c:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Lpi;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpi;->c:Z

    .line 286
    return-void
.end method
