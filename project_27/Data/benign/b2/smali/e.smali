.class Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lam;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Ld;


# direct methods
.method constructor <init>(Ld;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Le;->b:Ld;

    iput-object p2, p0, Le;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Le;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->q()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
