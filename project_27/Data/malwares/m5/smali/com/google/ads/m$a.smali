.class public final Lcom/google/ads/m$a;
.super Lcom/google/ads/util/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/ads/util/i$c;
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
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const-wide/32 v4, 0x20000

    const/16 v3, 0x12

    .line 20
    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    .line 22
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "ASDomains"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->a:Lcom/google/ads/util/i$c;

    .line 25
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "minHwAccelerationVersionBanner"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->b:Lcom/google/ads/util/i$c;

    .line 32
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "minHwAccelerationVersionOverlay"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->c:Lcom/google/ads/util/i$c;

    .line 36
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "minHwAccelerationVersionOverlay"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->d:Lcom/google/ads/util/i$c;

    .line 40
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "mraidBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->e:Lcom/google/ads/util/i$c;

    .line 45
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "mraidExpandedBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->f:Lcom/google/ads/util/i$c;

    .line 50
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "mraidInterstitialPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->g:Lcom/google/ads/util/i$c;

    .line 56
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "badAdReportPath"

    const-string v2, "https://badad.googleplex.com/s/reportAd"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->h:Lcom/google/ads/util/i$c;

    .line 65
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "appCacheMaxSize"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->i:Lcom/google/ads/util/i$c;

    .line 72
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "appCacheMaxSizePaddingInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->j:Lcom/google/ads/util/i$c;

    .line 76
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "maxTotalAppCacheQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->k:Lcom/google/ads/util/i$c;

    .line 80
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "maxTotalDatabaseQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->l:Lcom/google/ads/util/i$c;

    .line 84
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "maxDatabaseQuotaPerOriginInBytes"

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->m:Lcom/google/ads/util/i$c;

    .line 88
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "databaseQuotaIncreaseStepInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->n:Lcom/google/ads/util/i$c;

    .line 92
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "isInitialized"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->o:Lcom/google/ads/util/i$c;

    return-void
.end method
