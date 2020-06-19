.class Lvv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lww;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:I

.field final synthetic d:Lvu;


# direct methods
.method constructor <init>(Lvu;Lww;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lvv;->d:Lvu;

    iput-object p2, p0, Lvv;->a:Lww;

    iput-object p3, p0, Lvv;->b:Landroid/os/Handler;

    iput p4, p0, Lvv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lvv;->d:Lvu;

    iget-object v1, p0, Lvv;->a:Lww;

    iget-object v2, p0, Lvv;->b:Landroid/os/Handler;

    iget v3, p0, Lvv;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lvu;->a(Lww;Landroid/os/Handler;I)V

    return-void
.end method
