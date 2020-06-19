.class Lti/modules/titanium/stream/StreamModule$2;
.super Ljava/lang/Object;
.source "StreamModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/stream/StreamModule;->readAll([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/stream/StreamModule;

.field final synthetic val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fbuffer:Lti/modules/titanium/BufferProxy;

.field final synthetic val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;


# direct methods
.method constructor <init>(Lti/modules/titanium/stream/StreamModule;Lti/modules/titanium/BufferProxy;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lti/modules/titanium/stream/StreamModule$2;->this$0:Lti/modules/titanium/stream/StreamModule;

    iput-object p2, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    iput-object p3, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;

    iput-object p4, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v5, 0x400

    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 205
    .local v2, "errorState":I
    const-string v1, ""

    .line 207
    .local v1, "errorDescription":Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    invoke-virtual {v4}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 208
    iget-object v4, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    invoke-virtual {v4, v5}, Lti/modules/titanium/BufferProxy;->resize(I)V

    .line 212
    :cond_0
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/stream/StreamModule$2;->this$0:Lti/modules/titanium/stream/StreamModule;

    iget-object v5, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;

    iget-object v6, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    invoke-static {v4, v5, v6, v3}, Lti/modules/titanium/stream/StreamModule;->access$100(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fResultsCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/stream/StreamModule$2;->this$0:Lti/modules/titanium/stream/StreamModule;

    invoke-virtual {v5}, Lti/modules/titanium/stream/StreamModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/stream/StreamModule$2;->this$0:Lti/modules/titanium/stream/StreamModule;

    iget-object v7, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fsourceStream:Lorg/appcelerator/titanium/io/TiStream;

    iget-object v8, p0, Lti/modules/titanium/stream/StreamModule$2;->val$fbuffer:Lti/modules/titanium/BufferProxy;

    invoke-virtual {v8}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v8

    invoke-static {v6, v7, v8, v2, v1}, Lti/modules/titanium/stream/StreamModule;->access$000(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 220
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
