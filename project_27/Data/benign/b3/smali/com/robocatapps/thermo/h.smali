.class public abstract Lcom/robocatapps/thermo/h;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Lcom/robocatapps/thermo/ui/TextView;

.field private b:Lcom/robocatapps/thermo/ui/TextView;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/robocatapps/thermo/i;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/i;-><init>(Lcom/robocatapps/thermo/h;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/h;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/h;->a:Lcom/robocatapps/thermo/ui/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/h;->a:Lcom/robocatapps/thermo/ui/TextView;

    invoke-virtual {v0, p1}, Lcom/robocatapps/thermo/ui/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/h;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/robocatapps/thermo/ui/TextView;

    iput-object v0, p0, Lcom/robocatapps/thermo/h;->a:Lcom/robocatapps/thermo/ui/TextView;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/h;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/robocatapps/thermo/ui/TextView;

    iput-object v0, p0, Lcom/robocatapps/thermo/h;->b:Lcom/robocatapps/thermo/ui/TextView;

    iget-object v0, p0, Lcom/robocatapps/thermo/h;->b:Lcom/robocatapps/thermo/ui/TextView;

    iget-object v1, p0, Lcom/robocatapps/thermo/h;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
