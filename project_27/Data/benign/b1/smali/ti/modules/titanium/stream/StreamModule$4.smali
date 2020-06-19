.class Lti/modules/titanium/stream/StreamModule$4;
.super Ljava/lang/Object;
.source "StreamModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/stream/StreamModule;->writeStream([Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/stream/StreamModule;

.field final synthetic val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

.field final synthetic val$fmaxChunkSize:I

.field final synthetic val$foutputStream:Lorg/appcelerator/titanium/io/TiStream;


# direct methods
.method constructor <init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;ILorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lti/modules/titanium/stream/StreamModule$4;->this$0:Lti/modules/titanium/stream/StreamModule;

    iput-object p2, p0, Lti/modules/titanium/stream/StreamModule$4;->val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

    iput-object p3, p0, Lti/modules/titanium/stream/StreamModule$4;->val$foutputStream:Lorg/appcelerator/titanium/io/TiStream;

    iput p4, p0, Lti/modules/titanium/stream/StreamModule$4;->val$fmaxChunkSize:I

    iput-object p5, p0, Lti/modules/titanium/stream/StreamModule$4;->val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "totalBytesWritten":I
    const/4 v4, 0x0

    .line 393
    .local v4, "errorState":I
    const-string v5, ""

    .line 396
    .local v5, "errorDescription":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/stream/StreamModule$4;->this$0:Lti/modules/titanium/stream/StreamModule;

    iget-object v1, p0, Lti/modules/titanium/stream/StreamModule$4;->val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

    iget-object v2, p0, Lti/modules/titanium/stream/StreamModule$4;->val$foutputStream:Lorg/appcelerator/titanium/io/TiStream;

    iget v7, p0, Lti/modules/titanium/stream/StreamModule$4;->val$fmaxChunkSize:I

    invoke-static {v0, v1, v2, v7}, Lti/modules/titanium/stream/StreamModule;->access$200(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 403
    :goto_0
    iget-object v7, p0, Lti/modules/titanium/stream/StreamModule$4;->val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v0, p0, Lti/modules/titanium/stream/StreamModule$4;->this$0:Lti/modules/titanium/stream/StreamModule;

    invoke-virtual {v0}, Lti/modules/titanium/stream/StreamModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    iget-object v0, p0, Lti/modules/titanium/stream/StreamModule$4;->this$0:Lti/modules/titanium/stream/StreamModule;

    iget-object v1, p0, Lti/modules/titanium/stream/StreamModule$4;->val$finputStream:Lorg/appcelerator/titanium/io/TiStream;

    iget-object v2, p0, Lti/modules/titanium/stream/StreamModule$4;->val$foutputStream:Lorg/appcelerator/titanium/io/TiStream;

    invoke-static/range {v0 .. v5}, Lti/modules/titanium/stream/StreamModule;->access$300(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 404
    return-void

    .line 398
    :catch_0
    move-exception v6

    .line 399
    .local v6, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    .line 400
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
