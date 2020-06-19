.class public final enum Lbmu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbmu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbmu;

.field public static final enum b:Lbmu;

.field public static final enum c:Lbmu;

.field private static final synthetic d:[Lbmu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lbmu;

    const-string v1, "NO_ANIMATE"

    invoke-direct {v0, v1, v2}, Lbmu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmu;->a:Lbmu;

    .line 14
    new-instance v0, Lbmu;

    const-string v1, "ANIMATE"

    invoke-direct {v0, v1, v3}, Lbmu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmu;->b:Lbmu;

    .line 18
    new-instance v0, Lbmu;

    const-string v1, "ANIMATE_ONCE"

    invoke-direct {v0, v1, v4}, Lbmu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbmu;->c:Lbmu;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lbmu;

    sget-object v1, Lbmu;->a:Lbmu;

    aput-object v1, v0, v2

    sget-object v1, Lbmu;->b:Lbmu;

    aput-object v1, v0, v3

    sget-object v1, Lbmu;->c:Lbmu;

    aput-object v1, v0, v4

    sput-object v0, Lbmu;->d:[Lbmu;

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

.method public static valueOf(Ljava/lang/String;)Lbmu;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lbmu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbmu;

    return-object v0
.end method

.method public static values()[Lbmu;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lbmu;->d:[Lbmu;

    invoke-virtual {v0}, [Lbmu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbmu;

    return-object v0
.end method
