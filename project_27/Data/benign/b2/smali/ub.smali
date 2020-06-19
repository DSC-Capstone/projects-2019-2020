.class public Lub;
.super Ltz;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Character;

.field private final b:I

.field private final c:[Luh;


# direct methods
.method varargs constructor <init>(Ljava/lang/Character;I[Luh;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ltz;-><init>()V

    .line 80
    iput-object p1, p0, Lub;->a:Ljava/lang/Character;

    .line 81
    iput p2, p0, Lub;->b:I

    .line 82
    iput-object p3, p0, Lub;->c:[Luh;

    .line 83
    return-void
.end method

.method constructor <init>(Lvl;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ltz;-><init>()V

    .line 62
    invoke-virtual {p1}, Lvl;->b()I

    move-result v0

    iput v0, p0, Lub;->b:I

    .line 63
    invoke-virtual {p1}, Lvl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    iput-object v0, p0, Lub;->a:Ljava/lang/Character;

    .line 64
    invoke-virtual {p1}, Lvl;->c()[Lvk;

    move-result-object v0

    check-cast v0, [Luh;

    check-cast v0, [Luh;

    iput-object v0, p0, Lub;->c:[Luh;

    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    const-string v0, "Unexpected character \'%s(%s)\' at position \'%d\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lub;->a:Ljava/lang/Character;

    .line 123
    invoke-static {v2}, Luh;->a(Ljava/lang/Character;)Luh;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lub;->a:Ljava/lang/Character;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget v3, p0, Lub;->b:I

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 121
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lub;->c:[Luh;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expecting \'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lub;->c:[Luh;

    .line 130
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 128
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method
