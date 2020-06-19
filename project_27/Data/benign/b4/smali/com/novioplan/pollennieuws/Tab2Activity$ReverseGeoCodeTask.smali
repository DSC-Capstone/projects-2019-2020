.class Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;
.super Landroid/os/AsyncTask;
.source "Tab2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/Tab2Activity;
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
.field final synthetic this$0:Lcom/novioplan/pollennieuws/Tab2Activity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 66
    aget-object v4, p1, v5

    .line 68
    .local v4, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "restResult":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "rest":Lorg/json/JSONObject;
    const-string v5, "results"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 72
    .local v3, "resultsArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 75
    .end local v1    # "rest":Lorg/json/JSONObject;
    .end local v2    # "restResult":Ljava/lang/String;
    .end local v3    # "resultsArray":Lorg/json/JSONArray;
    :goto_0
    return-object v5

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v5, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "populating web view["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-static {v2}, Lcom/novioplan/pollennieuws/Tab2Activity;->access$000(Lcom/novioplan/pollennieuws/Tab2Activity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab2Activity;->access$000(Lcom/novioplan/pollennieuws/Tab2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
