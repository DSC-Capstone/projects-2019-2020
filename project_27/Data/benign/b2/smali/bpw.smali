.class public Lbpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lio/senseai/kelvin/widget/TermsView;


# direct methods
.method public constructor <init>(Lio/senseai/kelvin/widget/TermsView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbpw;->a:Lio/senseai/kelvin/widget/TermsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 51
    const/4 v0, 0x0

    return v0
.end method
