.class Lsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lsw;


# direct methods
.method constructor <init>(Lsw;)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lsz;->a:Lsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1082
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1083
    iget-object v0, p0, Lsz;->a:Lsw;

    invoke-static {v0}, Lsw;->a(Lsw;)Lta;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lta;->a(Lta;Z)Z

    .line 1089
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1092
    return-void
.end method
