.class public Lapw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Laqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqx",
            "<",
            "Laqk;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;

.field private f:Lapx;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laqx;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Laqx",
            "<",
            "Laqk;",
            ">;",
            "Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapw;->a:Landroid/content/Context;

    iput-object p2, p0, Lapw;->b:Ljava/lang/String;

    iput-object p4, p0, Lapw;->c:Laqx;

    const/4 v0, 0x0

    iput-object v0, p0, Lapw;->f:Lapx;

    iput-object p3, p0, Lapw;->d:Ljava/lang/String;

    iput-object p5, p0, Lapw;->e:Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laqx;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)Lapw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Laqx",
            "<",
            "Laqk;",
            ">;",
            "Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;",
            ")",
            "Lapw;"
        }
    .end annotation

    new-instance v0, Lapw;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lapw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laqx;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V

    return-object v0
.end method
