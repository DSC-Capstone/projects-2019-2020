.class Lcom/google/ads/internal/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/internal/c;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/google/ads/internal/c$c;->d:Landroid/webkit/WebView;

    .line 151
    iput-object p3, p0, Lcom/google/ads/internal/c$c;->b:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/google/ads/internal/c$c;->c:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->c:Lcom/google/ads/util/i$c;

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->a(Z)V

    .line 159
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/ads/internal/ActivationOverlay;->setOverlayEnabled(Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/internal/c$c;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_1
    return-void

    .line 160
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
