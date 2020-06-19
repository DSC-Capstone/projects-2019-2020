.class Lcom/robocatapps/thermo/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/r;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/r;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/s;->a:Lcom/robocatapps/thermo/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/s;->a:Lcom/robocatapps/thermo/r;

    iget-object v0, v0, Lcom/robocatapps/thermo/r;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->f(Lcom/robocatapps/thermo/MainActivity;)V

    return-void
.end method
