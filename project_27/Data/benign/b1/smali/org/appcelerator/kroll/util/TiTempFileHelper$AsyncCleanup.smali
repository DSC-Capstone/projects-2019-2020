.class public Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;
.super Ljava/lang/Object;
.source "TiTempFileHelper.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/util/TiTempFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AsyncCleanup"
.end annotation


# instance fields
.field protected service:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lorg/appcelerator/kroll/util/TiTempFileHelper;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/util/TiTempFileHelper;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p2, "service"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;->this$0:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;->service:Ljava/util/concurrent/ExecutorService;

    .line 105
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 119
    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;->this$0:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->doCleanTempDir()V

    .line 111
    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 112
    return-void
.end method
