.class Lnet/simonvt/menudrawer/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/simonvt/menudrawer/a;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/a;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/a;->a(Lnet/simonvt/menudrawer/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/a;->b(Lnet/simonvt/menudrawer/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-static {v0, v1}, Lnet/simonvt/menudrawer/a;->b(Lnet/simonvt/menudrawer/a;Z)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v2, v3}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->buildLayer()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/c;->a:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v3}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
