.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lti/modules/titanium/network/TiHTTPClient$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V
    .locals 0

    .prologue
    .line 1121
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    .line 1123
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    iget-object v2, v2, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v3, "onsendstream"

    invoke-virtual {v2, v3}, Lti/modules/titanium/network/TiHTTPClient;->getCallback(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v0

    .line 1124
    .local v0, "cb":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v0, :cond_0

    .line 1125
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1126
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "progress"

    int-to-double v3, p1

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->access$1900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v2, "source"

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    iget-object v3, v3, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$900(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    iget-object v2, v2, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v2}, Lti/modules/titanium/network/TiHTTPClient;->access$900(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 1130
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method
