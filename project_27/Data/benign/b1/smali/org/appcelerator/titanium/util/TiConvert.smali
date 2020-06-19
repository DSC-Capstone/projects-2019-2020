.class public Lorg/appcelerator/titanium/util/TiConvert;
.super Ljava/lang/Object;
.source "TiConvert.java"


# static fields
.field public static final ASSET_URL:Ljava/lang/String; = "file:///android_asset/"

.field private static final DBG:Z

.field public static final JSON_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final LCAT:Ljava/lang/String; = "TiConvert"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConvert;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z
    .locals 10
    .param p1, "layoutParams"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "dirty":Z
    const/4 v3, 0x0

    .line 158
    .local v3, "width":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 159
    .local v1, "height":Ljava/lang/Object;
    const-string v5, "size"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const-string v5, "size"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 161
    .local v2, "size":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "width"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 162
    const-string v5, "height"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    .end local v1    # "height":Ljava/lang/Object;
    .end local v2    # "size":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "width":Ljava/lang/Object;
    :cond_0
    const-string v5, "left"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    const-string v5, "left"

    invoke-static {p0, v5, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 167
    const/4 v0, 0x1

    .line 170
    :cond_1
    const-string v5, "top"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    const-string v5, "top"

    const/4 v6, 0x3

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 172
    const/4 v0, 0x1

    .line 175
    :cond_2
    const-string v5, "center"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    const-string v5, "center"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 177
    const/4 v0, 0x1

    .line 180
    :cond_3
    const-string v5, "right"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    const-string v5, "right"

    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 182
    const/4 v0, 0x1

    .line 185
    :cond_4
    const-string v5, "bottom"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    const-string v5, "bottom"

    const/4 v6, 0x5

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 187
    const/4 v0, 0x1

    .line 190
    :cond_5
    if-nez v3, :cond_6

    const-string v5, "width"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 191
    :cond_6
    if-nez v3, :cond_7

    .line 193
    const-string v5, "width"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 196
    :cond_7
    if-eqz v3, :cond_8

    const-string v5, "auto"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 197
    :cond_8
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 198
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 204
    :goto_0
    const/4 v0, 0x1

    .line 207
    :cond_9
    if-nez v1, :cond_a

    const-string v5, "height"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 208
    :cond_a
    if-nez v1, :cond_b

    .line 210
    const-string v5, "height"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 213
    :cond_b
    if-eqz v1, :cond_c

    const-string v5, "auto"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 214
    :cond_c
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 215
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 221
    :goto_1
    const/4 v0, 0x1

    .line 224
    :cond_d
    const-string v5, "zIndex"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 225
    const-string v5, "zIndex"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, "zIndex":Ljava/lang/Object;
    if-eqz v4, :cond_12

    .line 227
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 232
    :goto_2
    const/4 v0, 0x1

    .line 235
    .end local v4    # "zIndex":Ljava/lang/Object;
    :cond_e
    const-string v5, "transform"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 236
    const-string v5, "transform"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 239
    :cond_f
    return v0

    .line 201
    :cond_10
    const/4 v5, 0x6

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 202
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    goto :goto_0

    .line 218
    :cond_11
    const/4 v5, 0x7

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 219
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    goto :goto_1

    .line 230
    .restart local v4    # "zIndex":Ljava/lang/Object;
    :cond_12
    iput v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto :goto_2
.end method

.method public static putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p0, "d"    # Lorg/appcelerator/kroll/KrollDict;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 46
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_0

    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/Number;

    if-nez v15, :cond_0

    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/Boolean;

    if-nez v15, :cond_0

    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/util/Date;

    if-eqz v15, :cond_1

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object p2

    .line 49
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v15, :cond_3

    .line 50
    new-instance v11, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v11}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .local v11, "nd":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v4, p2

    .line 51
    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .line 52
    .local v4, "dict":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 53
    .local v8, "k":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11, v8, v15}, Lorg/appcelerator/titanium/util/TiConvert;->putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    .end local v8    # "k":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-object/from16 p2, v11

    .line 58
    .local p2, "value":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0

    .end local v4    # "dict":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "nd":Lorg/appcelerator/kroll/KrollDict;
    .local p2, "value":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    instance-of v15, v0, [Ljava/lang/Object;

    if-eqz v15, :cond_c

    move-object/from16 v15, p2

    .line 59
    check-cast v15, [Ljava/lang/Object;

    move-object v2, v15

    check-cast v2, [Ljava/lang/Object;

    .line 60
    .local v2, "a":[Ljava/lang/Object;
    array-length v9, v2

    .line 61
    .local v9, "len":I
    if-lez v9, :cond_b

    .line 62
    const/4 v15, 0x0

    aget-object v14, v2, v15

    .line 63
    .local v14, "v":Ljava/lang/Object;
    sget-boolean v15, Lorg/appcelerator/titanium/util/TiConvert;->DBG:Z

    if-eqz v15, :cond_4

    .line 64
    if-eqz v14, :cond_5

    .line 65
    const-string v15, "TiConvert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Array member is type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_4
    :goto_2
    if-eqz v14, :cond_7

    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 73
    new-array v13, v9, [Ljava/lang/String;

    .line 74
    .local v13, "sa":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_6

    .line 75
    aget-object v15, v2, v5

    check-cast v15, Ljava/lang/String;

    aput-object v15, v13, v5

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 68
    .end local v5    # "i":I
    .end local v13    # "sa":[Ljava/lang/String;
    :cond_5
    const-string v15, "TiConvert"

    const-string v16, "First member of array is null"

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    .restart local v5    # "i":I
    .restart local v13    # "sa":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    .end local v5    # "i":I
    .end local v13    # "sa":[Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_9

    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_9

    .line 80
    new-array v3, v9, [D

    .line 81
    .local v3, "da":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v9, :cond_8

    .line 82
    aget-object v15, v2, v5

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    aput-wide v15, v3, v5

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 84
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 96
    .end local v3    # "da":[D
    .end local v5    # "i":I
    :cond_9
    new-array v12, v9, [Ljava/lang/Object;

    .line 97
    .local v12, "oa":[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v9, :cond_a

    .line 98
    aget-object v15, v2, v5

    aput-object v15, v12, v5

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 100
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v5    # "i":I
    .end local v12    # "oa":[Ljava/lang/Object;
    .end local v14    # "v":Ljava/lang/Object;
    :cond_b
    move-object/from16 v15, p2

    .line 105
    check-cast v15, [Ljava/lang/Object;

    check-cast v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v9    # "len":I
    :cond_c
    if-nez p2, :cond_d

    .line 109
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :cond_d
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v15, :cond_e

    .line 112
    invoke-virtual/range {p0 .. p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 114
    :cond_e
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/util/Map;

    if-eqz v15, :cond_10

    .line 115
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v4    # "dict":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v10, p2

    .line 116
    check-cast v10, Ljava/util/Map;

    .line 117
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 118
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 120
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 121
    .restart local v8    # "k":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v8, v15}, Lorg/appcelerator/titanium/util/TiConvert;->putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 123
    .end local v8    # "k":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    .end local v4    # "dict":Lorg/appcelerator/kroll/KrollDict;
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_10
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported property type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method public static toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p0, Lorg/appcelerator/titanium/TiBlob;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0
.end method

.method public static toBlob(Ljava/util/HashMap;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/titanium/TiBlob;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "object":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 276
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 277
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 280
    :goto_0
    return v0

    .line 279
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 280
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 283
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to boolean."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toColor(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toColor(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public static toColorDrawable(Ljava/util/HashMap;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/ColorDrawable;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static toDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 553
    instance-of v2, p0, Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 554
    check-cast p0, Ljava/util/Date;

    .line 562
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "millis":J
    :goto_0
    return-object p0

    .line 556
    .end local v0    # "millis":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 557
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 559
    .restart local v0    # "millis":J
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 562
    .end local v0    # "millis":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 339
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 340
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 346
    :goto_0
    return-wide v0

    .line 342
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 343
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 345
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 346
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 349
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDouble(Ljava/util/HashMap;Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toErrorObject(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p0, "code"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 434
    .local v0, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v1, "e":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-object v0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 318
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 319
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 321
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 322
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    goto :goto_0

    .line 324
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 325
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 328
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toFloat(Ljava/util/HashMap;Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 294
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 295
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 304
    :goto_0
    return v0

    .line 297
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 298
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 300
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 301
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0

    .line 303
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 304
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 307
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 456
    const/4 v2, 0x0

    .line 493
    :cond_0
    return-object v2

    .line 458
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 460
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 462
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 463
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 464
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    .end local v4    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to JSON encode key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    .line 467
    check-cast v4, Ljava/lang/Number;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 469
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 470
    check-cast v4, Ljava/lang/String;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 472
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 473
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 475
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_6

    .line 476
    check-cast v4, Ljava/util/Date;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 478
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_7

    .line 479
    check-cast v4, Ljava/util/HashMap;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 481
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 482
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "o":Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 485
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_8
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 8
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 498
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 499
    .local v2, "ja":Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_8

    aget-object v4, v0, v1

    .line 500
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 501
    sget-boolean v5, Lorg/appcelerator/titanium/util/TiConvert;->DBG:Z

    if-eqz v5, :cond_0

    .line 502
    const-string v5, "TiConvert"

    const-string v6, "Skipping null value in array"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v4    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 513
    check-cast v4, Ljava/lang/Number;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 515
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 516
    check-cast v4, Ljava/lang/String;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 518
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 519
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 521
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_5

    .line 522
    check-cast v4, Ljava/util/Date;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 524
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_6

    .line 525
    check-cast v4, Ljava/util/HashMap;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 527
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 528
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "o":Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 531
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_7
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 535
    .end local v4    # "o":Ljava/lang/Object;
    :cond_8
    return-object v2
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 540
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 541
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "df":Ljava/text/DateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 544
    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 547
    .end local v0    # "df":Ljava/text/DateFormat;
    :goto_0
    return-object v1

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 370
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 362
    move-object v0, p1

    .line 365
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/Object;

    .prologue
    .line 380
    if-eqz p0, :cond_0

    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 381
    .local v1, "sparts":[Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_2

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 383
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    aput-object v2, v1, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "i":I
    .end local v1    # "sparts":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0

    .line 383
    .restart local v0    # "i":I
    .restart local v1    # "sparts":[Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 387
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public static toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "valueType"    # I

    .prologue
    .line 398
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    return-object v0
.end method

.method public static toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "valueType"    # I

    .prologue
    .line 393
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/appcelerator/titanium/TiDimension;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    return-object v0
.end method

.method public static toURL(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "layoutParams"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    instance-of v3, p0, Ljava/util/HashMap;

    if-eqz v3, :cond_2

    move-object v0, p0

    .line 245
    check-cast v0, Ljava/util/HashMap;

    .line 246
    .local v0, "center":Ljava/util/HashMap;
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "x":Ljava/lang/Object;
    const-string v3, "y"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "y":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 250
    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 256
    :goto_0
    if-eqz v2, :cond_1

    .line 257
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 271
    .end local v0    # "center":Ljava/util/HashMap;
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "y":Ljava/lang/Object;
    :goto_1
    return-void

    .line 253
    .restart local v0    # "center":Ljava/util/HashMap;
    .restart local v1    # "x":Ljava/lang/Object;
    .restart local v2    # "y":Ljava/lang/Object;
    :cond_0
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 260
    :cond_1
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1

    .line 263
    .end local v0    # "center":Ljava/util/HashMap;
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "y":Ljava/lang/Object;
    :cond_2
    if-eqz p0, :cond_3

    .line 264
    invoke-static {p0, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 265
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1

    .line 268
    :cond_3
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 269
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1
.end method
