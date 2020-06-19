.class Lvx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lww;

.field final synthetic c:Lvu;


# direct methods
.method constructor <init>(Lvu;ILww;)V
    .locals 0

    iput-object p1, p0, Lvx;->c:Lvu;

    iput p2, p0, Lvx;->a:I

    iput-object p3, p0, Lvx;->b:Lww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lvx;->c:Lvu;

    iget v1, p0, Lvx;->a:I

    invoke-virtual {v0, v1}, Lvu;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lvx;->b:Lww;

    const-string v2, "Install campaign broadcast processed"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lww;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
