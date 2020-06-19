.class Lcom/robocatapps/thermo/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/h;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/h;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/i;->a:Lcom/robocatapps/thermo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/i;->a:Lcom/robocatapps/thermo/h;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
