.class Lti/modules/titanium/stream/StreamModule$6;
.super Ljava/lang/Thread;
.source "StreamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/stream/StreamModule;->pump([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/stream/StreamModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/stream/StreamModule;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 489
    iput-object p1, p0, Lti/modules/titanium/stream/StreamModule$6;->this$0:Lti/modules/titanium/stream/StreamModule;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method
