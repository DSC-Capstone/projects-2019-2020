.class public Lboy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lio/senseai/kelvinsdk/Temperature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lboy;->a:Lio/senseai/kelvinsdk/Temperature;

    return-void
.end method

.method public static a()Lio/senseai/kelvinsdk/Temperature;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lboy;->a:Lio/senseai/kelvinsdk/Temperature;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    sget v0, Lboo;->a:I

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lboo;->a:I

    if-lt v0, v2, :cond_0

    .line 40
    invoke-static {p0}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v0

    const-string v1, "KelvinTile"

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/app/CMStatusBarManager;->removeTile(Ljava/lang/String;I)V

    .line 47
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V
    .locals 2

    .prologue
    .line 51
    sget v0, Lboo;->a:I

    if-eqz v0, :cond_0

    .line 52
    sget v0, Lboo;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 54
    if-eqz p1, :cond_0

    invoke-static {p0}, Lbpr;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbpr;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Lboy;->b(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V

    .line 68
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V
    .locals 8

    .prologue
    const/high16 v5, 0x10000000

    const/high16 v4, 0x8000000

    const/4 v2, 0x0

    .line 72
    sput-object p1, Lboy;->a:Lio/senseai/kelvinsdk/Temperature;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.senseai.kelvin.cyanogentile.ACTION_TILE_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.senseai.kelvin.cyanogentile.ACTION_TILE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 82
    invoke-static {p0}, Lbpr;->a(Landroid/content/Context;)Lbpn;

    move-result-object v5

    .line 83
    const-string v6, "full"

    .line 84
    const-string v7, "tile_"

    .line 88
    sget-object v0, Lbpn;->a:Lbpn;

    invoke-virtual {v0, v5}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "c"

    move-object v2, v0

    .line 96
    :goto_0
    if-eqz p1, :cond_6

    .line 98
    sget-object v0, Lbpn;->a:Lbpn;

    invoke-virtual {v5, v0}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    move v1, v0

    .line 105
    :goto_1
    if-gez v1, :cond_5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lbpn;->a:Lbpn;

    invoke-virtual {v5, v0}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    const v0, 0x7f0200c0

    .line 132
    :cond_0
    :goto_4
    :try_start_0
    new-instance v1, Lcyanogenmod/app/CustomTile$Builder;

    invoke-direct {v1, p0}, Lcyanogenmod/app/CustomTile$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcyanogenmod/app/CustomTile$Builder;->setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcyanogenmod/app/CustomTile$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v1

    const-string v2, "Thermometer"

    invoke-virtual {v1, v2}, Lcyanogenmod/app/CustomTile$Builder;->setLabel(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcyanogenmod/app/CustomTile$Builder;->setIcon(I)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcyanogenmod/app/CustomTile$Builder;->shouldCollapsePanel(Z)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/app/CustomTile$Builder;->build()Lcyanogenmod/app/CustomTile;

    move-result-object v0

    .line 139
    invoke-static {p0}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v1

    const-string v2, "KelvinTile"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcyanogenmod/app/CMStatusBarManager;->publishTile(Ljava/lang/String;ILcyanogenmod/app/CustomTile;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_5
    return-void

    .line 90
    :cond_1
    sget-object v0, Lbpn;->b:Lbpn;

    invoke-virtual {v0, v5}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const-string v0, "f"

    move-object v2, v0

    goto/16 :goto_0

    .line 93
    :cond_2
    const-string v0, "k"

    move-object v2, v0

    goto/16 :goto_0

    .line 100
    :cond_3
    sget-object v0, Lbpn;->b:Lbpn;

    invoke-virtual {v5, v0}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTempF()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 103
    :cond_4
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTempK()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "p"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 113
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 123
    :cond_7
    sget-object v0, Lbpn;->b:Lbpn;

    invoke-virtual {v5, v0}, Lbpn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    const v0, 0x7f0200c1

    goto/16 :goto_4

    .line 126
    :cond_8
    const v0, 0x7f0200c2

    goto/16 :goto_4

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 142
    const-string v1, "CyanogenTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Tile could not be added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
