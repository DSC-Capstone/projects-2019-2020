.class public final enum Lbpm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbpm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbpm;

.field public static final enum b:Lbpm;

.field public static final enum c:Lbpm;

.field public static final enum d:Lbpm;

.field public static final enum e:Lbpm;

.field public static final enum f:Lbpm;

.field private static final synthetic g:[Lbpm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lbpm;

    const-string v1, "VERY_COLD"

    invoke-direct {v0, v1, v3}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->a:Lbpm;

    new-instance v0, Lbpm;

    const-string v1, "COLD"

    invoke-direct {v0, v1, v4}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->b:Lbpm;

    new-instance v0, Lbpm;

    const-string v1, "MILD"

    invoke-direct {v0, v1, v5}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->c:Lbpm;

    new-instance v0, Lbpm;

    const-string v1, "WARM"

    invoke-direct {v0, v1, v6}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->d:Lbpm;

    new-instance v0, Lbpm;

    const-string v1, "HOT"

    invoke-direct {v0, v1, v7}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->e:Lbpm;

    new-instance v0, Lbpm;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->f:Lbpm;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lbpm;

    sget-object v1, Lbpm;->a:Lbpm;

    aput-object v1, v0, v3

    sget-object v1, Lbpm;->b:Lbpm;

    aput-object v1, v0, v4

    sget-object v1, Lbpm;->c:Lbpm;

    aput-object v1, v0, v5

    sget-object v1, Lbpm;->d:Lbpm;

    aput-object v1, v0, v6

    sget-object v1, Lbpm;->e:Lbpm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbpm;->f:Lbpm;

    aput-object v2, v0, v1

    sput-object v0, Lbpm;->g:[Lbpm;

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

.method public static valueOf(Ljava/lang/String;)Lbpm;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lbpm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbpm;

    return-object v0
.end method

.method public static values()[Lbpm;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lbpm;->g:[Lbpm;

    invoke-virtual {v0}, [Lbpm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpm;

    return-object v0
.end method
