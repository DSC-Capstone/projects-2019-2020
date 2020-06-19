.class Lcom/google/ads/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/b/r;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/b/t;

.field private final d:Lcom/google/ads/e;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/b/r;Landroid/webkit/WebView;Lcom/google/ads/b/t;Lcom/google/ads/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/b/m;->a:Lcom/google/ads/b/r;

    iput-object p2, p0, Lcom/google/ads/b/m;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/b/m;->c:Lcom/google/ads/b/t;

    iput-object p4, p0, Lcom/google/ads/b/m;->d:Lcom/google/ads/e;

    iput-boolean p5, p0, Lcom/google/ads/b/m;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/b/m;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/m;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/b/m;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/m;->c:Lcom/google/ads/b/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/m;->c:Lcom/google/ads/b/t;

    invoke-virtual {v0}, Lcom/google/ads/b/t;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/b/m;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/m;->a:Lcom/google/ads/b/r;

    invoke-virtual {v0}, Lcom/google/ads/b/r;->k()Lcom/google/ads/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/b/c;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/b/c;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/b/m;->a:Lcom/google/ads/b/r;

    iget-object v1, p0, Lcom/google/ads/b/m;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/r;->a(Lcom/google/ads/e;)V

    return-void
.end method
