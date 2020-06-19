.class Lbny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgr;


# instance fields
.field final synthetic a:Lbdb;

.field final synthetic b:Lbnx;


# direct methods
.method constructor <init>(Lbnx;Lbdb;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lbny;->b:Lbnx;

    iput-object p2, p0, Lbny;->a:Lbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbec;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 29
    const-wide/16 v2, -0x1

    .line 30
    sget-object v4, Lbmi;->d:Lbmi;

    .line 33
    if-eqz p2, :cond_2

    .line 34
    invoke-interface {p2}, Lbec;->o()Lbea;

    move-result-object v6

    .line 35
    new-instance v5, Lbkt;

    invoke-interface {p2}, Lbec;->f()I

    move-result v0

    invoke-interface {p2}, Lbec;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lbec;->c_()Lbfb;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lbkt;-><init>(ILjava/lang/String;Lbfb;)V

    .line 36
    invoke-virtual {v5}, Lbkt;->a()Lbfb;

    move-result-object v0

    invoke-static {v0}, Lbfh;->a(Lbfb;)I

    move-result v0

    int-to-long v2, v0

    .line 37
    invoke-interface {p2}, Lbec;->c_()Lbfb;

    move-result-object v0

    const-string v1, "X-Served-From"

    invoke-virtual {v0, v1}, Lbfb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "cache"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    sget-object v4, Lbmi;->b:Lbmi;

    .line 43
    :cond_0
    :goto_0
    iget-object v7, p0, Lbny;->a:Lbdb;

    new-instance v0, Lbmd;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lbmd;-><init>(Lbbc;JLbmi;Lbkt;Lbea;)V

    invoke-interface {v7, p1, v0}, Lbdb;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 45
    return-void

    .line 40
    :cond_1
    const-string v1, "conditional-cache"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v4, Lbmi;->c:Lbmi;

    goto :goto_0

    :cond_2
    move-object v5, v6

    goto :goto_0
.end method
