.class public Lbpx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ScrollView;

.field final synthetic b:Lio/senseai/kelvin/widget/TermsView;


# direct methods
.method public constructor <init>(Lio/senseai/kelvin/widget/TermsView;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbpx;->b:Lio/senseai/kelvin/widget/TermsView;

    iput-object p2, p0, Lbpx;->a:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lbpx;->b:Lio/senseai/kelvin/widget/TermsView;

    const/4 v1, 0x0

    iget-object v2, p0, Lbpx;->a:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/senseai/kelvin/widget/TermsView;->smoothScrollTo(II)V

    .line 61
    return-void
.end method
