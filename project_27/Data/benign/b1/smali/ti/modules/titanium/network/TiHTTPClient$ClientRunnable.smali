.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;

.field private totalLength:D


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;D)V
    .locals 0
    .param p2, "totalLength"    # D

    .prologue
    .line 1060
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    iput-wide p2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    .line 1062
    return-void
.end method

.method static synthetic access$1900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)D
    .locals 2
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    .prologue
    .line 1055
    iget-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1067
    const-wide/16 v12, 0xa

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 1068
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1069
    const-string v12, "TiHttpClient"

    const-string v13, "send()"

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v13, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {v13, v14, v15}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;-><init>(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient;)V

    invoke-static {v12, v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1102(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    .line 1075
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v14}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v14

    invoke-virtual {v13, v14}, Lti/modules/titanium/network/TiHTTPClient;->getClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    invoke-static {v12, v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1300(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 1078
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v12

    new-instance v13, Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v14}, Lti/modules/titanium/network/TiHTTPClient;->access$1400(Lti/modules/titanium/network/TiHTTPClient;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v14}, Lti/modules/titanium/network/TiHTTPClient;->access$1300(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1302(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/auth/Credentials;)Lorg/apache/http/auth/Credentials;

    .line 1081
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v12

    new-instance v13, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {v13, v14}, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;-><init>(Lti/modules/titanium/network/TiHTTPClient;)V

    invoke-virtual {v12, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v12

    instance-of v12, v12, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    if-eqz v12, :cond_9

    .line 1084
    const/4 v3, 0x0

    .line 1085
    .local v3, "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const/4 v6, 0x0

    .line 1087
    .local v6, "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-lez v12, :cond_2

    .line 1089
    :try_start_1
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v4, v12, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .local v4, "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v3, v4

    .line 1096
    .end local v4    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1800(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1097
    new-instance v6, Lorg/apache/http/entity/mime/MultipartEntity;

    .end local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    invoke-direct {v6}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 1098
    .restart local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1099
    .local v8, "name":Ljava/lang/String;
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1100
    const-string v13, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding part "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", part type: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v12}, Lorg/apache/http/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", len: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v12}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-virtual {v6, v8, v12}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1170
    .end local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v8    # "name":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1171
    .local v11, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 1172
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1173
    const-string v12, "TiHttpClient"

    const-string v13, "clearing the expired and idle connections"

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1176
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    const-wide/16 v13, 0x0

    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v13, v14, v15}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 1182
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1183
    .local v7, "msg":Ljava/lang/String;
    if-nez v7, :cond_5

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1184
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1186
    :cond_5
    if-nez v7, :cond_6

    .line 1187
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1189
    :cond_6
    const-string v12, "TiHttpClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP Error ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v11}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v12, v7}, Lti/modules/titanium/network/TiHTTPClient;->sendError(Ljava/lang/String;)V

    .line 1192
    .end local v7    # "msg":Ljava/lang/String;
    .end local v11    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void

    .line 1091
    .restart local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_1
    move-exception v2

    .line 1092
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v12, "TiHttpClient"

    const-string v13, "Unsupported encoding: "

    invoke-static {v12, v13, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1105
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    if-eqz v3, :cond_8

    .line 1107
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-direct {v1, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1108
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1109
    const-string v12, "form"

    new-instance v13, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "application/x-www-form-urlencoded"

    const-string v16, "UTF-8"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1119
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 1121
    .local v2, "e":Lorg/apache/http/HttpEntityEnclosingRequest;
    new-instance v9, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v13, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;-><init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V

    invoke-direct {v9, v12, v6, v13}, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;-><init>(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpEntity;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V

    .line 1132
    .local v9, "progressEntity":Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
    invoke-interface {v2, v9}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1134
    const-string v12, "Length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12, v13}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    .end local v2    # "e":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v9    # "progressEntity":Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    .line 1143
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v13

    invoke-static {v12, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v13

    invoke-static {v12, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1147
    :cond_a
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1148
    const-string v12, "TiHttpClient"

    const-string v13, "Preparing to execute request"

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 1151
    :cond_b
    const/4 v10, 0x0

    .line 1153
    .local v10, "result":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$2200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpHost;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v14}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1100(Lti/modules/titanium/network/TiHTTPClient;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 1161
    :cond_c
    if-eqz v10, :cond_d

    .line 1162
    :try_start_7
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1163
    const-string v12, "TiHttpClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Have result back from request len="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lti/modules/titanium/network/TiHTTPClient;->access$102(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 1167
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v12, v10}, Lti/modules/titanium/network/TiHTTPClient;->setResponseText(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    goto/16 :goto_3

    .line 1111
    .end local v10    # "result":Ljava/lang/String;
    .restart local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_2
    move-exception v2

    .line 1112
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v12, "TiHttpClient"

    const-string v13, "Unsupported encoding: "

    invoke-static {v12, v13, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1114
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v2

    .line 1115
    .local v2, "e":Ljava/io/IOException;
    const-string v12, "TiHttpClient"

    const-string v13, "Error converting form to string: "

    invoke-static {v12, v13, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1137
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12, v3}, Lti/modules/titanium/network/TiHTTPClient;->access$2000(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V

    goto/16 :goto_5

    .line 1155
    .end local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6    # "mpe":Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v10    # "result":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 1156
    .restart local v2    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v12}, Lti/modules/titanium/network/TiHTTPClient;->access$2300(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1157
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 1179
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "result":Ljava/lang/String;
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_f
    const-string v12, "TiHttpClient"

    const-string v13, "client is not valid, unable to clear expired and idle connections"

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
