.class final Lio/senseai/kelvinsdk/RawData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ˏ:J


# instance fields
.field private ˊ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private ˋ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ˎ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x1e0

    sput-wide v0, Lio/senseai/kelvinsdk/RawData;->ˏ:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˋ:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˎ:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method public final ʻ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˋ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ʼ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_volt:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ʽ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ʾ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->charging_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ʿ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˈ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˉ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_humidity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˊ()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1089
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    sget-wide v6, Lio/senseai/kelvinsdk/RawData;->ˏ:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1090
    const/4 v1, 0x1

    .line 62
    :goto_1
    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1092
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_2
    return-void

    .line 68
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final ˊ(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2089
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    sget-wide v6, Lio/senseai/kelvinsdk/RawData;->ˏ:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 2090
    const/4 v1, 0x1

    .line 77
    :goto_1
    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2092
    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_2
    return-void

    .line 82
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final ˊ(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˋ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˎ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˋ:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˎ:Ljava/util/ArrayList;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    return-void
.end method

.method public final ˋ()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 122
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    return-object v0
.end method

.method public final ˌ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_light:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˍ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_pressure:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˎ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˏ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ˑ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_proximity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ͺ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp_adc:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ـ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_x:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ᐝ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_load:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ᐧ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_y:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ᐨ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_z:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ι()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lio/senseai/kelvinsdk/RawData;->ˊ:Ljava/util/HashMap;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->screen_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
