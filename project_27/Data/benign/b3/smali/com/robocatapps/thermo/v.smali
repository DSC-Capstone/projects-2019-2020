.class Lcom/robocatapps/thermo/v;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/simonvt/menudrawer/m;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    const v2, 0x7f020002

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->k(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->l(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->l(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->l(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->k(Lcom/robocatapps/thermo/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/v;->a:Lcom/robocatapps/thermo/MainActivity;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
