.class public Lcom/google/ads/ap;
.super Lcom/google/ads/e/ab;


# static fields
.field private static final b:Lcom/google/ads/ap;


# instance fields
.field public final a:Lcom/google/ads/e/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/ap;

    invoke-direct {v0}, Lcom/google/ads/ap;-><init>()V

    sput-object v0, Lcom/google/ads/ap;->b:Lcom/google/ads/ap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/e/ab;-><init>()V

    new-instance v0, Lcom/google/ads/e/ae;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/aq;

    invoke-direct {v2}, Lcom/google/ads/aq;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->a:Lcom/google/ads/e/ae;

    return-void
.end method

.method public static a()Lcom/google/ads/ap;
    .locals 1

    sget-object v0, Lcom/google/ads/ap;->b:Lcom/google/ads/ap;

    return-object v0
.end method
