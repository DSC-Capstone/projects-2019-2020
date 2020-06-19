.class Lqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqc;


# direct methods
.method private constructor <init>(Lqc;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lqi;->a:Lqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqc;Lqd;)V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lqi;-><init>(Lqc;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lqi;->a:Lqc;

    iget-boolean v0, v0, Lqc;->u:Z

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-virtual {v0}, Lqc;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-virtual {v0, p0}, Lqc;->post(Ljava/lang/Runnable;)Z

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-static {v0}, Lqc;->b(Lqc;)V

    goto :goto_0
.end method
