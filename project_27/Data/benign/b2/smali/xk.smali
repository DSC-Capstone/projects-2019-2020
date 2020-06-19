.class Lxk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lxj;


# direct methods
.method constructor <init>(Lxj;Z)V
    .locals 0

    iput-object p1, p0, Lxk;->b:Lxj;

    iput-boolean p2, p0, Lxk;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxk;->b:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)Lyd;

    move-result-object v0

    iget-boolean v1, p0, Lxk;->a:Z

    invoke-virtual {v0, v1}, Lyd;->a(Z)V

    return-void
.end method
