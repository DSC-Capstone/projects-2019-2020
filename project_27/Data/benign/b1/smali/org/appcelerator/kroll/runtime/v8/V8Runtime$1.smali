.class Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;
.super Ljava/lang/Object;
.source "V8Runtime.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->initRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-static {v0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->access$000(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
