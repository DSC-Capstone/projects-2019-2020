.class Lbdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbed;

.field final synthetic b:Lbdj;


# direct methods
.method constructor <init>(Lbdj;Lbed;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lbdo;->b:Lbdj;

    iput-object p2, p0, Lbdo;->a:Lbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lbdo;->a:Lbed;

    invoke-virtual {v0, p1}, Lbed;->a(Ljava/lang/Exception;)V

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lbdo;->a:Lbed;

    invoke-virtual {v0}, Lbed;->p()V

    goto :goto_0
.end method
