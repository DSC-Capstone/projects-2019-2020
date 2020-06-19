.class Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;
.super Landroid/os/AsyncTask;
.source "PollennieuwsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/PollennieuwsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReverseGeoCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 244
    const/16 v24, 0x0

    aget-object v23, p1, v24

    .line 245
    .local v23, "url":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "reverse geocode url:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :try_start_0
    invoke-static/range {v23 .. v23}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, "restResult":Ljava/lang/String;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v16, "rest":Lorg/json/JSONObject;
    const-string v24, "results"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 251
    .local v18, "resultsArray":Lorg/json/JSONArray;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "reverse geocode json result= ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v13, 0x0

    .line 253
    .local v13, "jsonObj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->access$002(Lcom/novioplan/pollennieuws/PollennieuwsActivity;Z)Z

    .line 254
    const/16 v22, 0x0

    .local v22, "typeCount":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 255
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "jsonObj":Lorg/json/JSONObject;
    check-cast v13, Lorg/json/JSONObject;

    .line 256
    .restart local v13    # "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v21

    .line 257
    .local v21, "typeArray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_9

    .line 258
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 259
    .local v20, "type":Ljava/lang/String;
    const-string v24, "address_components"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 260
    const-string v24, "address_components"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 261
    .local v10, "googleAddrCompArr":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_8

    .line 262
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 263
    .local v4, "address_components":Lorg/json/JSONObject;
    const-string v24, "types"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 264
    .local v2, "_typeArray":Lorg/json/JSONArray;
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v24 .. v24}, Ljava/io/PrintStream;->println()V

    .line 265
    const/4 v3, 0x0

    .local v3, "_typeCount":I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v3, v0, :cond_7

    .line 266
    const-string v24, "locality"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 267
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 268
    .local v14, "locality":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "locality = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/novioplan/pollennieuws/data/LocationData;->setzCity(Ljava/lang/String;)V

    .line 265
    .end local v14    # "locality":Ljava/lang/String;
    :cond_0
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 270
    :cond_1
    const-string v24, "neighborhood"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 271
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, "neighborhood":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "neighborhood = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/novioplan/pollennieuws/data/LocationData;->setzNeighborhood(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 307
    .end local v2    # "_typeArray":Lorg/json/JSONArray;
    .end local v3    # "_typeCount":I
    .end local v4    # "address_components":Lorg/json/JSONObject;
    .end local v10    # "googleAddrCompArr":Lorg/json/JSONArray;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v13    # "jsonObj":Lorg/json/JSONObject;
    .end local v15    # "neighborhood":Ljava/lang/String;
    .end local v16    # "rest":Lorg/json/JSONObject;
    .end local v17    # "restResult":Ljava/lang/String;
    .end local v18    # "resultsArray":Lorg/json/JSONArray;
    .end local v20    # "type":Ljava/lang/String;
    .end local v21    # "typeArray":Lorg/json/JSONArray;
    .end local v22    # "typeCount":I
    :catch_0
    move-exception v9

    .line 308
    .local v9, "exc":Ljava/lang/Exception;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v17, 0x0

    .end local v9    # "exc":Ljava/lang/Exception;
    :goto_5
    return-object v17

    .line 274
    .restart local v2    # "_typeArray":Lorg/json/JSONArray;
    .restart local v3    # "_typeCount":I
    .restart local v4    # "address_components":Lorg/json/JSONObject;
    .restart local v10    # "googleAddrCompArr":Lorg/json/JSONArray;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .restart local v13    # "jsonObj":Lorg/json/JSONObject;
    .restart local v16    # "rest":Lorg/json/JSONObject;
    .restart local v17    # "restResult":Ljava/lang/String;
    .restart local v18    # "resultsArray":Lorg/json/JSONArray;
    .restart local v20    # "type":Ljava/lang/String;
    .restart local v21    # "typeArray":Lorg/json/JSONArray;
    .restart local v22    # "typeCount":I
    :cond_2
    :try_start_1
    const-string v24, "administrative_area_level_1"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 275
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "admin1":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "admin1 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/novioplan/pollennieuws/data/LocationData;->setzState(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 278
    .end local v5    # "admin1":Ljava/lang/String;
    :cond_3
    const-string v24, "administrative_area_level_2"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 279
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "admin2":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "admin2 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/novioplan/pollennieuws/data/LocationData;->setzSubAdministrativeArea(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 282
    .end local v6    # "admin2":Ljava/lang/String;
    :cond_4
    const-string v24, "administrative_area_level_3"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 283
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "admin3":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "admin3 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/novioplan/pollennieuws/data/LocationData;->setzProvince(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 286
    .end local v7    # "admin3":Ljava/lang/String;
    :cond_5
    const-string v24, "country"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 287
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "country":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "country = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/novioplan/pollennieuws/data/LocationData;->setzCountry(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 290
    .end local v8    # "country":Ljava/lang/String;
    :cond_6
    const-string v24, "route"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 291
    const-string v24, "long_name"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 292
    .local v19, "route":Ljava/lang/String;
    sget-object v24, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "route = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/LocationData;->setzSubLocality(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 261
    .end local v19    # "route":Ljava/lang/String;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 297
    .end local v2    # "_typeArray":Lorg/json/JSONArray;
    .end local v3    # "_typeCount":I
    .end local v4    # "address_components":Lorg/json/JSONObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->access$002(Lcom/novioplan/pollennieuws/PollennieuwsActivity;Z)Z

    .line 301
    .end local v10    # "googleAddrCompArr":Lorg/json/JSONArray;
    .end local v12    # "j":I
    .end local v20    # "type":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->access$000(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 305
    .end local v11    # "i":I
    .end local v21    # "typeArray":Lorg/json/JSONArray;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->setLocationObservaton(Lcom/novioplan/pollennieuws/data/LocationData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 257
    .restart local v11    # "i":I
    .restart local v20    # "type":Ljava/lang/String;
    .restart local v21    # "typeArray":Lorg/json/JSONArray;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 254
    .end local v20    # "type":Ljava/lang/String;
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->jsonTask:Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v3, v3, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    .line 317
    return-void
.end method
