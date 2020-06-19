.class public Lapq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzt",
            "<",
            "Lzw;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lapk;

.field public static c:Lapl;

.field public static d:Lapu;

.field private static final e:Laab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laab",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Laaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laaa",
            "<",
            "Laqt;",
            "Lzw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Laab;

    invoke-direct {v0}, Laab;-><init>()V

    sput-object v0, Lapq;->e:Laab;

    new-instance v0, Lapr;

    invoke-direct {v0}, Lapr;-><init>()V

    sput-object v0, Lapq;->f:Laaa;

    new-instance v0, Lzt;

    const-string v1, "LocationServices.API"

    sget-object v2, Lapq;->f:Laaa;

    sget-object v3, Lapq;->e:Laab;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3, v4}, Lzt;-><init>(Ljava/lang/String;Laaa;Laab;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lapq;->a:Lzt;

    new-instance v0, Laqb;

    invoke-direct {v0}, Laqb;-><init>()V

    sput-object v0, Lapq;->b:Lapk;

    new-instance v0, Laqg;

    invoke-direct {v0}, Laqg;-><init>()V

    sput-object v0, Lapq;->c:Lapl;

    new-instance v0, Laqy;

    invoke-direct {v0}, Laqy;-><init>()V

    sput-object v0, Lapq;->d:Lapu;

    return-void
.end method

.method static synthetic a()Laab;
    .locals 1

    sget-object v0, Lapq;->e:Laab;

    return-object v0
.end method

.method public static a(Laag;)Laqt;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Laei;->b(ZLjava/lang/Object;)V

    sget-object v0, Lapq;->e:Laab;

    invoke-interface {p0, v0}, Laag;->a(Laab;)Lzz;

    move-result-object v0

    check-cast v0, Laqt;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Laei;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
