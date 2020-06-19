.class Lcom/robocatapps/thermo/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/e;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/e;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/f;->a:Lcom/robocatapps/thermo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const v0, 0x7f070030

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/f;->a:Lcom/robocatapps/thermo/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/e;->a(Lcom/robocatapps/thermo/e;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f070031

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/f;->a:Lcom/robocatapps/thermo/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/e;->a(Lcom/robocatapps/thermo/e;Z)V

    goto :goto_0
.end method
