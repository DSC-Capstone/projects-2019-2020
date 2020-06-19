.class final Lio/senseai/kelvinsdk/If$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbdb",
        "<",
        "Lbmh",
        "<",
        "Lauw;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:I

.field private synthetic ˋ:Ljava/lang/String;

.field private synthetic ˎ:Lio/senseai/kelvinsdk/ˋ;

.field private synthetic ˏ:Ljava/lang/String;

.field private synthetic ᐝ:Lio/senseai/kelvinsdk/If;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/If;ILjava/lang/String;Lio/senseai/kelvinsdk/ˋ;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lio/senseai/kelvinsdk/If$1;->ᐝ:Lio/senseai/kelvinsdk/If;

    iput p2, p0, Lio/senseai/kelvinsdk/If$1;->ˊ:I

    iput-object p3, p0, Lio/senseai/kelvinsdk/If$1;->ˋ:Ljava/lang/String;

    iput-object p4, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    iput-object p5, p0, Lio/senseai/kelvinsdk/If$1;->ˏ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v2, 0x10

    .line 78
    check-cast p2, Lbmh;

    .line 1081
    if-eqz p1, :cond_4

    .line 1083
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_2

    .line 1085
    iget v0, p0, Lio/senseai/kelvinsdk/If$1;->ˊ:I

    if-ge v0, v2, :cond_0

    .line 1086
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ᐝ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$1;->ˋ:Ljava/lang/String;

    iget v2, p0, Lio/senseai/kelvinsdk/If$1;->ˊ:I

    iget-object v3, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Ljava/lang/String;ILio/senseai/kelvinsdk/ˋ;)V

    .line 1184
    :goto_0
    return-void

    .line 1088
    :cond_0
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1089
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1091
    :cond_1
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1092
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1095
    :cond_2
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1096
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1098
    :cond_3
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1099
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1102
    :cond_4
    invoke-virtual {p2}, Lbmh;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1104
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1105
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1107
    :cond_5
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1108
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1109
    :cond_6
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_d

    .line 1111
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    .line 1113
    invoke-virtual {p2}, Lbmh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauw;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lauw;->c(Ljava/lang/String;)Lauw;

    move-result-object v0

    .line 1114
    new-instance v2, Lauj;

    invoke-direct {v2}, Lauj;-><init>()V

    .line 1115
    const-class v3, Lio/senseai/kelvinsdk/Session;

    invoke-virtual {v2, v0, v3}, Lauj;->a(Laut;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/Session;

    .line 1116
    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v2

    .line 1117
    iget-object v3, p0, Lio/senseai/kelvinsdk/If$1;->ˋ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lio/senseai/kelvinsdk/Session;->setApiKey(Ljava/lang/String;)V

    .line 1118
    iget-object v3, p0, Lio/senseai/kelvinsdk/If$1;->ˏ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lio/senseai/kelvinsdk/Session;->setAndroidUuid(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v2}, Lio/senseai/kelvinsdk/Session;->getPortalDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/senseai/kelvinsdk/Session;->setPortalDevId(Ljava/lang/String;)V

    .line 1121
    if-nez v0, :cond_7

    .line 1123
    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ι()V

    .line 1124
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1125
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1126
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Lio/senseai/kelvinsdk/DeviceNotSupportedException;

    invoke-direct {v1}, Lio/senseai/kelvinsdk/DeviceNotSupportedException;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1128
    :cond_7
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1130
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/senseai/kelvinsdk/Session;->setDevice(Lio/senseai/kelvinsdk/DeviceObject;)V

    .line 1131
    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Session;)V

    .line 1132
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1133
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1134
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Lio/senseai/kelvinsdk/DeviceNotSupportedException;

    invoke-direct {v1}, Lio/senseai/kelvinsdk/DeviceNotSupportedException;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1137
    :cond_8
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getConfig()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v2

    .line 1138
    if-eqz v2, :cond_9

    .line 1139
    invoke-virtual {v2}, Lio/senseai/kelvinsdk/Configuration;->isMaster_switch()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1140
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1144
    :cond_9
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "A0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1145
    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v2

    .line 1147
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 1149
    :cond_a
    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Session;)V

    .line 1150
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1151
    iget-object v1, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v1, v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1155
    :cond_b
    invoke-virtual {v0, v2}, Lio/senseai/kelvinsdk/Session;->setDevice(Lio/senseai/kelvinsdk/DeviceObject;)V

    .line 1156
    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Session;)V

    .line 1157
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1158
    iget-object v1, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v1, v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1161
    :cond_c
    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Session;)V

    .line 1162
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1163
    iget-object v1, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v1, v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1167
    :cond_d
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_e

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_e

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_e

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_11

    .line 1170
    :cond_e
    iget v0, p0, Lio/senseai/kelvinsdk/If$1;->ˊ:I

    if-ge v0, v2, :cond_f

    .line 1171
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ᐝ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$1;->ˋ:Ljava/lang/String;

    iget v2, p0, Lio/senseai/kelvinsdk/If$1;->ˊ:I

    iget-object v3, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Ljava/lang/String;ILio/senseai/kelvinsdk/ˋ;)V

    goto/16 :goto_0

    .line 1174
    :cond_f
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1175
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1177
    :cond_10
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1178
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1180
    :cond_11
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x192

    if-ne v0, v1, :cond_12

    .line 1182
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1183
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1184
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Lio/senseai/kelvinsdk/DeviceLimitReachedException;

    invoke-direct {v1}, Lio/senseai/kelvinsdk/DeviceLimitReachedException;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1187
    :cond_12
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1188
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 1190
    :cond_13
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 1191
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$1;->ˎ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
