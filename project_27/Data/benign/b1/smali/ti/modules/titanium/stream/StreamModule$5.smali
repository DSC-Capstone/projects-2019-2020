.class Lti/modules/titanium/stream/StreamModule$5;
.super Ljava/lang/Object;
.source "StreamModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$fHandler:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

.field final synthetic val$fmaxChunkSize:I


# direct methods
.method constructor <init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lti/modules/titanium/stream/StreamModule$5;->this$0:Lti/modules/titanium/stream/StreamModule;

    iput-object p2, p0, Lti/modules/titanium/stream/StreamModule$5;->val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

    iput-object p3, p0, Lti/modules/titanium/stream/StreamModule$5;->val$fHandler:Lorg/appcelerator/kroll/KrollFunction;

    iput p4, p0, Lti/modules/titanium/stream/StreamModule$5;->val$fmaxChunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lti/modules/titanium/stream/StreamModule$5;->this$0:Lti/modules/titanium/stream/StreamModule;

    iget-object v1, p0, Lti/modules/titanium/stream/StreamModule$5;->val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

    iget-object v2, p0, Lti/modules/titanium/stream/StreamModule$5;->val$fHandler:Lorg/appcelerator/kroll/KrollFunction;

    iget v3, p0, Lti/modules/titanium/stream/StreamModule$5;->val$fmaxChunkSize:I

    invoke-static {v0, v1, v2, v3}, Lti/modules/titanium/stream/StreamModule;->access$400(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V

    .line 487
    return-void
.end method
