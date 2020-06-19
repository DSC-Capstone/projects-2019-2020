.class public final Ladh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ladc;


# direct methods
.method public constructor <init>(Ladc;)V
    .locals 0

    iput-object p1, p0, Ladh;->a:Ladc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ladh;->a:Ladc;

    invoke-static {p2}, Laea;->a(Landroid/os/IBinder;)Ladz;

    move-result-object v1

    invoke-static {v0, v1}, Ladc;->a(Ladc;Ladz;)Ladz;

    iget-object v0, p0, Ladh;->a:Ladc;

    invoke-virtual {v0}, Ladc;->l()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Ladh;->a:Ladc;

    iget-object v0, v0, Ladc;->a:Landroid/os/Handler;

    iget-object v1, p0, Ladh;->a:Ladc;

    iget-object v1, v1, Ladc;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
