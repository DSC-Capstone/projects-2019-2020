.class Lti/modules/titanium/stream/StreamModule$1;
.super Ljava/lang/Object;
.source "StreamModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/stream/StreamModule;->read([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/stream/StreamModule;

.field final synthetic val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fbuffer:Lti/modules/titanium/BufferProxy;

.field final synthetic val$flength:I

.field final synthetic val$foffset:I

.field final synthetic val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;


# direct methods
.method constructor <init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;IILorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lti/modules/titanium/stream/StreamModule$1;->this$0:Lti/modules/titanium/stream/StreamModule;

    iput-object p2, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;

    iput-object p3, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    iput p4, p0, Lti/modules/titanium/stream/StreamModule$1;->val$foffset:I

    iput p5, p0, Lti/modules/titanium/stream/StreamModule$1;->val$flength:I

    iput-object p6, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 131
    const/4 v0, -0x1

    .line 132
    .local v0, "bytesRead":I
    const/4 v3, 0x0

    .line 133
    .local v3, "errorState":I
    const-string v2, ""

    .line 136
    .local v2, "errorDescription":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lti/modules/titanium/stream/StreamModule$1;->val$foffset:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lti/modules/titanium/stream/StreamModule$1;->val$flength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lorg/appcelerator/titanium/io/TiStream;->read([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/stream/StreamModule$1;->this$0:Lti/modules/titanium/stream/StreamModule;

    invoke-virtual {v5}, Lti/modules/titanium/stream/StreamModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/stream/StreamModule$1;->this$0:Lti/modules/titanium/stream/StreamModule;

    iget-object v7, p0, Lti/modules/titanium/stream/StreamModule$1;->val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;

    invoke-static {v6, v7, v0, v3, v2}, Lti/modules/titanium/stream/StreamModule;->access$000(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 146
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    const/4 v3, 0x1

    .line 142
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
