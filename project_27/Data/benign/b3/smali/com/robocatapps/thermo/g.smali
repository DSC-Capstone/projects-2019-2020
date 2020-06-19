.class Lcom/robocatapps/thermo/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/e;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/e;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/g;->a:Lcom/robocatapps/thermo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/g;->a:Lcom/robocatapps/thermo/e;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/robocatapps/thermo/g;->a:Lcom/robocatapps/thermo/e;

    invoke-static {v0, p2}, Lcom/robocatapps/thermo/e;->b(Lcom/robocatapps/thermo/e;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/robocatapps/thermo/g;->a:Lcom/robocatapps/thermo/e;

    invoke-static {v0, p2}, Lcom/robocatapps/thermo/e;->c(Lcom/robocatapps/thermo/e;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/robocatapps/thermo/g;->a:Lcom/robocatapps/thermo/e;

    invoke-static {v0, p2}, Lcom/robocatapps/thermo/e;->d(Lcom/robocatapps/thermo/e;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/robocatapps/thermo/g;->a:Lcom/robocatapps/thermo/e;

    invoke-static {v0, p2}, Lcom/robocatapps/thermo/e;->e(Lcom/robocatapps/thermo/e;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070032
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
