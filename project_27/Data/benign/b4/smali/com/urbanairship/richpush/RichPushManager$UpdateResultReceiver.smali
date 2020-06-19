.class abstract Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/richpush/RichPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UpdateResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/richpush/RichPushManager;


# direct methods
.method public constructor <init>(Lcom/urbanairship/richpush/RichPushManager;)V
    .locals 2

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;->this$0:Lcom/urbanairship/richpush/RichPushManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method
