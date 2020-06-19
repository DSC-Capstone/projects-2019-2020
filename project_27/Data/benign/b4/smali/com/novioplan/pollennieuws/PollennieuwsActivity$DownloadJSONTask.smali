.class public Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;
.super Landroid/os/AsyncTask;
.source "PollennieuwsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/PollennieuwsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadJSONTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/novioplan/pollennieuws/PollennieuwsApplication;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;


# direct methods
.method public constructor <init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .prologue
    const/4 v8, 0x0

    .line 350
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "doInBackground"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    aget-object v6, p1, v8

    iput-object v6, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 353
    const-string v4, "0"

    .line 354
    .local v4, "results":Ljava/lang/String;
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-boolean v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->isDownloadingJSON:Z

    if-eqz v5, :cond_0

    .line 355
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "json string already loading"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v4    # "results":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 358
    .restart local v4    # "results":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->isDownloadingJSON:Z

    .line 360
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "dateText":Ljava/lang/String;
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/novioplan/pollennieuws/data/Constants;->COUNTRY_DATA_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->countryJSONstring:Ljava/lang/String;

    .line 364
    sget-object v3, Lcom/novioplan/pollennieuws/data/Constants;->REGIONAL_DATA_URL:Ljava/lang/String;

    .line 366
    .local v3, "regionURL":Ljava/lang/String;
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->manager:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "Hey GPS staat uit"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->isDownloadingJSON:Z

    .line 369
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    const-string v6, ""

    iput-object v6, v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    .line 370
    const-string v4, "0"

    goto :goto_0

    .line 373
    :cond_1
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v5}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 374
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v5}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/novioplan/pollennieuws/data/LocationData;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 375
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "reload region html with lat lon"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "RELOAD IF"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v6, v6, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v6}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/novioplan/pollennieuws/data/LocationData;->getzLat()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&long="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v6, v6, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v6}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/novioplan/pollennieuws/data/LocationData;->getzLon()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    :goto_1
    const-string v5, "json"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetching region JOSN string with url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v5, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-static {v3}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    .line 390
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetched region JOSN string:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v7, v7, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iget-object v7, v7, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_2
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iput-boolean v8, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->isDownloadingJSON:Z

    .line 399
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "done fetching json"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 380
    :cond_3
    :try_start_1
    const-string v5, "json"

    const-string v6, "reload region html with region"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v6, "RELOAD ELSE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "municipality="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iget-object v6, v6, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v6}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/novioplan/pollennieuws/data/LocationData;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 392
    .end local v0    # "dateText":Ljava/lang/String;
    .end local v2    # "postFormater":Ljava/text/SimpleDateFormat;
    .end local v3    # "regionURL":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iput-boolean v8, v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->isDownloadingJSON:Z

    .line 396
    const-string v4, "0"

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/MessagesActivity;

    .line 409
    .local v0, "childAct":Lcom/novioplan/pollennieuws/MessagesActivity;
    sget-object v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v2, "postexecute json"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method
