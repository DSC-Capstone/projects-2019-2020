.class final enum Lvc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lvk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvc;",
        ">;",
        "Lvk",
        "<",
        "Lvb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lvc;

.field public static final enum b:Lvc;

.field public static final enum c:Lvc;

.field public static final enum d:Lvc;

.field public static final enum e:Lvc;

.field public static final enum f:Lvc;

.field public static final enum g:Lvc;

.field public static final enum h:Lvc;

.field public static final enum i:Lvc;

.field public static final enum j:Lvc;

.field public static final enum k:Lvc;

.field public static final enum l:Lvc;

.field public static final enum m:Lvc;

.field public static final enum n:Lvc;

.field public static final enum o:Lvc;

.field public static final enum p:Lvc;

.field public static final enum q:Lvc;

.field public static final enum r:Lvc;

.field public static final enum s:Lvc;

.field private static final synthetic u:[Lvc;


# instance fields
.field final t:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lvc;

    const-string v1, "NUMERIC"

    const-string v2, "0|[1-9][0-9]*"

    invoke-direct {v0, v1, v4, v2}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->a:Lvc;

    .line 51
    new-instance v0, Lvc;

    const-string v1, "DOT"

    const-string v2, "\\."

    invoke-direct {v0, v1, v5, v2}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->b:Lvc;

    .line 52
    new-instance v0, Lvc;

    const-string v1, "HYPHEN"

    const-string v2, "-"

    invoke-direct {v0, v1, v6, v2}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->c:Lvc;

    .line 53
    new-instance v0, Lvc;

    const-string v1, "EQUAL"

    const-string v2, "="

    invoke-direct {v0, v1, v7, v2}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->d:Lvc;

    .line 54
    new-instance v0, Lvc;

    const-string v1, "NOT_EQUAL"

    const-string v2, "!="

    invoke-direct {v0, v1, v8, v2}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->e:Lvc;

    .line 55
    new-instance v0, Lvc;

    const-string v1, "GREATER"

    const/4 v2, 0x5

    const-string v3, ">(?!=)"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->f:Lvc;

    .line 56
    new-instance v0, Lvc;

    const-string v1, "GREATER_EQUAL"

    const/4 v2, 0x6

    const-string v3, ">="

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->g:Lvc;

    .line 57
    new-instance v0, Lvc;

    const-string v1, "LESS"

    const/4 v2, 0x7

    const-string v3, "<(?!=)"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->h:Lvc;

    .line 58
    new-instance v0, Lvc;

    const-string v1, "LESS_EQUAL"

    const/16 v2, 0x8

    const-string v3, "<="

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->i:Lvc;

    .line 59
    new-instance v0, Lvc;

    const-string v1, "TILDE"

    const/16 v2, 0x9

    const-string v3, "~"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->j:Lvc;

    .line 60
    new-instance v0, Lvc;

    const-string v1, "WILDCARD"

    const/16 v2, 0xa

    const-string v3, "[\\*xX]"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->k:Lvc;

    .line 61
    new-instance v0, Lvc;

    const-string v1, "CARET"

    const/16 v2, 0xb

    const-string v3, "\\^"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->l:Lvc;

    .line 62
    new-instance v0, Lvc;

    const-string v1, "AND"

    const/16 v2, 0xc

    const-string v3, "&"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->m:Lvc;

    .line 63
    new-instance v0, Lvc;

    const-string v1, "OR"

    const/16 v2, 0xd

    const-string v3, "\\|"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->n:Lvc;

    .line 64
    new-instance v0, Lvc;

    const-string v1, "NOT"

    const/16 v2, 0xe

    const-string v3, "!(?!=)"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->o:Lvc;

    .line 65
    new-instance v0, Lvc;

    const-string v1, "LEFT_PAREN"

    const/16 v2, 0xf

    const-string v3, "\\("

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->p:Lvc;

    .line 66
    new-instance v0, Lvc;

    const-string v1, "RIGHT_PAREN"

    const/16 v2, 0x10

    const-string v3, "\\)"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->q:Lvc;

    .line 67
    new-instance v0, Lvc;

    const-string v1, "WHITESPACE"

    const/16 v2, 0x11

    const-string v3, "\\s+"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->r:Lvc;

    .line 68
    new-instance v0, Lvc;

    const-string v1, "EOI"

    const/16 v2, 0x12

    const-string v3, "?!"

    invoke-direct {v0, v1, v2, v3}, Lvc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvc;->s:Lvc;

    .line 48
    const/16 v0, 0x13

    new-array v0, v0, [Lvc;

    sget-object v1, Lvc;->a:Lvc;

    aput-object v1, v0, v4

    sget-object v1, Lvc;->b:Lvc;

    aput-object v1, v0, v5

    sget-object v1, Lvc;->c:Lvc;

    aput-object v1, v0, v6

    sget-object v1, Lvc;->d:Lvc;

    aput-object v1, v0, v7

    sget-object v1, Lvc;->e:Lvc;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lvc;->f:Lvc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lvc;->g:Lvc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lvc;->h:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lvc;->i:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lvc;->j:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lvc;->k:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lvc;->l:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lvc;->m:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lvc;->n:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lvc;->o:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lvc;->p:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lvc;->q:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lvc;->r:Lvc;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lvc;->s:Lvc;

    aput-object v2, v0, v1

    sput-object v0, Lvc;->u:[Lvc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lvc;->t:Ljava/util/regex/Pattern;

    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvc;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lvc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvc;

    return-object v0
.end method

.method public static values()[Lvc;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lvc;->u:[Lvc;

    invoke-virtual {v0}, [Lvc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvc;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lvb;

    invoke-virtual {p0, p1}, Lvc;->a(Lvb;)Z

    move-result v0

    return v0
.end method

.method public a(Lvb;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lvb;->a:Lvc;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvc;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
