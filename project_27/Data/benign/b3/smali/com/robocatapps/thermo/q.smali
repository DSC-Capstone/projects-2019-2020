.class Lcom/robocatapps/thermo/q;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->c(Lcom/robocatapps/thermo/MainActivity;)Lcom/robocatapps/thermo/ui/ThermometerView;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v1}, Lcom/robocatapps/thermo/MainActivity;->b(Lcom/robocatapps/thermo/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Landroid/os/Handler;)V

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v1, v0}, Lcom/robocatapps/thermo/MainActivity;->a(Lcom/robocatapps/thermo/MainActivity;I)I

    sget-object v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/robocatapps/thermo/service/WeatherUpdateService;->c:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v3}, Lcom/robocatapps/thermo/MainActivity;->c(Lcom/robocatapps/thermo/MainActivity;)Lcom/robocatapps/thermo/ui/ThermometerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Z)V

    :cond_1
    iget-object v3, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v3}, Lcom/robocatapps/thermo/MainActivity;->c(Lcom/robocatapps/thermo/MainActivity;)Lcom/robocatapps/thermo/ui/ThermometerView;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(III)V

    iget-object v0, p0, Lcom/robocatapps/thermo/q;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->d(Lcom/robocatapps/thermo/MainActivity;)V

    goto :goto_0
.end method
