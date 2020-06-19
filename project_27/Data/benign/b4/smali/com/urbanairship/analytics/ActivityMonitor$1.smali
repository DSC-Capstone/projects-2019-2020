.class Lcom/urbanairship/analytics/ActivityMonitor$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/ActivityMonitor;->removeActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/ActivityMonitor;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->access$010(Lcom/urbanairship/analytics/ActivityMonitor;)I

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->access$000(Lcom/urbanairship/analytics/ActivityMonitor;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->access$100(Lcom/urbanairship/analytics/ActivityMonitor;)Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;->onBackground()V

    :cond_0
    return-void
.end method
