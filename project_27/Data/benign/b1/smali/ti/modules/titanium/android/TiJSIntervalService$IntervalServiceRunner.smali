.class Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
.super Ljava/lang/Object;
.source "TiJSIntervalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/android/TiJSIntervalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntervalServiceRunner"
.end annotation


# instance fields
.field private counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private interval:J

.field protected proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

.field private serviceSimpleName:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private task:Ljava/util/TimerTask;

.field final synthetic this$0:Lti/modules/titanium/android/TiJSIntervalService;

.field private timer:Ljava/util/Timer;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/TiJSIntervalService;Landroid/app/Service;Lorg/appcelerator/titanium/proxy/ServiceProxy;JLjava/lang/String;)V
    .locals 1
    .param p2, "service"    # Landroid/app/Service;
    .param p3, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .param p4, "interval"    # J
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->this$0:Lti/modules/titanium/android/TiJSIntervalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    .line 150
    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    iput-object p3, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .line 159
    iput-wide p4, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->interval:J

    .line 160
    iput-object p6, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->url:Ljava/lang/String;

    .line 161
    invoke-static {p6}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->source:Ljava/lang/String;

    .line 162
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->serviceSimpleName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method static synthetic access$100(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->url:Ljava/lang/String;

    return-object v0
.end method

.method private destroyTimer()V
    .locals 4

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 169
    invoke-static {}, Lti/modules/titanium/android/TiJSIntervalService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "TiJSIntervalService"

    const-string v2, "Canceling TimerTask"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    .line 175
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 176
    invoke-static {}, Lti/modules/titanium/android/TiJSIntervalService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const-string v1, "TiJSIntervalService"

    const-string v2, "Canceling Timer"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 180
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_3
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiJSIntervalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thrown while destroying timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method start()V
    .locals 6

    .prologue
    .line 201
    invoke-static {}, Lti/modules/titanium/android/TiJSIntervalService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "TiJSIntervalService"

    const-string v1, "start runner"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    new-instance v0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;-><init>(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)V

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    .line 223
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->serviceSimpleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Timer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getServiceInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    .line 224
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->interval:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 225
    return-void
.end method

.method stop()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lti/modules/titanium/android/TiJSIntervalService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "TiJSIntervalService"

    const-string v1, "stop runner"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v1, "stop"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 196
    :cond_1
    invoke-direct {p0}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->destroyTimer()V

    .line 197
    return-void
.end method
