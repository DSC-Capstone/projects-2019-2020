.class Lcom/robocatapps/thermo/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-wide/16 v2, 0x258

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->e(Lcom/robocatapps/thermo/MainActivity;)Lnet/simonvt/menudrawer/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/k;->j()V

    iget-object v0, p0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->b(Lcom/robocatapps/thermo/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/robocatapps/thermo/s;

    invoke-direct {v1, p0}, Lcom/robocatapps/thermo/s;-><init>(Lcom/robocatapps/thermo/r;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->e(Lcom/robocatapps/thermo/MainActivity;)Lnet/simonvt/menudrawer/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/k;->j()V

    iget-object v0, p0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->b(Lcom/robocatapps/thermo/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/robocatapps/thermo/t;

    invoke-direct {v1, p0}, Lcom/robocatapps/thermo/t;-><init>(Lcom/robocatapps/thermo/r;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->e(Lcom/robocatapps/thermo/MainActivity;)Lnet/simonvt/menudrawer/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/k;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070019
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
