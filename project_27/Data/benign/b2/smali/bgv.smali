.class final enum Lbgv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbgv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbgv;

.field public static final enum b:Lbgv;

.field public static final enum c:Lbgv;

.field public static final enum d:Lbgv;

.field public static final enum e:Lbgv;

.field public static final enum f:Lbgv;

.field public static final enum g:Lbgv;

.field private static final synthetic h:[Lbgv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lbgv;

    const-string v1, "CHUNK_LEN"

    invoke-direct {v0, v1, v3}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->a:Lbgv;

    .line 15
    new-instance v0, Lbgv;

    const-string v1, "CHUNK_LEN_CR"

    invoke-direct {v0, v1, v4}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->b:Lbgv;

    .line 16
    new-instance v0, Lbgv;

    const-string v1, "CHUNK_LEN_CRLF"

    invoke-direct {v0, v1, v5}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->c:Lbgv;

    .line 17
    new-instance v0, Lbgv;

    const-string v1, "CHUNK"

    invoke-direct {v0, v1, v6}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->d:Lbgv;

    .line 18
    new-instance v0, Lbgv;

    const-string v1, "CHUNK_CR"

    invoke-direct {v0, v1, v7}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->e:Lbgv;

    .line 19
    new-instance v0, Lbgv;

    const-string v1, "CHUNK_CRLF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->f:Lbgv;

    .line 20
    new-instance v0, Lbgv;

    const-string v1, "COMPLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lbgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgv;->g:Lbgv;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lbgv;

    sget-object v1, Lbgv;->a:Lbgv;

    aput-object v1, v0, v3

    sget-object v1, Lbgv;->b:Lbgv;

    aput-object v1, v0, v4

    sget-object v1, Lbgv;->c:Lbgv;

    aput-object v1, v0, v5

    sget-object v1, Lbgv;->d:Lbgv;

    aput-object v1, v0, v6

    sget-object v1, Lbgv;->e:Lbgv;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbgv;->f:Lbgv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbgv;->g:Lbgv;

    aput-object v2, v0, v1

    sput-object v0, Lbgv;->h:[Lbgv;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbgv;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbgv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbgv;

    return-object v0
.end method

.method public static values()[Lbgv;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lbgv;->h:[Lbgv;

    invoke-virtual {v0}, [Lbgv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbgv;

    return-object v0
.end method
