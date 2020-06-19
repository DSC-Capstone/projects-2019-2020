.class public final Laox;
.super Ljava/lang/Object;


# static fields
.field public static final a:Laab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laab",
            "<",
            "Latw;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Laaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laaa",
            "<",
            "Latw;",
            "Lapb;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzt",
            "<",
            "Lapb;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Laoz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Laab;

    invoke-direct {v0}, Laab;-><init>()V

    sput-object v0, Laox;->a:Laab;

    new-instance v0, Laoy;

    invoke-direct {v0}, Laoy;-><init>()V

    sput-object v0, Laox;->b:Laaa;

    new-instance v0, Lzt;

    const-string v1, "SignIn.API"

    sget-object v2, Laox;->b:Laaa;

    sget-object v3, Laox;->a:Laab;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3, v4}, Lzt;-><init>(Ljava/lang/String;Laaa;Laab;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Laox;->c:Lzt;

    new-instance v0, Latv;

    invoke-direct {v0}, Latv;-><init>()V

    sput-object v0, Laox;->d:Laoz;

    return-void
.end method
