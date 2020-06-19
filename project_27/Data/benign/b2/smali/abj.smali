.class Labj;
.super Ljava/lang/Object;

# interfaces
.implements Laaj;


# instance fields
.field final synthetic a:Lzt;

.field final synthetic b:I

.field final synthetic c:Labf;


# direct methods
.method constructor <init>(Labf;Lzt;I)V
    .locals 0

    iput-object p1, p0, Labj;->c:Labf;

    iput-object p2, p0, Labj;->a:Lzt;

    iput p3, p0, Labj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Labj;->c:Labf;

    invoke-static {v0}, Labf;->a(Labf;)Labp;

    move-result-object v0

    iget-object v1, p0, Labj;->a:Lzt;

    iget v2, p0, Labj;->b:I

    invoke-interface {v0, p1, v1, v2}, Labp;->a(Lcom/google/android/gms/common/ConnectionResult;Lzt;I)V

    return-void
.end method
