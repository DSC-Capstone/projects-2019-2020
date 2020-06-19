.class Lxl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lxj;


# direct methods
.method constructor <init>(Lxj;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lxl;->c:Lxj;

    iput-object p2, p0, Lxl;->a:Ljava/lang/String;

    iput-object p3, p0, Lxl;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxl;->c:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lxl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lxl;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxl;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
