.class public Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ˊ:Lio/senseai/kelvinsdk/RawData;

.field private ˋ:Landroid/hardware/SensorManager;

.field private ˎ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/senseai/kelvinsdk/RawData;DLio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p5, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˎ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;

    .line 136
    iput-object p2, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    .line 137
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˋ:Landroid/hardware/SensorManager;

    .line 138
    invoke-virtual {p0, p3, p4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->doCalc(D)V

    .line 139
    return-void
.end method

.method private static ˊ(Ljava/util/List;)Ljava/lang/Double;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .prologue
    .line 219
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 222
    :cond_1
    const-wide/16 v0, 0x0

    .line 223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 225
    goto :goto_1

    .line 226
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public doCalc(D)V
    .locals 5

    .prologue
    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    const-string v0, "timestamp_averages"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 145
    const-string v0, "charge_state"

    .line 1203
    iget-object v2, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/RawData;->ʾ()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 146
    const-string v0, "screen_state"

    .line 1215
    iget-object v2, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/RawData;->ι()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 148
    iget-object v0, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˋ:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 151
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 152
    const-string v3, "temp"

    .line 2181
    iget-object v4, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData;->ʿ()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v4

    .line 152
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 155
    const-string v3, "amb_temp"

    .line 2185
    iget-object v4, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData;->ˈ()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v4

    .line 155
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 157
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 158
    const-string v3, "humidity"

    .line 2199
    iget-object v4, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData;->ˉ()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v4

    .line 158
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 160
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 161
    const-string v3, "light"

    .line 2207
    iget-object v4, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData;->ˌ()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v4

    .line 161
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 163
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 164
    const-string v3, "pressure"

    .line 2211
    iget-object v4, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData;->ˍ()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v4

    .line 164
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 166
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 167
    const-string v3, "proximity"

    .line 3195
    iget-object v4, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData;->ˑ()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v4

    .line 167
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 169
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 170
    const-string v0, "mag_x"

    .line 4188
    iget-object v3, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/RawData;->ـ()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 171
    const-string v0, "mag_y"

    .line 4190
    iget-object v3, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/RawData;->ᐧ()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v3

    .line 171
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 172
    const-string v0, "mag_z"

    .line 4192
    iget-object v3, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/RawData;->ᐨ()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˊ(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v3

    .line 172
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 176
    :cond_7
    iget-object v0, p0, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->ˎ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;->onDiagnosticDataProcessed(Landroid/content/ContentValues;)V

    .line 178
    return-void
.end method
