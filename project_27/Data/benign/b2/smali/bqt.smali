.class public final enum Lbqt;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbqt;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lbqt;

.field public static final enum b:Lbqt;

.field private static final synthetic c:[Lbqt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lbqt;

    const-string v1, "MAXIMIZE"

    invoke-direct {v0, v1, v2}, Lbqt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbqt;->a:Lbqt;

    .line 36
    new-instance v0, Lbqt;

    const-string v1, "MINIMIZE"

    invoke-direct {v0, v1, v3}, Lbqt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbqt;->b:Lbqt;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lbqt;

    sget-object v1, Lbqt;->a:Lbqt;

    aput-object v1, v0, v2

    sget-object v1, Lbqt;->b:Lbqt;

    aput-object v1, v0, v3

    sput-object v0, Lbqt;->c:[Lbqt;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbqt;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lbqt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbqt;

    return-object v0
.end method

.method public static values()[Lbqt;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lbqt;->c:[Lbqt;

    invoke-virtual {v0}, [Lbqt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbqt;

    return-object v0
.end method
