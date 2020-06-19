.class Lfv;
.super Lfu;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lfu;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 139
    invoke-static {p1, p2}, Lfz;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
