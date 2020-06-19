.class public final Lauw;
.super Laut;
.source "SourceFile"


# instance fields
.field private final a:Lawi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lawi",
            "<",
            "Ljava/lang/String;",
            "Laut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Laut;-><init>()V

    .line 33
    new-instance v0, Lawi;

    invoke-direct {v0}, Lawi;-><init>()V

    iput-object v0, p0, Lauw;->a:Lawi;

    return-void
.end method

.method private a(Ljava/lang/Object;)Laut;
    .locals 1

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lauv;->a:Lauv;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lauz;

    invoke-direct {v0, p1}, Lauz;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lauz;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lauw;->a:Lawi;

    invoke-virtual {v0, p1}, Lawi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauz;

    return-object v0
.end method

.method public a(Ljava/lang/String;Laut;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lauv;->a:Lauv;

    .line 57
    :cond_0
    iget-object v0, p0, Lauw;->a:Lawi;

    invoke-virtual {v0, p1, p2}, Lawi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lauw;->a(Ljava/lang/Object;)Laut;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lauw;->a(Ljava/lang/String;Laut;)V

    .line 91
    return-void
.end method

.method public b(Ljava/lang/String;)Laur;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lauw;->a:Lawi;

    invoke-virtual {v0, p1}, Lawi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laur;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lauw;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lauw;->a:Lawi;

    invoke-virtual {v0, p1}, Lawi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauw;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lauw;

    if-eqz v0, :cond_1

    check-cast p1, Lauw;

    iget-object v0, p1, Lauw;->a:Lawi;

    iget-object v1, p0, Lauw;->a:Lawi;

    .line 188
    invoke-virtual {v0, v1}, Lawi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lauw;->a:Lawi;

    invoke-virtual {v0}, Lawi;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Laut;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lauw;->a:Lawi;

    invoke-virtual {v0}, Lawi;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
