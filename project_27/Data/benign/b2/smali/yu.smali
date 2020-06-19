.class Lyu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lyt;


# direct methods
.method constructor <init>(Lyt;)V
    .locals 0

    iput-object p1, p0, Lyu;->a:Lyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lyu;->a:Lyt;

    invoke-static {v0}, Lyt;->a(Lyt;)Lxr;

    move-result-object v0

    invoke-virtual {v0}, Lxr;->h()Laog;

    move-result-object v0

    invoke-virtual {v0, p0}, Laog;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lyu;->a:Lyt;

    invoke-virtual {v0}, Lyt;->c()Z

    move-result v0

    iget-object v1, p0, Lyu;->a:Lyt;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lyt;->a(Lyt;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyu;->a:Lyt;

    invoke-static {v0}, Lyt;->b(Lyt;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyu;->a:Lyt;

    invoke-virtual {v0}, Lyt;->a()V

    goto :goto_0
.end method
