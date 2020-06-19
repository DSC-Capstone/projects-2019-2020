.class Ltc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltb;


# direct methods
.method private constructor <init>(Ltb;)V
    .locals 0

    .prologue
    .line 1476
    iput-object p1, p0, Ltc;->a:Ltb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltb;Lsx;)V
    .locals 0

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Ltc;-><init>(Ltb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Ltc;->a:Ltb;

    invoke-static {v0}, Ltb;->a(Ltb;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1480
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1481
    return-void
.end method
