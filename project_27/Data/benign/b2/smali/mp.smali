.class public Lmp;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1335
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1324
    const/4 v0, 0x0

    iput v0, p0, Lmp;->a:I

    .line 1336
    const v0, 0x800013

    iput v0, p0, Lmp;->a:I

    .line 1337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1327
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1324
    iput v2, p0, Lmp;->a:I

    .line 1329
    sget-object v0, Lnl;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1330
    sget v1, Lnl;->ActionBarLayout_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmp;->a:I

    .line 1331
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1332
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1355
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    const/4 v0, 0x0

    iput v0, p0, Lmp;->a:I

    .line 1356
    return-void
.end method

.method public constructor <init>(Lmp;)V
    .locals 1

    .prologue
    .line 1349
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1324
    const/4 v0, 0x0

    iput v0, p0, Lmp;->a:I

    .line 1351
    iget v0, p1, Lmp;->a:I

    iput v0, p0, Lmp;->a:I

    .line 1352
    return-void
.end method
