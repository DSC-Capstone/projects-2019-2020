.class Lxm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwq;

.field final synthetic b:Lxj;


# direct methods
.method constructor <init>(Lxj;Lwq;)V
    .locals 0

    iput-object p1, p0, Lxm;->b:Lxj;

    iput-object p2, p0, Lxm;->a:Lwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxm;->b:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lwq;

    invoke-virtual {v0, v1}, Lyd;->a(Lwq;)V

    return-void
.end method
