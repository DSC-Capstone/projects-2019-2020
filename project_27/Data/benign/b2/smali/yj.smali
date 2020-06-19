.class public final enum Lyj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lyj;

.field public static final enum b:Lyj;

.field public static final enum c:Lyj;

.field public static final enum d:Lyj;

.field public static final enum e:Lyj;

.field public static final enum f:Lyj;

.field private static final synthetic g:[Lyj;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lyj;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lyj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyj;->a:Lyj;

    new-instance v0, Lyj;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, Lyj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyj;->b:Lyj;

    new-instance v0, Lyj;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, Lyj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyj;->c:Lyj;

    new-instance v0, Lyj;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, Lyj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyj;->d:Lyj;

    new-instance v0, Lyj;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, Lyj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyj;->e:Lyj;

    new-instance v0, Lyj;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lyj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyj;->f:Lyj;

    const/4 v0, 0x6

    new-array v0, v0, [Lyj;

    sget-object v1, Lyj;->a:Lyj;

    aput-object v1, v0, v3

    sget-object v1, Lyj;->b:Lyj;

    aput-object v1, v0, v4

    sget-object v1, Lyj;->c:Lyj;

    aput-object v1, v0, v5

    sget-object v1, Lyj;->d:Lyj;

    aput-object v1, v0, v6

    sget-object v1, Lyj;->e:Lyj;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lyj;->f:Lyj;

    aput-object v2, v0, v1

    sput-object v0, Lyj;->g:[Lyj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lyj;
    .locals 1

    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyj;->b:Lyj;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lyj;->c:Lyj;

    goto :goto_0

    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lyj;->d:Lyj;

    goto :goto_0

    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lyj;->e:Lyj;

    goto :goto_0

    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lyj;->f:Lyj;

    goto :goto_0

    :cond_4
    sget-object v0, Lyj;->a:Lyj;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lyj;
    .locals 1

    const-class v0, Lyj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyj;

    return-object v0
.end method

.method public static values()[Lyj;
    .locals 1

    sget-object v0, Lyj;->g:[Lyj;

    invoke-virtual {v0}, [Lyj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyj;

    return-object v0
.end method
