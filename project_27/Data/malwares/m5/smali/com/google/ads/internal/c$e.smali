.class Lcom/google/ads/internal/c$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/internal/c;

.field private final b:Lcom/google/ads/internal/d;

.field private final c:Landroid/webkit/WebView;

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/ads/AdSize;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/d;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/AdSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Landroid/webkit/WebView;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdSize;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    .line 191
    iput-object p3, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    .line 192
    iput-object p4, p0, Lcom/google/ads/internal/c$e;->d:Ljava/util/LinkedList;

    .line 193
    iput p5, p0, Lcom/google/ads/internal/c$e;->e:I

    .line 194
    iput-boolean p6, p0, Lcom/google/ads/internal/c$e;->f:Z

    .line 195
    iput-object p7, p0, Lcom/google/ads/internal/c$e;->g:Ljava/lang/String;

    .line 196
    iput-object p8, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 204
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/LinkedList;)V

    .line 207
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget v1, p0, Lcom/google/ads/internal/c$e;->e:I

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(I)V

    .line 208
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget-boolean v1, p0, Lcom/google/ads/internal/c$e;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    .line 212
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/AdSize;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->E()V

    .line 215
    return-void
.end method
