.class Lcom/robocatapps/thermo/z;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/simonvt/menudrawer/l;


# instance fields
.field final synthetic a:Landroid/graphics/Canvas;

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:F

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Landroid/graphics/Bitmap;

.field final synthetic g:Landroid/graphics/Bitmap;

.field final synthetic h:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;Landroid/graphics/Canvas;Landroid/graphics/Matrix;FIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/z;->h:Lcom/robocatapps/thermo/MainActivity;

    iput-object p2, p0, Lcom/robocatapps/thermo/z;->a:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/robocatapps/thermo/z;->b:Landroid/graphics/Matrix;

    iput p4, p0, Lcom/robocatapps/thermo/z;->c:F

    iput p5, p0, Lcom/robocatapps/thermo/z;->d:I

    iput p6, p0, Lcom/robocatapps/thermo/z;->e:I

    iput-object p7, p0, Lcom/robocatapps/thermo/z;->f:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lcom/robocatapps/thermo/z;->g:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/robocatapps/thermo/z;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/z;->b:Landroid/graphics/Matrix;

    int-to-float v1, p1

    iget v2, p0, Lcom/robocatapps/thermo/z;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/robocatapps/thermo/z;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/robocatapps/thermo/z;->e:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/robocatapps/thermo/z;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/robocatapps/thermo/z;->f:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/robocatapps/thermo/z;->b:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/z;->h:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->k(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/z;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
