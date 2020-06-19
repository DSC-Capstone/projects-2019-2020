.class Lbin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbik;


# direct methods
.method constructor <init>(Lbik;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lbin;->a:Lbik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p2}, Lbaz;->d()I

    move-result v0

    iget-object v1, p0, Lbin;->a:Lbik;

    iget v1, v1, Lbik;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    invoke-virtual {p2}, Lbaz;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lbin;->a:Lbik;

    iget-object v1, v1, Lbik;->g:Lbaz;

    invoke-virtual {p2, v1, v0}, Lbaz;->a(Lbaz;I)V

    .line 192
    iget-object v1, p0, Lbin;->a:Lbik;

    iget-object p2, v1, Lbik;->g:Lbaz;

    .line 195
    :cond_0
    iget-object v1, p0, Lbin;->a:Lbik;

    iget v2, v1, Lbik;->d:I

    sub-int v0, v2, v0

    iput v0, v1, Lbik;->d:I

    .line 196
    iget-object v0, p0, Lbin;->a:Lbik;

    invoke-static {v0}, Lbik;->e(Lbik;)Lbhq;

    move-result-object v1

    iget-object v0, p0, Lbin;->a:Lbik;

    iget v0, v0, Lbik;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lbin;->a:Lbik;

    iget-boolean v0, v0, Lbik;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lbin;->a:Lbik;

    iget v2, v2, Lbik;->e:I

    invoke-interface {v1, v0, v2, p2}, Lbhq;->a(ZILbaz;)V

    .line 198
    iget-object v0, p0, Lbin;->a:Lbik;

    iget v0, v0, Lbik;->d:I

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lbin;->a:Lbik;

    invoke-static {v0}, Lbik;->f(Lbik;)V

    .line 200
    :cond_1
    return-void

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
