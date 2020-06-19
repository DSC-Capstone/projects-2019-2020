.class public Lorg/appcelerator/titanium/TiActivityWindows;
.super Ljava/lang/Object;
.source "TiActivityWindows.java"


# static fields
.field protected static windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static windows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/titanium/TiActivityWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I
    .locals 3
    .param p0, "window"    # Lorg/appcelerator/titanium/TiActivityWindow;

    .prologue
    .line 22
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 23
    .local v0, "windowId":I
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return v0
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    return-void
.end method

.method public static windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;I)V
    .locals 3
    .param p0, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p1, "windowId"    # I

    .prologue
    .line 29
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiActivityWindow;

    .line 30
    .local v0, "window":Lorg/appcelerator/titanium/TiActivityWindow;
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiActivityWindow;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V

    .line 32
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method
