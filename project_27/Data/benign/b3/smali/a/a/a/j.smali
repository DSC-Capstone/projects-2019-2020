.class public final enum La/a/a/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/a/a/j;

.field public static final enum b:La/a/a/j;

.field public static final enum c:La/a/a/j;

.field public static final enum d:La/a/a/j;

.field public static final enum e:La/a/a/j;

.field private static final synthetic f:[La/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/a/a/j;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v2}, La/a/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/j;->a:La/a/a/j;

    new-instance v0, La/a/a/j;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v3}, La/a/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/j;->b:La/a/a/j;

    new-instance v0, La/a/a/j;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v4}, La/a/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/j;->c:La/a/a/j;

    new-instance v0, La/a/a/j;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5}, La/a/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/j;->d:La/a/a/j;

    new-instance v0, La/a/a/j;

    const-string v1, "BLOB"

    invoke-direct {v0, v1, v6}, La/a/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/j;->e:La/a/a/j;

    const/4 v0, 0x5

    new-array v0, v0, [La/a/a/j;

    sget-object v1, La/a/a/j;->a:La/a/a/j;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/j;->b:La/a/a/j;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/j;->c:La/a/a/j;

    aput-object v1, v0, v4

    sget-object v1, La/a/a/j;->d:La/a/a/j;

    aput-object v1, v0, v5

    sget-object v1, La/a/a/j;->e:La/a/a/j;

    aput-object v1, v0, v6

    sput-object v0, La/a/a/j;->f:[La/a/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/j;
    .locals 1

    const-class v0, La/a/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/j;

    return-object v0
.end method

.method public static values()[La/a/a/j;
    .locals 1

    sget-object v0, La/a/a/j;->f:[La/a/a/j;

    invoke-virtual {v0}, [La/a/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/j;

    return-object v0
.end method
