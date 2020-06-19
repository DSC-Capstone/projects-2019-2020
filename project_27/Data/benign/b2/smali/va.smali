.class Lva;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lvi;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lvi",
            "<",
            "Lvb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 201
    invoke-static {}, Lvc;->values()[Lvc;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 202
    iget-object v7, v6, Lvc;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 203
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 204
    const/4 v2, 0x1

    .line 205
    const-string v4, ""

    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    sget-object v4, Lvc;->r:Lvc;

    if-eq v6, v4, :cond_1

    .line 207
    new-instance v4, Lvb;

    .line 209
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5, v0}, Lvb;-><init>(Lvc;Ljava/lang/String;I)V

    .line 207
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int/2addr v0, v4

    .line 217
    :goto_1
    if-nez v2, :cond_0

    .line 218
    new-instance v0, Lvd;

    invoke-direct {v0, p1}, Lvd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_3
    new-instance v1, Lvb;

    sget-object v2, Lvc;->s:Lvc;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0}, Lvb;-><init>(Lvc;Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Lvi;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lvb;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lvi;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_4
    move v2, v1

    goto :goto_1
.end method
