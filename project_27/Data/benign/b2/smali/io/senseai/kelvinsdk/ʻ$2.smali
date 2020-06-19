.class final synthetic Lio/senseai/kelvinsdk/ʻ$2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic ˊ:[I

.field static final synthetic ˋ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lio/senseai/kelvinsdk/aux;->values()[Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˋ:[I

    :try_start_0
    sget-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˋ:[I

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˊ:Lio/senseai/kelvinsdk/aux;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/aux;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˋ:[I

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/aux;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˋ:[I

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/aux;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 236
    :goto_2
    invoke-static {}, Lio/senseai/kelvinsdk/OperatingMode;->values()[Lio/senseai/kelvinsdk/OperatingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˊ:[I

    :try_start_3
    sget-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˊ:[I

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_FAST:Lio/senseai/kelvinsdk/OperatingMode;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/OperatingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˊ:[I

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_SLOW:Lio/senseai/kelvinsdk/OperatingMode;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/OperatingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lio/senseai/kelvinsdk/ʻ$2;->ˊ:[I

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->TIMER:Lio/senseai/kelvinsdk/OperatingMode;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/OperatingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
