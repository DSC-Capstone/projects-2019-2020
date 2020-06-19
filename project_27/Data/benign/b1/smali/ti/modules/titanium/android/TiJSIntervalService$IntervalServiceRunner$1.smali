.class Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;
.super Ljava/util/TimerTask;
.source "TiJSIntervalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 209
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    invoke-static {v3}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->access$100(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 211
    .local v2, "iteration":I
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    iget-object v3, v3, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentService(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 212
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 213
    .local v1, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "iteration"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    iget-object v3, v3, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v4, "resume"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 215
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    invoke-static {v4}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->access$200(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    invoke-static {v5}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->access$300(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    iget-object v6, v6, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-virtual {v3, v4, v5, v6}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 216
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    iget-object v3, v3, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v4, "pause"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "event":Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "TiJSIntervalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure evaluating service JS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;->this$1:Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    invoke-static {v5}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->access$300(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
