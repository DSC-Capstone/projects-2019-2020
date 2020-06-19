.class Lnet/simonvt/menudrawer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/simonvt/menudrawer/a;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/a;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/b;->a:Lnet/simonvt/menudrawer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/simonvt/menudrawer/b;->a:Lnet/simonvt/menudrawer/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/menudrawer/a;->a(Lnet/simonvt/menudrawer/a;Z)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/b;->a:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->invalidate()V

    return-void
.end method
