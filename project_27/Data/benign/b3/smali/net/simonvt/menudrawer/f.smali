.class final Lnet/simonvt/menudrawer/f;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/f;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lnet/simonvt/menudrawer/f;->a:I

    iput v0, p0, Lnet/simonvt/menudrawer/f;->a:I

    iget v0, p1, Lnet/simonvt/menudrawer/f;->b:I

    iput v0, p0, Lnet/simonvt/menudrawer/f;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/f;->c:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lnet/simonvt/menudrawer/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/menudrawer/d;-><init>(Lnet/simonvt/menudrawer/f;Lnet/simonvt/menudrawer/e;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lnet/simonvt/menudrawer/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/menudrawer/d;-><init>(Lnet/simonvt/menudrawer/f;Lnet/simonvt/menudrawer/e;)V

    return-object v0
.end method
