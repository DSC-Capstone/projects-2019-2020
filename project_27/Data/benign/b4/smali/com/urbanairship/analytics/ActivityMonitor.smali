.class Lcom/urbanairship/analytics/ActivityMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/ActivityMonitor$Delegate;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DELAY_MS:I = 0x7d0


# instance fields
.field private activities:I

.field private delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;


# direct methods
.method public constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/analytics/ActivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    return v0
.end method

.method static synthetic access$010(Lcom/urbanairship/analytics/ActivityMonitor;)I
    .locals 2

    iget v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/analytics/ActivityMonitor;)Lcom/urbanairship/analytics/ActivityMonitor$Delegate;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;->onForeground()V

    :cond_0
    iget v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:I

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/ActivityMonitor$1;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;)V

    new-instance v1, Lcom/urbanairship/analytics/ActivityMonitor$2;

    invoke-direct {v1, p0, v0}, Lcom/urbanairship/analytics/ActivityMonitor$2;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
