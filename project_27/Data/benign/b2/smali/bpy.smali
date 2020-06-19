.class public Lbpy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lio/senseai/kelvin/widget/TermsView;


# direct methods
.method public constructor <init>(Lio/senseai/kelvin/widget/TermsView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lbpy;->a:Lio/senseai/kelvin/widget/TermsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbpy;->a:Lio/senseai/kelvin/widget/TermsView;

    iget-object v0, v0, Lio/senseai/kelvin/widget/TermsView;->a:Lbpz;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lbpy;->a:Lio/senseai/kelvin/widget/TermsView;

    iget-object v0, v0, Lio/senseai/kelvin/widget/TermsView;->a:Lbpz;

    invoke-interface {v0}, Lbpz;->N()V

    .line 69
    :cond_0
    return-void
.end method
