.class public final Lcom/google/ads/l;
.super Lcom/google/ads/util/i;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/n;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/n;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    .line 33
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "disableNativeScroll"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/l;->c:Lcom/google/ads/util/i$c;

    .line 45
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "slotState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    .line 46
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "adLoader"

    new-instance v2, Lcom/google/ads/internal/c;

    invoke-direct {v2, p0}, Lcom/google/ads/internal/c;-><init>(Lcom/google/ads/l;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    .line 47
    return-void
.end method
