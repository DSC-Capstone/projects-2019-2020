.class Lcom/robocatapps/thermo/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/aa;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ag;->a:Lcom/robocatapps/thermo/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/ag;->a:Lcom/robocatapps/thermo/aa;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    return-void
.end method
