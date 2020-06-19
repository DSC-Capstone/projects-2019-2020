.class Lbph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbpe;


# direct methods
.method constructor <init>(Lbpe;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lbph;->a:Lbpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lbph;->a:Lbpe;

    invoke-virtual {v0}, Lbpe;->h()Lo;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvin/activity/BaseActivity;

    invoke-virtual {v0}, Lio/senseai/kelvin/activity/BaseActivity;->j()V

    .line 163
    return-void
.end method
