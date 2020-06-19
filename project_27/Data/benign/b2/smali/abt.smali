.class Labt;
.super Ljava/lang/Object;

# interfaces
.implements Laaj;


# instance fields
.field public final a:I

.field public final b:Laag;

.field public final c:Laaj;

.field final synthetic d:Labs;


# direct methods
.method public constructor <init>(Labs;ILaag;Laaj;)V
    .locals 0

    iput-object p1, p0, Labt;->d:Labs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Labt;->a:I

    iput-object p3, p0, Labt;->b:Laag;

    iput-object p4, p0, Labt;->c:Laaj;

    invoke-interface {p3, p0}, Laag;->a(Laaj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Labt;->b:Laag;

    invoke-interface {v0, p0}, Laag;->b(Laaj;)V

    iget-object v0, p0, Labt;->b:Laag;

    invoke-interface {v0}, Laag;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Labt;->a:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Labt;->b:Laag;

    invoke-interface {v0, p1, p2, p3, p4}, Laag;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Labt;->d:Labs;

    invoke-static {v0}, Labs;->d(Labs;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Labu;

    iget-object v2, p0, Labt;->d:Labs;

    iget v3, p0, Labt;->a:I

    invoke-direct {v1, v2, v3, p1}, Labu;-><init>(Labs;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
