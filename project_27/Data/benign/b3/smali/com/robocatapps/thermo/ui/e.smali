.class Lcom/robocatapps/thermo/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/ui/ThermometerView;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-static {v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Lcom/robocatapps/thermo/ui/ThermometerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Lcom/robocatapps/thermo/ui/ThermometerView;F)F

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-static {v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Lcom/robocatapps/thermo/ui/ThermometerView;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Lcom/robocatapps/thermo/ui/ThermometerView;F)F

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->postInvalidate()V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/e;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lcom/robocatapps/thermo/ui/ThermometerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
