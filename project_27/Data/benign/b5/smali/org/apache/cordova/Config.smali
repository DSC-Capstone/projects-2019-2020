.class public Lorg/apache/cordova/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Config"

.field private static self:Lorg/apache/cordova/Config;


# instance fields
.field private startUrl:Ljava/lang/String;

.field private whitelist:Lorg/apache/cordova/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/cordova/Whitelist;

    invoke-direct {v0}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 21
    .param p1, "action"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v17, Lorg/apache/cordova/Whitelist;

    invoke-direct/range {v17 .. v17}, Lorg/apache/cordova/Whitelist;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    .line 66
    if-nez p1, :cond_1

    .line 67
    const-string v17, "CordovaLog"

    const-string v18, "There is no activity. Is this on the lock screen?"

    invoke-static/range {v17 .. v18}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "config"

    const-string v19, "xml"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 73
    .local v5, "id":I
    if-nez v5, :cond_2

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "config"

    const-string v19, "xml"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    const-string v17, "CordovaLog"

    const-string v18, "config.xml missing. Ignoring..."

    invoke-static/range {v17 .. v18}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    move-object/from16 v17, v0

    const-string v18, "file:///*"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    move-object/from16 v17, v0

    const-string v18, "content:///*"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    move-object/from16 v17, v0

    const-string v18, "data:*"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 88
    .local v16, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v4, -0x1

    .line 89
    .local v4, "eventType":I
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_0

    .line 90
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    .line 91
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "strNode":Ljava/lang/String;
    const-string v17, "access"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 94
    const/16 v17, 0x0

    const-string v18, "origin"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "origin":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "subdomains"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, "subdomains":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    move-object/from16 v18, v0

    if-eqz v14, :cond_4

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 190
    .end local v9    # "origin":Ljava/lang/String;
    .end local v13    # "strNode":Ljava/lang/String;
    .end local v14    # "subdomains":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_1

    .line 97
    .restart local v9    # "origin":Ljava/lang/String;
    .restart local v13    # "strNode":Ljava/lang/String;
    .restart local v14    # "subdomains":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 100
    .end local v9    # "origin":Ljava/lang/String;
    .end local v14    # "subdomains":Ljava/lang/String;
    :cond_5
    const-string v17, "log"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 101
    const/16 v17, 0x0

    const-string v18, "level"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "level":Ljava/lang/String;
    const-string v17, "Config"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "The <log> tag is deprecated. Use <preference name=\"loglevel\" value=\""

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\"/> instead."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v6, :cond_3

    .line 104
    invoke-static {v6}, Lorg/apache/cordova/LOG;->setLogLevel(Ljava/lang/String;)V

    goto :goto_3

    .line 107
    .end local v6    # "level":Ljava/lang/String;
    :cond_6
    const-string v17, "preference"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 108
    const/16 v17, 0x0

    const-string v18, "name"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "name":Ljava/lang/String;
    const-string v17, "LogLevel"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 119
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .restart local v6    # "level":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/cordova/LOG;->setLogLevel(Ljava/lang/String;)V

    goto :goto_3

    .line 121
    .end local v6    # "level":Ljava/lang/String;
    :cond_7
    const-string v17, "SplashScreen"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 122
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, "value":Ljava/lang/String;
    const/4 v10, 0x0

    .line 124
    .local v10, "resource":I
    if-nez v15, :cond_8

    .line 126
    const-string v15, "splash"

    .line 128
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "drawable"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 132
    .end local v10    # "resource":I
    .end local v15    # "value":Ljava/lang/String;
    :cond_9
    const-string v17, "BackgroundColor"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 133
    const/16 v17, 0x0

    const-string v18, "value"

    const/high16 v19, -0x1000000

    invoke-interface/range {v16 .. v19}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 134
    .local v15, "value":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 136
    .end local v15    # "value":I
    :cond_a
    const-string v17, "LoadUrlTimeoutValue"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 137
    const/16 v17, 0x0

    const-string v18, "value"

    const/16 v19, 0x4e20

    invoke-interface/range {v16 .. v19}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 138
    .restart local v15    # "value":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 140
    .end local v15    # "value":I
    :cond_b
    const-string v17, "SplashScreenDelay"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 141
    const/16 v17, 0x0

    const-string v18, "value"

    const/16 v19, 0xbb8

    invoke-interface/range {v16 .. v19}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 142
    .restart local v15    # "value":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 144
    .end local v15    # "value":I
    :cond_c
    const-string v17, "KeepRunning"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 146
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 147
    .local v15, "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 149
    .end local v15    # "value":Z
    :cond_d
    const-string v17, "InAppBrowserStorageEnabled"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 151
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 152
    .restart local v15    # "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 154
    .end local v15    # "value":Z
    :cond_e
    const-string v17, "DisallowOverscroll"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 156
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 157
    .restart local v15    # "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 161
    .end local v15    # "value":Z
    :cond_f
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "value":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 168
    .end local v8    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_10
    const-string v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 169
    const/16 v17, 0x0

    const-string v18, "src"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "src":Ljava/lang/String;
    const-string v17, "CordovaLog"

    const-string v18, "Found start page location: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    if-eqz v12, :cond_3

    .line 174
    const-string v17, "^[a-z-]+://"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 175
    .local v11, "schemeRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 176
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 177
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 179
    :cond_11
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 180
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 182
    :cond_12
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "file:///android_asset/www/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 191
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "schemeRegex":Ljava/util/regex/Pattern;
    .end local v12    # "src":Ljava/lang/String;
    .end local v13    # "strNode":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 192
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 193
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v3

    .line 194
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static addWhiteListEntry(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "subdomains"    # Z

    .prologue
    .line 206
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v0, v0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    invoke-virtual {v0, p0, p1}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v0, v0, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    const-string v0, "file:///android_asset/www/index.html"

    .line 229
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v0, v0, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/apache/cordova/Config;

    invoke-direct {v0}, Lorg/apache/cordova/Config;-><init>()V

    sput-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    .line 59
    :cond_0
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "action"    # Landroid/app/Activity;

    .prologue
    .line 51
    new-instance v0, Lorg/apache/cordova/Config;

    invoke-direct {v0, p0}, Lorg/apache/cordova/Config;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    .line 52
    return-void
.end method

.method public static isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v0, v0, Lorg/apache/cordova/Config;->whitelist:Lorg/apache/cordova/Whitelist;

    invoke-virtual {v0, p0}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
