.class Lbpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbpb;


# direct methods
.method constructor <init>(Lbpb;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lbpd;->a:Lbpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "https://senseai.io/portal/login"

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lbpd;->a:Lbpb;

    invoke-virtual {v0, v1}, Lbpb;->a(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
