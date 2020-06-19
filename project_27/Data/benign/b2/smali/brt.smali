.class Lbrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lbrr;


# direct methods
.method constructor <init>(Lbrr;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lbrt;->c:Lbrr;

    iput-object p2, p0, Lbrt;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lbrt;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lbrt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 187
    if-eqz v1, :cond_0

    .line 189
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    iget-object v2, p0, Lbrt;->c:Lbrr;

    iget-object v3, p0, Lbrt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lbrt;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lbrr;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lbrt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    :goto_1
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lbrt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
