.class final Lio/senseai/kelvinsdk/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/ˋ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/senseai/kelvinsdk/\u02cb",
        "<",
        "Lio/senseai/kelvinsdk/Session;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/If$3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method constructor <init>(Lio/senseai/kelvinsdk/If$3;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lio/senseai/kelvinsdk/RawData;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/senseai/kelvinsdk/RawData;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/RawData;->ˎ()Ljava/util/List;

    move-result-object v1

    .line 27
    sget-object v2, Lio/senseai/kelvinsdk/RawData$FilterFields;->time:Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/RawData$FilterFields;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lio/senseai/kelvinsdk/RawData$FilterFields;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/RawData$FilterFields;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/RawData;->ˏ()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Lio/senseai/kelvinsdk/RawData$FilterFields;->cpu_load:Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/RawData$FilterFields;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/RawData;->ᐝ()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v2, Lio/senseai/kelvinsdk/RawData$FilterFields;->temp:Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/RawData$FilterFields;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/RawData;->ʻ()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v1}, Lio/senseai/kelvinsdk/if;->ˊ(Ljava/util/List;)V

    .line 34
    return-object v0
.end method

.method private static ˊ(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v2

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final ˊ()V
    .locals 1

    .prologue
    .line 1331
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1332
    iget-object v0, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ()V

    .line 1333
    return-void
.end method

.method public final ˊ(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1309
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1310
    instance-of v0, p1, Lio/senseai/kelvinsdk/DeviceNotSupportedException;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0, p1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ()V

    goto :goto_0
.end method

.method public final synthetic ˊ(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2305
    check-cast p1, Lio/senseai/kelvinsdk/Session;

    .line 2321
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;)Ljava/lang/String;

    .line 2322
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 2323
    iget-object v0, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget-object v1, v1, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    iget-object v2, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget v2, v2, Lio/senseai/kelvinsdk/If$3;->ˊ:I

    iget-object v3, p0, Lio/senseai/kelvinsdk/if;->ˊ:Lio/senseai/kelvinsdk/If$3;

    iget v3, v3, Lio/senseai/kelvinsdk/If$3;->ˎ:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;II)V

    .line 2305
    return-void
.end method
