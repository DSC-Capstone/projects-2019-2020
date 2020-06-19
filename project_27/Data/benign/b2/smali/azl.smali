.class public final enum Lazl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lazl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lazl;

.field public static final enum b:Lazl;

.field public static final enum c:Lazl;

.field public static final enum d:Lazl;

.field public static final enum e:Lazl;

.field public static final enum f:Lazl;

.field public static final enum g:Lazl;

.field public static final enum h:Lazl;

.field public static final enum i:Lazl;

.field public static final enum j:Lazl;

.field private static final synthetic k:[Lazl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lazl;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->a:Lazl;

    .line 37
    new-instance v0, Lazl;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->b:Lazl;

    .line 43
    new-instance v0, Lazl;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->c:Lazl;

    .line 49
    new-instance v0, Lazl;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->d:Lazl;

    .line 56
    new-instance v0, Lazl;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->e:Lazl;

    .line 61
    new-instance v0, Lazl;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->f:Lazl;

    .line 67
    new-instance v0, Lazl;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->g:Lazl;

    .line 72
    new-instance v0, Lazl;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->h:Lazl;

    .line 77
    new-instance v0, Lazl;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->i:Lazl;

    .line 84
    new-instance v0, Lazl;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lazl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lazl;->j:Lazl;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lazl;

    sget-object v1, Lazl;->a:Lazl;

    aput-object v1, v0, v3

    sget-object v1, Lazl;->b:Lazl;

    aput-object v1, v0, v4

    sget-object v1, Lazl;->c:Lazl;

    aput-object v1, v0, v5

    sget-object v1, Lazl;->d:Lazl;

    aput-object v1, v0, v6

    sget-object v1, Lazl;->e:Lazl;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lazl;->f:Lazl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lazl;->g:Lazl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lazl;->h:Lazl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lazl;->i:Lazl;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lazl;->j:Lazl;

    aput-object v2, v0, v1

    sput-object v0, Lazl;->k:[Lazl;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lazl;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lazl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lazl;

    return-object v0
.end method

.method public static values()[Lazl;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lazl;->k:[Lazl;

    invoke-virtual {v0}, [Lazl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lazl;

    return-object v0
.end method
