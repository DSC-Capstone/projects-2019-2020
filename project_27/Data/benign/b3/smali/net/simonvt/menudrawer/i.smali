.class Lnet/simonvt/menudrawer/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/simonvt/menudrawer/DraggableDrawer;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/i;->a:Lnet/simonvt/menudrawer/DraggableDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/i;->a:Lnet/simonvt/menudrawer/DraggableDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->d()V

    return-void
.end method
