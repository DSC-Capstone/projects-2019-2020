.class Lxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwr;

.field final synthetic b:Lxx;


# direct methods
.method constructor <init>(Lxx;Lwr;)V
    .locals 0

    iput-object p1, p0, Lxy;->b:Lxx;

    iput-object p2, p0, Lxy;->a:Lwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxy;->b:Lxx;

    iget-object v0, v0, Lxx;->a:Lxv;

    invoke-virtual {v0}, Lxv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxy;->b:Lxx;

    iget-object v0, v0, Lxx;->a:Lxv;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lxv;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lxy;->b:Lxx;

    iget-object v0, v0, Lxx;->a:Lxv;

    iget-object v1, p0, Lxy;->a:Lwr;

    invoke-static {v0, v1}, Lxv;->a(Lxv;Lwr;)V

    :cond_0
    return-void
.end method
