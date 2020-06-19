.class public Lvh;
.super Ltz;
.source "SourceFile"


# instance fields
.field private final a:Lvb;

.field private final b:[Lvc;


# direct methods
.method constructor <init>(Lvl;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ltz;-><init>()V

    .line 56
    invoke-virtual {p1}, Lvl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb;

    iput-object v0, p0, Lvh;->a:Lvb;

    .line 57
    invoke-virtual {p1}, Lvl;->c()[Lvk;

    move-result-object v0

    check-cast v0, [Lvc;

    check-cast v0, [Lvc;

    iput-object v0, p0, Lvh;->b:[Lvc;

    .line 58
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    const-string v0, "Unexpected token \'%s\'"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lvh;->a:Lvb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lvh;->b:[Lvc;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expecting \'%s\'"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lvh;->b:[Lvc;

    .line 106
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 104
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method
