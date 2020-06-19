.class public final enum Lyn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lyn;

.field public static final enum b:Lyn;

.field private static final synthetic c:[Lyn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lyn;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyn;->a:Lyn;

    new-instance v0, Lyn;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyn;->b:Lyn;

    const/4 v0, 0x2

    new-array v0, v0, [Lyn;

    sget-object v1, Lyn;->a:Lyn;

    aput-object v1, v0, v2

    sget-object v1, Lyn;->b:Lyn;

    aput-object v1, v0, v3

    sput-object v0, Lyn;->c:[Lyn;

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

.method public static a(Ljava/lang/String;)Lyn;
    .locals 1

    const-string v0, "GZIP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyn;->b:Lyn;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lyn;->a:Lyn;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lyn;
    .locals 1

    const-class v0, Lyn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyn;

    return-object v0
.end method

.method public static values()[Lyn;
    .locals 1

    sget-object v0, Lyn;->c:[Lyn;

    invoke-virtual {v0}, [Lyn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyn;

    return-object v0
.end method
