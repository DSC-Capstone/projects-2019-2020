.class public final enum Lbhv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbhv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbhv;

.field public static final enum b:Lbhv;

.field public static final enum c:Lbhv;

.field public static final enum d:Lbhv;

.field private static final synthetic e:[Lbhv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lbhv;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lbhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhv;->a:Lbhv;

    .line 20
    new-instance v0, Lbhv;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lbhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhv;->b:Lbhv;

    .line 21
    new-instance v0, Lbhv;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lbhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhv;->c:Lbhv;

    .line 22
    new-instance v0, Lbhv;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lbhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhv;->d:Lbhv;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lbhv;

    sget-object v1, Lbhv;->a:Lbhv;

    aput-object v1, v0, v2

    sget-object v1, Lbhv;->b:Lbhv;

    aput-object v1, v0, v3

    sget-object v1, Lbhv;->c:Lbhv;

    aput-object v1, v0, v4

    sget-object v1, Lbhv;->d:Lbhv;

    aput-object v1, v0, v5

    sput-object v0, Lbhv;->e:[Lbhv;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbhv;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbhv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbhv;

    return-object v0
.end method

.method public static values()[Lbhv;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbhv;->e:[Lbhv;

    invoke-virtual {v0}, [Lbhv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbhv;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lbhv;->b:Lbhv;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbhv;->c:Lbhv;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbhv;->a:Lbhv;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
