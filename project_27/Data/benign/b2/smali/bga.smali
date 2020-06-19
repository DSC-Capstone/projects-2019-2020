.class Lbga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfv;


# instance fields
.field final synthetic a:Lbfz;


# direct methods
.method constructor <init>(Lbfz;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbga;->a:Lbfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lbga;->a:Lbfz;

    invoke-static {v0, v1}, Lbfz;->a(Lbfz;Z)Z

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lbga;->a:Lbfz;

    invoke-static {p2}, Lbfu;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lbfz;->a(Lbfz;I)I

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lbga;->a:Lbfz;

    invoke-static {p2}, Lbfu;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lbfz;->b(Lbfz;I)I

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lbga;->a:Lbfz;

    invoke-static {p2}, Lbfu;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lbfz;->c(Lbfz;I)I

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lbga;->a:Lbfz;

    invoke-static {v0, v1}, Lbfz;->b(Lbfz;Z)Z

    goto :goto_0
.end method
