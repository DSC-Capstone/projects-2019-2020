.class public abstract Lnet/simonvt/menudrawer/k;
.super Landroid/view/ViewGroup;


# static fields
.field static final p:Z


# instance fields
.field protected A:Lnet/simonvt/menudrawer/a;

.field protected B:Lnet/simonvt/menudrawer/a;

.field protected C:I

.field protected D:Z

.field protected E:Z

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:Z

.field private a:Landroid/view/View;

.field private b:I

.field private c:Lnet/simonvt/menudrawer/m;

.field private d:Lnet/simonvt/menudrawer/l;

.field private e:Landroid/app/Activity;

.field protected q:Landroid/graphics/drawable/Drawable;

.field protected r:Z

.field protected s:Landroid/graphics/drawable/Drawable;

.field protected t:Z

.field protected u:Landroid/graphics/drawable/Drawable;

.field protected v:I

.field protected w:Landroid/graphics/Bitmap;

.field protected x:Landroid/view/View;

.field protected y:I

.field protected final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/simonvt/menudrawer/k;->p:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/k;->e:Landroid/app/Activity;

    iput p2, p0, Lnet/simonvt/menudrawer/k;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lnet/simonvt/menudrawer/q;->menuDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->z:Landroid/graphics/Rect;

    iput v1, p0, Lnet/simonvt/menudrawer/k;->b:I

    iput v1, p0, Lnet/simonvt/menudrawer/k;->F:I

    iput v2, p0, Lnet/simonvt/menudrawer/k;->I:I

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/k;->J:Z

    invoke-virtual {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, -0x1

    const/high16 v6, -0x1000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/k;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/k;->setFocusable(Z)V

    sget-object v0, Lnet/simonvt/menudrawer/t;->MenuDrawer:[I

    sget v3, Lnet/simonvt/menudrawer/q;->menuDrawerStyle:I

    sget v4, Lnet/simonvt/menudrawer/s;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/k;->C:I

    iget v0, p0, Lnet/simonvt/menudrawer/k;->C:I

    if-eq v0, v7, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/k;->D:Z

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->w:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/k;->r:Z

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/k;->t:Z

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->u:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->setDropShadowColor(I)V

    :cond_1
    invoke-virtual {p0, v8}, Lnet/simonvt/menudrawer/k;->c(I)I

    move-result v0

    invoke-virtual {v3, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/k;->v:I

    const/16 v0, 0x9

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/k;->c(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/k;->G:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lnet/simonvt/menudrawer/a;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    sget v1, Lnet/simonvt/menudrawer/r;->md__menu:I

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setId(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v5}, Lnet/simonvt/menudrawer/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->addView(Landroid/view/View;)V

    new-instance v0, Lnet/simonvt/menudrawer/n;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    sget v1, Lnet/simonvt/menudrawer/r;->md__content:I

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setId(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v4}, Lnet/simonvt/menudrawer/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->addView(Landroid/view/View;)V

    new-instance v0, Lnet/simonvt/menudrawer/d;

    invoke-direct {v0, v6}, Lnet/simonvt/menudrawer/d;-><init>(I)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->q:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lnet/simonvt/menudrawer/d;

    invoke-direct {v0, v6}, Lnet/simonvt/menudrawer/d;-><init>(I)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->s:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/k;->x:Landroid/view/View;

    iput p2, p0, Lnet/simonvt/menudrawer/k;->y:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lnet/simonvt/menudrawer/k;->a:Landroid/view/View;

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract a(Z)V
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->d:Lnet/simonvt/menudrawer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->d:Lnet/simonvt/menudrawer/l;

    invoke-interface {v0, p1}, Lnet/simonvt/menudrawer/l;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/k;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract b(Z)V
.end method

.method protected c(I)I
    .locals 2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public abstract c(Z)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lnet/simonvt/menudrawer/k;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lnet/simonvt/menudrawer/a;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/k;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getDrawerState()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/k;->F:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    return-object v0
.end method

.method public abstract getMenuSize()I
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->a:Landroid/view/View;

    return-object v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->a(Z)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->b(Z)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->c(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lnet/simonvt/menudrawer/r;->mdMenu:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;)V

    :cond_0
    sget v0, Lnet/simonvt/menudrawer/r;->mdContent:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/k;->a(Landroid/view/View;I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    iget v0, p0, Lnet/simonvt/menudrawer/k;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->B:Lnet/simonvt/menudrawer/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/k;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setDrawerState(I)V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/k;->F:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/k;->F:I

    iput p1, p0, Lnet/simonvt/menudrawer/k;->F:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->c:Lnet/simonvt/menudrawer/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->c:Lnet/simonvt/menudrawer/m;

    invoke-interface {v1, v0, p1}, Lnet/simonvt/menudrawer/m;->a(II)V

    :cond_0
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/k;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/k;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->invalidate()V

    return-void
.end method

.method public abstract setDropShadowColor(I)V
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/k;->t:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->invalidate()V

    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0

    iput p1, p0, Lnet/simonvt/menudrawer/k;->v:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->invalidate()V

    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/k;->a:Landroid/view/View;

    iget-object v0, p0, Lnet/simonvt/menudrawer/k;->A:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/k;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/k;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method public setOnContentOffsetChangeListener(Lnet/simonvt/menudrawer/l;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/k;->d:Lnet/simonvt/menudrawer/l;

    return-void
.end method

.method public setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/m;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/k;->c:Lnet/simonvt/menudrawer/m;

    return-void
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method
