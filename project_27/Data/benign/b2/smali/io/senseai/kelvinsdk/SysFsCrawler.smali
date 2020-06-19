.class Lio/senseai/kelvinsdk/SysFsCrawler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static ˊ:Ljava/lang/String;


# instance fields
.field private ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

.field private ˎ:Landroid/content/Context;

.field private ˏ:Lio/senseai/kelvinsdk/DeviceObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/senseai/kelvinsdk/SysFsCrawler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LOG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˊ:Ljava/lang/String;

    .line 51
    const-string v0, "kelvinNDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/SysFsCrawler$Listener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    .line 35
    iput-object p1, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˎ:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˏ:Lio/senseai/kelvinsdk/DeviceObject;

    .line 37
    return-void
.end method

.method private static native scanFileJNI(Ljava/lang/String;)I
.end method

.method private static ˊ(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const/16 v2, 0x2800

    new-array v2, v2, [C

    .line 165
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 167
    :goto_0
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-lez v4, :cond_0

    .line 168
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    .line 171
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    throw v1

    .line 171
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 173
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v11, -0x3e7

    const/4 v2, 0x0

    .line 41
    .line 1057
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˏ:Lio/senseai/kelvinsdk/DeviceObject;

    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileFailed()V

    .line 1158
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˏ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getDeviceSpecificFiles()Ljava/util/List;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1066
    :cond_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileValidated()V

    goto :goto_0

    .line 1070
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 1072
    iget-object v3, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˎ:Landroid/content/Context;

    invoke-static {v3}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v5

    .line 1181
    invoke-static {v0}, Lio/senseai/kelvinsdk/SysFsCrawler;->scanFileJNI(Ljava/lang/String;)I

    move-result v0

    .line 1182
    if-eq v0, v11, :cond_3

    move v0, v1

    .line 1076
    :goto_1
    if-eqz v0, :cond_4

    .line 1078
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileValidated()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1185
    goto :goto_1

    .line 1083
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "ls /sys/devices -R"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1084
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1085
    invoke-static {v3}, Lio/senseai/kelvinsdk/SysFsCrawler;->ˊ(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    if-nez v3, :cond_5

    .line 1087
    iget-object v4, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v4}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileFailed()V

    .line 1089
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1096
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1098
    const-string v0, "^(/sys/devices/qpnp-charger-ee)([0-9a-fA-F]+)(/power_supply/battery:)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1102
    const-string v0, "^(temp)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    move v0, v2

    .line 1106
    :goto_2
    array-length v3, v6

    if-ge v0, v3, :cond_9

    .line 1108
    aget-object v3, v6, v0

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1109
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1110
    aget-object v3, v6, v0

    .line 1112
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_6

    .line 1113
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1120
    :cond_6
    :goto_3
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v6, v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x2f

    if-eq v4, v9, :cond_8

    .line 1121
    add-int/lit8 v4, v0, 0x1

    aget-object v0, v6, v4

    .line 1123
    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1125
    aget-object v0, v6, v4

    .line 1127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2181
    invoke-static {v9}, Lio/senseai/kelvinsdk/SysFsCrawler;->scanFileJNI(Ljava/lang/String;)I

    move-result v0

    .line 2182
    if-eq v0, v11, :cond_7

    move v0, v1

    .line 1128
    :goto_4
    if-eqz v0, :cond_a

    .line 1132
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˏ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getDeviceSpecificFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 1133
    iget-object v1, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˏ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/DeviceObject;->getDeviceSpecificFiles()Ljava/util/List;

    move-result-object v1

    .line 1135
    new-instance v2, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/DeviceSpecificFile;-><init>()V

    .line 1136
    invoke-virtual {v2, v9}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->setFilename(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getScalar()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->setScalar(I)V

    .line 1139
    const/4 v0, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-virtual {v5, v1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Ljava/util/List;)V

    .line 1141
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileValidated()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    sget-object v1, Lio/senseai/kelvinsdk/SysFsCrawler;->ˊ:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1153
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileFailed()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 2185
    goto :goto_4

    .line 1106
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1148
    :cond_9
    :try_start_1
    invoke-virtual {v5}, Lio/senseai/kelvinsdk/ᐝ;->ι()V

    .line 1149
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileFailed()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1154
    :catch_1
    move-exception v0

    .line 1155
    sget-object v1, Lio/senseai/kelvinsdk/SysFsCrawler;->ˊ:Ljava/lang/String;

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1157
    iget-object v0, p0, Lio/senseai/kelvinsdk/SysFsCrawler;->ˋ:Lio/senseai/kelvinsdk/SysFsCrawler$Listener;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/SysFsCrawler$Listener;->onFileFailed()V

    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto/16 :goto_3
.end method
