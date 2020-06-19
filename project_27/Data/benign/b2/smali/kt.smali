.class Lkt;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkq;


# direct methods
.method private constructor <init>(Lkq;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lkt;->a:Lkq;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkq;Lkr;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lkt;-><init>(Lkq;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lkt;->a:Lkq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkq;->a:Z

    .line 473
    iget-object v0, p0, Lkt;->a:Lkq;

    invoke-virtual {v0}, Lkq;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lkt;->a:Lkq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkq;->a:Z

    .line 479
    iget-object v0, p0, Lkt;->a:Lkq;

    invoke-virtual {v0}, Lkq;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
