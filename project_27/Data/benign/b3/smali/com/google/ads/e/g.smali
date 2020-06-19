.class public final enum Lcom/google/ads/e/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/ads/e/g;

.field public static final enum b:Lcom/google/ads/e/g;

.field public static final enum c:Lcom/google/ads/e/g;

.field public static final enum d:Lcom/google/ads/e/g;

.field public static final enum e:Lcom/google/ads/e/g;

.field private static final synthetic g:[Lcom/google/ads/e/g;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-instance v0, Lcom/google/ads/e/g;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v6, v3}, Lcom/google/ads/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/e/g;->a:Lcom/google/ads/e/g;

    new-instance v0, Lcom/google/ads/e/g;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v7, v4}, Lcom/google/ads/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/e/g;->b:Lcom/google/ads/e/g;

    new-instance v0, Lcom/google/ads/e/g;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v5}, Lcom/google/ads/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/e/g;->c:Lcom/google/ads/e/g;

    new-instance v0, Lcom/google/ads/e/g;

    const-string v1, "WARN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/e/g;->d:Lcom/google/ads/e/g;

    new-instance v0, Lcom/google/ads/e/g;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/e/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/e/g;->e:Lcom/google/ads/e/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/ads/e/g;

    sget-object v1, Lcom/google/ads/e/g;->a:Lcom/google/ads/e/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/e/g;->b:Lcom/google/ads/e/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/e/g;->c:Lcom/google/ads/e/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/e/g;->d:Lcom/google/ads/e/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/e/g;->e:Lcom/google/ads/e/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/e/g;->g:[Lcom/google/ads/e/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ads/e/g;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/e/g;
    .locals 1

    const-class v0, Lcom/google/ads/e/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/e/g;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/e/g;
    .locals 1

    sget-object v0, Lcom/google/ads/e/g;->g:[Lcom/google/ads/e/g;

    invoke-virtual {v0}, [Lcom/google/ads/e/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/e/g;

    return-object v0
.end method
