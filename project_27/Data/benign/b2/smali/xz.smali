.class Lxz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lxx;


# direct methods
.method constructor <init>(Lxx;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lxz;->b:Lxx;

    iput-object p2, p0, Lxz;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxz;->b:Lxx;

    iget-object v0, v0, Lxx;->a:Lxv;

    iget-object v1, p0, Lxz;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lxv;->a(Lxv;Landroid/content/ComponentName;)V

    return-void
.end method
