.class public Lze;
.super Laof;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laof",
        "<",
        "Lze;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lxr;

.field private c:Z


# direct methods
.method public constructor <init>(Lxr;)V
    .locals 2

    invoke-virtual {p1}, Lxr;->h()Laog;

    move-result-object v0

    invoke-virtual {p1}, Lxr;->d()Lant;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laof;-><init>(Laog;Lant;)V

    iput-object p1, p0, Lze;->b:Lxr;

    return-void
.end method


# virtual methods
.method protected a(Laoc;)V
    .locals 3

    const-class v0, Lane;

    invoke-virtual {p1, v0}, Laoc;->b(Ljava/lang/Class;)Laoe;

    move-result-object v0

    check-cast v0, Lane;

    invoke-virtual {v0}, Lane;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lze;->b:Lxr;

    invoke-virtual {v1}, Lxr;->p()Lyk;

    move-result-object v1

    invoke-virtual {v1}, Lyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lane;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lze;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lane;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lze;->b:Lxr;

    invoke-virtual {v1}, Lxr;->o()Lwp;

    move-result-object v1

    invoke-virtual {v1}, Lwp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lane;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lwp;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lane;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Laei;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lze;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lze;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lzf;

    iget-object v2, p0, Lze;->b:Lxr;

    invoke-direct {v1, v2, p1}, Lzf;-><init>(Lxr;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lzf;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lze;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    invoke-interface {v0}, Laon;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lze;->c:Z

    return-void
.end method

.method k()Lxr;
    .locals 1

    iget-object v0, p0, Lze;->b:Lxr;

    return-object v0
.end method

.method public l()Laoc;
    .locals 2

    invoke-virtual {p0}, Lze;->m()Laoc;

    move-result-object v0

    invoke-virtual {v0}, Laoc;->a()Laoc;

    move-result-object v0

    iget-object v1, p0, Lze;->b:Lxr;

    invoke-virtual {v1}, Lxr;->q()Lyc;

    move-result-object v1

    invoke-virtual {v1}, Lyc;->c()Laoo;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc;->a(Laoe;)V

    iget-object v1, p0, Lze;->b:Lxr;

    invoke-virtual {v1}, Lxr;->r()Lyv;

    move-result-object v1

    invoke-virtual {v1}, Lyv;->b()Laoq;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc;->a(Laoe;)V

    invoke-virtual {p0, v0}, Lze;->b(Laoc;)V

    return-object v0
.end method
