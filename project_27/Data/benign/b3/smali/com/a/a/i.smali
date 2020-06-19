.class Lcom/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b;


# instance fields
.field private a:Lcom/a/a/d;

.field private b:Lcom/a/a/j;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/a/a/d;Lcom/a/a/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/i;->a:Lcom/a/a/d;

    iput-object p2, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iput p3, p0, Lcom/a/a/i;->c:I

    return-void
.end method

.method private d(Lcom/a/a/a;)V
    .locals 6

    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/d;

    iget-boolean v0, v0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h;

    iget v4, v0, Lcom/a/a/h;->b:I

    iget v5, p0, Lcom/a/a/i;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/a/a/h;->a:Lcom/a/a/j;

    iget-object v4, v4, Lcom/a/a/j;->a:Lcom/a/a/a;

    if-ne v4, p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/a/a/a;->b(Lcom/a/a/b;)V

    :goto_2
    iget-object v1, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iget-object v1, v1, Lcom/a/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->a:Lcom/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a;->a()V

    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/d;

    invoke-static {v0}, Lcom/a/a/d;->a(Lcom/a/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->b:Lcom/a/a/j;

    iget-object v1, v1, Lcom/a/a/j;->a:Lcom/a/a/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/a/a/a;)V
    .locals 1

    iget v0, p0, Lcom/a/a/i;->c:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/a/a/i;->d(Lcom/a/a/a;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/a/a/a;)V
    .locals 2

    iget v0, p0, Lcom/a/a/i;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/a/a/i;->d(Lcom/a/a/a;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/a/a/a;)V
    .locals 0

    return-void
.end method
