.class Lre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field final synthetic b:Lrd;


# direct methods
.method constructor <init>(Lrd;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lre;->b:Lrd;

    iput-object p2, p0, Lre;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lre;->b:Lrd;

    iget-object v0, v0, Lrd;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 994
    iget-object v0, p0, Lre;->b:Lrd;

    iget-object v0, v0, Lrd;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->s:Lqf;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lre;->b:Lrd;

    iget-object v0, v0, Lrd;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Lre;->b:Lrd;

    invoke-static {v1}, Lrd;->a(Lrd;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;IJ)Z

    .line 998
    :cond_0
    iget-object v0, p0, Lre;->b:Lrd;

    invoke-virtual {v0}, Lrd;->a()V

    .line 999
    return-void
.end method
