.class Lcom/robocatapps/thermo/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/c;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/MainActivity;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/o;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/a;)V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/o;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->a(Lcom/robocatapps/thermo/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/o;->a:Lcom/robocatapps/thermo/MainActivity;

    invoke-static {v0}, Lcom/robocatapps/thermo/MainActivity;->a(Lcom/robocatapps/thermo/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/ads/a;Lcom/google/ads/e;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/ads/a;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/ads/a;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/google/ads/a;)V
    .locals 0

    return-void
.end method
