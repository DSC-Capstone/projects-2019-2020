.class public Lbox;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lio/senseai/kelvin/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lio/senseai/kelvin/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lbox;->a:Lio/senseai/kelvin/activity/BaseActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/senseai/kelvin/activity/BaseActivity;Lbow;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lbox;-><init>(Lio/senseai/kelvin/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 196
    iget-object v0, p0, Lbox;->a:Lio/senseai/kelvin/activity/BaseActivity;

    invoke-virtual {v0}, Lio/senseai/kelvin/activity/BaseActivity;->j()V

    .line 197
    return-void
.end method
