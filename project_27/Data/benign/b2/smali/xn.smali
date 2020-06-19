.class Lxn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lyx;

.field final synthetic b:Lxj;


# direct methods
.method constructor <init>(Lxj;Lyx;)V
    .locals 0

    iput-object p1, p0, Lxn;->b:Lxj;

    iput-object p2, p0, Lxn;->a:Lyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxn;->b:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lxn;->a:Lyx;

    invoke-virtual {v0, v1}, Lyd;->a(Lyx;)V

    return-void
.end method
