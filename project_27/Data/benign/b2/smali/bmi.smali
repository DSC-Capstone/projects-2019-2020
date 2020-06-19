.class public final enum Lbmi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbmi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbmi;

.field public static final enum b:Lbmi;

.field public static final enum c:Lbmi;

.field public static final enum d:Lbmi;

.field private static final synthetic e:[Lbmi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lbmi;

    const-string v1, "LOADED_FROM_MEMORY"

    invoke-direct {v0, v1, v2}, Lbmi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmi;->a:Lbmi;

    .line 8
    new-instance v0, Lbmi;

    const-string v1, "LOADED_FROM_CACHE"

    invoke-direct {v0, v1, v3}, Lbmi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmi;->b:Lbmi;

    .line 9
    new-instance v0, Lbmi;

    const-string v1, "LOADED_FROM_CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v4}, Lbmi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmi;->c:Lbmi;

    .line 10
    new-instance v0, Lbmi;

    const-string v1, "LOADED_FROM_NETWORK"

    invoke-direct {v0, v1, v5}, Lbmi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmi;->d:Lbmi;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lbmi;

    sget-object v1, Lbmi;->a:Lbmi;

    aput-object v1, v0, v2

    sget-object v1, Lbmi;->b:Lbmi;

    aput-object v1, v0, v3

    sget-object v1, Lbmi;->c:Lbmi;

    aput-object v1, v0, v4

    sget-object v1, Lbmi;->d:Lbmi;

    aput-object v1, v0, v5

    sput-object v0, Lbmi;->e:[Lbmi;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbmi;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lbmi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbmi;

    return-object v0
.end method

.method public static values()[Lbmi;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lbmi;->e:[Lbmi;

    invoke-virtual {v0}, [Lbmi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbmi;

    return-object v0
.end method
