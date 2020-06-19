.class Lqw;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lqu;


# direct methods
.method private constructor <init>(Lqu;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lqw;->a:Lqu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqu;Lqv;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lqw;-><init>(Lqu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lqw;->a:Lqu;

    invoke-static {v0}, Lqu;->a(Lqu;)Lsu;

    move-result-object v0

    invoke-virtual {v0}, Lsu;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lqw;->a:Lqu;

    invoke-static {v0}, Lqu;->a(Lqu;)Lsu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lqy;

    invoke-virtual {v0}, Lqy;->b()Lmq;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 551
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 556
    if-nez p2, :cond_0

    .line 557
    iget-object v1, p0, Lqw;->a:Lqu;

    invoke-virtual {p0, p1}, Lqw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmq;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lqu;->a(Lqu;Lmq;Z)Lqy;

    move-result-object p2

    .line 561
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 559
    check-cast v0, Lqy;

    invoke-virtual {p0, p1}, Lqw;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmq;

    invoke-virtual {v0, v1}, Lqy;->a(Lmq;)V

    goto :goto_0
.end method
