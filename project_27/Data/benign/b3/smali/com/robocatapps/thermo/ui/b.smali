.class Lcom/robocatapps/thermo/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/ae;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/ui/ThermometerView;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ui/b;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/x;)V
    .locals 2

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/b;->a:Lcom/robocatapps/thermo/ui/ThermometerView;

    invoke-virtual {p1}, Lcom/a/a/x;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Lcom/robocatapps/thermo/ui/ThermometerView;I)I

    return-void
.end method
