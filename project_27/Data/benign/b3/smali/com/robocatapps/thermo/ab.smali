.class Lcom/robocatapps/thermo/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/aa;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ab;->a:Lcom/robocatapps/thermo/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/ab;->a:Lcom/robocatapps/thermo/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/aa;->a(Lcom/robocatapps/thermo/aa;Z)V

    return-void
.end method
