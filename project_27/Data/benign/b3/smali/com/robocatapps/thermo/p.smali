.class Lcom/robocatapps/thermo/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/robocatapps/thermo/ui/f;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/p;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/p;->a:Lcom/robocatapps/thermo/MainActivity;

    const v1, 0x7f050006

    invoke-static {v0, v1}, Lcom/robocatapps/thermo/App;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/p;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->o(Lcom/robocatapps/thermo/MainActivity;)V

    return-void
.end method
