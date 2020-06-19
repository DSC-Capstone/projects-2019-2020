.class Lqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lqu;


# direct methods
.method private constructor <init>(Lqu;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lqx;->a:Lqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqu;Lqv;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lqx;-><init>(Lqu;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 567
    move-object v0, p1

    check-cast v0, Lqy;

    .line 568
    invoke-virtual {v0}, Lqy;->b()Lmq;

    move-result-object v0

    invoke-virtual {v0}, Lmq;->d()V

    .line 569
    iget-object v0, p0, Lqx;->a:Lqu;

    invoke-static {v0}, Lqu;->a(Lqu;)Lsu;

    move-result-object v0

    invoke-virtual {v0}, Lsu;->getChildCount()I

    move-result v3

    move v2, v1

    .line 570
    :goto_0
    if-ge v2, v3, :cond_1

    .line 571
    iget-object v0, p0, Lqx;->a:Lqu;

    invoke-static {v0}, Lqu;->a(Lqu;)Lsu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 572
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 570
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 572
    goto :goto_1

    .line 574
    :cond_1
    return-void
.end method
