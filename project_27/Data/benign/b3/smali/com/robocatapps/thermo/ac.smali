.class Lcom/robocatapps/thermo/ac;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/aa;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v0}, Lcom/robocatapps/thermo/aa;->b(Lcom/robocatapps/thermo/aa;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v1}, Lcom/robocatapps/thermo/aa;->a(Lcom/robocatapps/thermo/aa;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    new-instance v2, Lcom/robocatapps/thermo/model/Location;

    invoke-direct {v2, v0}, Lcom/robocatapps/thermo/model/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1, v2}, Lcom/robocatapps/thermo/aa;->a(Lcom/robocatapps/thermo/aa;Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Location;

    iget-object v0, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v0}, Lcom/robocatapps/thermo/aa;->c(Lcom/robocatapps/thermo/aa;)Lcom/google/a/d/a/d;

    move-result-object v0

    invoke-static {p0, v0}, La/a/a/a;->a(Ljava/lang/Object;Lcom/google/a/d/a/d;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    new-instance v1, Lcom/robocatapps/thermo/j;

    invoke-direct {v1, p1}, Lcom/robocatapps/thermo/j;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v2}, Lcom/robocatapps/thermo/aa;->d(Lcom/robocatapps/thermo/aa;)Lcom/robocatapps/thermo/model/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/robocatapps/thermo/j;->b(Lcom/robocatapps/thermo/model/Location;)Lcom/google/a/d/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/ac;->a:Lcom/robocatapps/thermo/aa;

    invoke-static {v2}, Lcom/robocatapps/thermo/aa;->c(Lcom/robocatapps/thermo/aa;)Lcom/google/a/d/a/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, La/a/a/a;->a(Ljava/lang/Object;Lcom/google/a/d/a/e;Lcom/google/a/d/a/d;)V

    :cond_0
    return-void
.end method
