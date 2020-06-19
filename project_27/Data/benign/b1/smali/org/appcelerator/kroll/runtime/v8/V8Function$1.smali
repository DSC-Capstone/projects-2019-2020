.class Lorg/appcelerator/kroll/runtime/v8/V8Function$1;
.super Ljava/lang/Object;
.source "V8Function.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/runtime/v8/V8Function;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/runtime/v8/V8Function;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$krollObject:Lorg/appcelerator/kroll/KrollObject;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/runtime/v8/V8Function;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Function;

    iput-object p2, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;->val$krollObject:Lorg/appcelerator/kroll/KrollObject;

    iput-object p3, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Function;

    iget-object v1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;->val$krollObject:Lorg/appcelerator/kroll/KrollObject;

    iget-object v2, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method
