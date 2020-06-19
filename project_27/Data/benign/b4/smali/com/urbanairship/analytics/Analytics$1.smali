.class Lcom/urbanairship/analytics/Analytics$1;
.super Lcom/urbanairship/analytics/ActivityMonitor$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {p0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$102(Lcom/urbanairship/analytics/Analytics;Z)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppBackgroundEvent;

    invoke-direct {v1}, Lcom/urbanairship/analytics/AppBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$300(Lcom/urbanairship/analytics/Analytics;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$402(Lcom/urbanairship/analytics/Analytics;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onForeground()V
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/Analytics$Session;

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {v1, v2}, Lcom/urbanairship/analytics/Analytics$Session;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$002(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Analytics$Session;)Lcom/urbanairship/analytics/Analytics$Session;

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$102(Lcom/urbanairship/analytics/Analytics;Z)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$200(Lcom/urbanairship/analytics/Analytics;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppForegroundEvent;

    invoke-direct {v1}, Lcom/urbanairship/analytics/AppForegroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method
