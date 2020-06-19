.class abstract enum Luh;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lvk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luh;",
        ">;",
        "Lvk",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Luh;

.field public static final enum b:Luh;

.field public static final enum c:Luh;

.field public static final enum d:Luh;

.field public static final enum e:Luh;

.field public static final enum f:Luh;

.field public static final enum g:Luh;

.field private static final synthetic h:[Luh;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lui;

    const-string v1, "DIGIT"

    invoke-direct {v0, v1, v3}, Lui;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->a:Luh;

    .line 58
    new-instance v0, Luj;

    const-string v1, "LETTER"

    invoke-direct {v0, v1, v4}, Luj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->b:Luh;

    .line 71
    new-instance v0, Luk;

    const-string v1, "DOT"

    invoke-direct {v0, v1, v5}, Luk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->c:Luh;

    .line 83
    new-instance v0, Lul;

    const-string v1, "HYPHEN"

    invoke-direct {v0, v1, v6}, Lul;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->d:Luh;

    .line 95
    new-instance v0, Lum;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v7}, Lum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->e:Luh;

    .line 107
    new-instance v0, Lun;

    const-string v1, "EOI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->f:Luh;

    .line 116
    new-instance v0, Luo;

    const-string v1, "ILLEGAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Luo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh;->g:Luh;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Luh;

    sget-object v1, Luh;->a:Luh;

    aput-object v1, v0, v3

    sget-object v1, Luh;->b:Luh;

    aput-object v1, v0, v4

    sget-object v1, Luh;->c:Luh;

    aput-object v1, v0, v5

    sget-object v1, Luh;->d:Luh;

    aput-object v1, v0, v6

    sget-object v1, Luh;->e:Luh;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Luh;->f:Luh;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Luh;->g:Luh;

    aput-object v2, v0, v1

    sput-object v0, Luh;->h:[Luh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILug;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Luh;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/Character;)Luh;
    .locals 5

    .prologue
    .line 139
    invoke-static {}, Luh;->values()[Luh;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 140
    invoke-virtual {v0, p0}, Luh;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    :goto_1
    return-object v0

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Luh;
    .locals 1

    .prologue
    .line 44
    const-class v0, Luh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luh;

    return-object v0
.end method

.method public static values()[Luh;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Luh;->h:[Luh;

    invoke-virtual {v0}, [Luh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luh;

    return-object v0
.end method
