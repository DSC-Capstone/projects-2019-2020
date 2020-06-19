.class Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;
.super Ljava/lang/Object;
.source "TiAnalyticsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

.field final synthetic val$self:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/analytics/TiAnalyticsService;ILorg/appcelerator/titanium/analytics/TiAnalyticsService;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    iput p2, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$startId:I

    iput-object p3, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$self:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 80
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Analytics Service Started"

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$000(Lorg/appcelerator/titanium/analytics/TiAnalyticsService;)Landroid/net/ConnectivityManager;

    move-result-object v19

    if-nez v19, :cond_1

    .line 84
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Connectivity manager not available."

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$startId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->stopSelf(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v19

    if-nez v19, :cond_0

    .line 163
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_1
    new-instance v15, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$self:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;-><init>(Landroid/content/Context;)V

    .line 89
    .local v15, "model":Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;
    invoke-virtual {v15}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->hasEvents()Z

    move-result v19

    if-nez v19, :cond_5

    .line 90
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "No events to send."

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$startId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->stopSelf(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v19

    if-nez v19, :cond_0

    .line 163
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .local v6, "eventIds":[I
    .local v7, "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .local v10, "i":I
    .local v13, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local v14, "len":I
    .local v16, "records":Lorg/json/JSONArray;
    :cond_2
    const/4 v4, 0x1

    .line 114
    .local v4, "deleteEvents":Z
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 115
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "jsonData":Ljava/lang/String;
    const-string v19, "TiAnalyticsSvc"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sending "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " analytics events."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    const-string v19, "https://api.appcelerator.net/p/v2/mobile-track"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 120
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v12}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v19, "text/json"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v9, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 124
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 125
    .local v8, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 129
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    new-instance v17, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 130
    .local v17, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v19

    const-string v20, "http.protocol.expect-continue"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 133
    move-object/from16 v0, v17

    invoke-interface {v3, v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "jsonData":Ljava/lang/String;
    .end local v17    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :cond_3
    const/16 v16, 0x0

    .line 144
    if-eqz v4, :cond_4

    .line 145
    :try_start_4
    invoke-virtual {v15, v6}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->deleteEvents([I)V

    .line 148
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 95
    .end local v4    # "deleteEvents":Z
    .end local v6    # "eventIds":[I
    .end local v7    # "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .end local v10    # "i":I
    .end local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "len":I
    .end local v16    # "records":Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v15}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->hasEvents()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$100(Lorg/appcelerator/titanium/analytics/TiAnalyticsService;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 98
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getEventsAsJSON(I)Ljava/util/HashMap;

    move-result-object v7

    .line 100
    .restart local v7    # "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 101
    .restart local v14    # "len":I
    new-array v6, v14, [I

    .line 102
    .restart local v6    # "eventIds":[I
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 104
    .restart local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .restart local v16    # "records":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v14, :cond_2

    .line 107
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 110
    .local v11, "id":I
    aput v11, v6, v10

    .line 111
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 106
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 134
    .end local v11    # "id":I
    .restart local v4    # "deleteEvents":Z
    .restart local v12    # "jsonData":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 135
    .local v18, "t":Ljava/lang/Throwable;
    const-string v19, "TiAnalyticsSvc"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error posting events: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v4, 0x0

    .line 137
    const/16 v16, 0x0

    .line 156
    .end local v4    # "deleteEvents":Z
    .end local v6    # "eventIds":[I
    .end local v7    # "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .end local v10    # "i":I
    .end local v12    # "jsonData":Ljava/lang/String;
    .end local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "len":I
    .end local v16    # "records":Lorg/json/JSONArray;
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_2
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Stopping Analytics Service"

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$startId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->stopSelf(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v19

    if-nez v19, :cond_0

    .line 163
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_7
    :try_start_5
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Network unavailable, can\'t send analytics"

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 158
    .end local v15    # "model":Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;
    :catch_1
    move-exception v18

    .line 159
    .restart local v18    # "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Unhandle exception in analytics thread: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->this$0:Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;->val$startId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->stopSelf(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v19

    if-nez v19, :cond_0

    .line 163
    const-string v19, "TiAnalyticsSvc"

    const-string v20, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    .end local v18    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v19

    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v20

    if-nez v20, :cond_8

    .line 163
    const-string v20, "TiAnalyticsSvc"

    const-string v21, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v20 .. v21}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v19
.end method
