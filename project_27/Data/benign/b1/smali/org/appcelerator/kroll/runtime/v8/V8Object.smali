.class public Lorg/appcelerator/kroll/runtime/v8/V8Object;
.super Lorg/appcelerator/kroll/KrollObject;
.source "V8Object.java"


# instance fields
.field private volatile ptr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollObject;-><init>()V

    .line 19
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 20
    return-void
.end method

.method private native nativeFireEvent(JLjava/lang/String;Ljava/lang/Object;)Z
.end method

.method protected static native nativeInitObject(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method private static native nativeRelease(J)V
.end method

.method private native nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method private native nativeSetWindow(JLjava/lang/Object;)V
.end method


# virtual methods
.method public doRelease()V
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeRelease(J)V

    .line 54
    return-void
.end method

.method public doSetWindow(Ljava/lang/Object;)V
    .locals 2
    .param p1, "windowProxyObject"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeSetWindow(JLjava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->release()V

    .line 70
    :cond_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeFireEvent(JLjava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getNativeObject()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public getPointer()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    return-wide v0
.end method

.method public setPointer(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 30
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method
