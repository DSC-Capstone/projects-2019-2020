.class Lcom/robocatapps/thermo/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/d/a/d;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/aa;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ae;->a:Lcom/robocatapps/thermo/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/robocatapps/thermo/model/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/robocatapps/thermo/ae;->a:Lcom/robocatapps/thermo/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/aa;->a(Lcom/robocatapps/thermo/aa;Z)V

    const-string v0, "CALLBACK "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ae;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v0, p1}, Lcom/robocatapps/thermo/aa;->a(Lcom/robocatapps/thermo/aa;Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Location;

    iget-object v0, p0, Lcom/robocatapps/thermo/ae;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v0}, Lcom/robocatapps/thermo/aa;->e(Lcom/robocatapps/thermo/aa;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {p0, p1}, Lcom/robocatapps/thermo/ae;->a(Lcom/robocatapps/thermo/model/Location;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/robocatapps/thermo/ae;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v0, v2}, Lcom/robocatapps/thermo/aa;->a(Lcom/robocatapps/thermo/aa;Z)V

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/robocatapps/thermo/ae;->a:Lcom/robocatapps/thermo/aa;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090012

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
