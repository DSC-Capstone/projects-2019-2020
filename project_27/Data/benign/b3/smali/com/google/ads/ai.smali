.class public final enum Lcom/google/ads/ai;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/ads/ai;

.field public static final enum b:Lcom/google/ads/ai;

.field public static final enum c:Lcom/google/ads/ai;

.field public static final enum d:Lcom/google/ads/ai;

.field public static final enum e:Lcom/google/ads/ai;

.field public static final enum f:Lcom/google/ads/ai;

.field private static final synthetic g:[Lcom/google/ads/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/ads/ai;

    const-string v1, "AD"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/ai;->a:Lcom/google/ads/ai;

    new-instance v0, Lcom/google/ads/ai;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/ai;->b:Lcom/google/ads/ai;

    new-instance v0, Lcom/google/ads/ai;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/ai;->c:Lcom/google/ads/ai;

    new-instance v0, Lcom/google/ads/ai;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/google/ads/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/ai;->d:Lcom/google/ads/ai;

    new-instance v0, Lcom/google/ads/ai;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/google/ads/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/ai;->e:Lcom/google/ads/ai;

    new-instance v0, Lcom/google/ads/ai;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ads/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/ai;->f:Lcom/google/ads/ai;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/ads/ai;

    sget-object v1, Lcom/google/ads/ai;->a:Lcom/google/ads/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/ai;->b:Lcom/google/ads/ai;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/ai;->c:Lcom/google/ads/ai;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/ai;->d:Lcom/google/ads/ai;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/ai;->e:Lcom/google/ads/ai;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/ai;->f:Lcom/google/ads/ai;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/ai;->g:[Lcom/google/ads/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/ai;
    .locals 1

    const-class v0, Lcom/google/ads/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ai;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/ai;
    .locals 1

    sget-object v0, Lcom/google/ads/ai;->g:[Lcom/google/ads/ai;

    invoke-virtual {v0}, [Lcom/google/ads/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/ai;

    return-object v0
.end method
