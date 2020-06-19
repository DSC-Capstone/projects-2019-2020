.class final enum Lbho;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbho;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbho;

.field public static final enum b:Lbho;

.field public static final enum c:Lbho;

.field public static final enum d:Lbho;

.field public static final enum e:Lbho;

.field public static final enum f:Lbho;

.field public static final enum g:Lbho;

.field public static final enum h:Lbho;

.field public static final enum i:Lbho;

.field public static final enum j:Lbho;

.field public static final enum k:Lbho;

.field public static final enum l:Lbho;

.field public static final enum m:Lbho;

.field public static final enum n:Lbho;

.field public static final enum o:Lbho;

.field public static final enum p:Lbho;

.field public static final enum q:Lbho;

.field private static final synthetic u:[Lbho;


# instance fields
.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 21
    new-instance v0, Lbho;

    const-string v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lbho;->a:Lbho;

    .line 23
    new-instance v5, Lbho;

    const-string v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lbho;->b:Lbho;

    .line 26
    new-instance v8, Lbho;

    const-string v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->c:Lbho;

    .line 29
    new-instance v8, Lbho;

    const-string v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->d:Lbho;

    .line 32
    new-instance v8, Lbho;

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->e:Lbho;

    .line 35
    new-instance v8, Lbho;

    const-string v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->f:Lbho;

    .line 37
    new-instance v8, Lbho;

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->g:Lbho;

    .line 39
    new-instance v8, Lbho;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->h:Lbho;

    .line 41
    new-instance v8, Lbho;

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->i:Lbho;

    .line 43
    new-instance v8, Lbho;

    const-string v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->j:Lbho;

    .line 45
    new-instance v8, Lbho;

    const-string v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->k:Lbho;

    .line 47
    new-instance v8, Lbho;

    const-string v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->l:Lbho;

    .line 49
    new-instance v8, Lbho;

    const-string v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->m:Lbho;

    .line 51
    new-instance v8, Lbho;

    const-string v9, "CONNECT_ERROR"

    const/16 v10, 0xd

    const/16 v11, 0xa

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->n:Lbho;

    .line 53
    new-instance v8, Lbho;

    const-string v9, "ENHANCE_YOUR_CALM"

    const/16 v10, 0xe

    const/16 v11, 0xb

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->o:Lbho;

    .line 55
    new-instance v8, Lbho;

    const-string v9, "INADEQUATE_SECURITY"

    const/16 v10, 0xf

    const/16 v11, 0xc

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->p:Lbho;

    .line 57
    new-instance v8, Lbho;

    const-string v9, "INVALID_CREDENTIALS"

    const/16 v10, 0x10

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lbho;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lbho;->q:Lbho;

    .line 19
    const/16 v0, 0x11

    new-array v0, v0, [Lbho;

    sget-object v1, Lbho;->a:Lbho;

    aput-object v1, v0, v2

    sget-object v1, Lbho;->b:Lbho;

    aput-object v1, v0, v7

    sget-object v1, Lbho;->c:Lbho;

    aput-object v1, v0, v14

    sget-object v1, Lbho;->d:Lbho;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lbho;->e:Lbho;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lbho;->f:Lbho;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbho;->g:Lbho;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbho;->h:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbho;->i:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbho;->j:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbho;->k:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lbho;->l:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lbho;->m:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lbho;->n:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lbho;->o:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lbho;->p:Lbho;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lbho;->q:Lbho;

    aput-object v2, v0, v1

    sput-object v0, Lbho;->u:[Lbho;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lbho;->r:I

    .line 65
    iput p4, p0, Lbho;->s:I

    .line 66
    iput p5, p0, Lbho;->t:I

    .line 67
    return-void
.end method

.method public static a(I)Lbho;
    .locals 5

    .prologue
    .line 70
    invoke-static {}, Lbho;->values()[Lbho;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 71
    iget v4, v0, Lbho;->s:I

    if-ne v4, p0, :cond_0

    .line 73
    :goto_1
    return-object v0

    .line 70
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(I)Lbho;
    .locals 5

    .prologue
    .line 77
    invoke-static {}, Lbho;->values()[Lbho;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 78
    iget v4, v0, Lbho;->r:I

    if-ne v4, p0, :cond_0

    .line 80
    :goto_1
    return-object v0

    .line 77
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(I)Lbho;
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lbho;->values()[Lbho;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 85
    iget v4, v0, Lbho;->t:I

    if-ne v4, p0, :cond_0

    .line 87
    :goto_1
    return-object v0

    .line 84
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lbho;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbho;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbho;

    return-object v0
.end method

.method public static values()[Lbho;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbho;->u:[Lbho;

    invoke-virtual {v0}, [Lbho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbho;

    return-object v0
.end method
