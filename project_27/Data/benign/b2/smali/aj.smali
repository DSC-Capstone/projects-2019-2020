.class final Laj;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lal;

.field private b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lal;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Laj;->a:Lal;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Laj;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Laj;->a:Lal;

    iget-object v0, v0, Lal;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Laj;->a:Lal;

    iget-object v0, v0, Lal;->a:Landroid/view/View;

    invoke-static {v0}, Lag;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Laj;->b:Landroid/graphics/Rect;

    .line 219
    :cond_0
    iget-object v0, p0, Laj;->b:Landroid/graphics/Rect;

    return-object v0
.end method
