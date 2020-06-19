.class Lblu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbls;


# direct methods
.method constructor <init>(Lbls;I)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lblu;->b:Lbls;

    iput p2, p0, Lblu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 535
    iget-object v0, p0, Lblu;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    invoke-virtual {v0}, Lblp;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lblu;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    invoke-virtual {v0}, Lblp;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lblu;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->q:Lbme;

    iget v1, p0, Lblu;->a:I

    int-to-long v2, v1

    iget-object v1, p0, Lblu;->b:Lbls;

    iget-wide v4, v1, Lbls;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lbme;->a(JJ)V

    goto :goto_0
.end method
