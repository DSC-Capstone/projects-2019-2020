.class Lbgn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfv;


# instance fields
.field final synthetic a:Lbgm;


# direct methods
.method constructor <init>(Lbgm;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lbgn;->a:Lbgm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lbgn;->a:Lbgm;

    invoke-static {v0, v1}, Lbgm;->a(Lbgm;Z)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lbgn;->a:Lbgm;

    invoke-static {v0, v1}, Lbgm;->b(Lbgm;Z)Z

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lbgn;->a:Lbgm;

    invoke-static {p2}, Lbfu;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lbgm;->a(Lbgm;I)I

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lbgn;->a:Lbgm;

    invoke-static {p2}, Lbfu;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lbgm;->b(Lbgm;I)I

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lbgn;->a:Lbgm;

    invoke-static {v0, v1}, Lbgm;->c(Lbgm;Z)Z

    goto :goto_0

    .line 132
    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lbgn;->a:Lbgm;

    invoke-static {v0, v1}, Lbgm;->d(Lbgm;Z)Z

    goto :goto_0
.end method
