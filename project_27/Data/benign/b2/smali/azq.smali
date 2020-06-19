.class Lazq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lazo;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lazo;)V
    .locals 1

    .prologue
    .line 586
    iput-object p1, p0, Lazq;->a:Lazo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iget-object v0, p0, Lazq;->a:Lazo;

    invoke-static {v0}, Lazo;->a(Lazo;)I

    move-result v0

    iput v0, p0, Lazq;->b:I

    .line 596
    iget-object v0, p0, Lazq;->a:Lazo;

    invoke-static {v0}, Lazo;->b(Lazo;)I

    move-result v0

    iput v0, p0, Lazq;->c:I

    .line 602
    const/4 v0, -0x1

    iput v0, p0, Lazq;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lazo;Lazp;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lazq;-><init>(Lazo;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lazq;->b:I

    iget v1, p0, Lazq;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 609
    iget v0, p0, Lazq;->b:I

    iget v1, p0, Lazq;->c:I

    if-ne v0, v1, :cond_0

    .line 610
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 611
    :cond_0
    iget-object v0, p0, Lazq;->a:Lazo;

    invoke-static {v0}, Lazo;->c(Lazo;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lazq;->b:I

    aget-object v0, v0, v1

    .line 614
    iget-object v1, p0, Lazq;->a:Lazo;

    invoke-static {v1}, Lazo;->b(Lazo;)I

    move-result v1

    iget v2, p0, Lazq;->c:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 615
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 616
    :cond_2
    iget v1, p0, Lazq;->b:I

    iput v1, p0, Lazq;->d:I

    .line 617
    iget v1, p0, Lazq;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lazq;->a:Lazo;

    invoke-static {v2}, Lazo;->c(Lazo;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lazq;->b:I

    .line 618
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 622
    iget v0, p0, Lazq;->d:I

    if-gez v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 624
    :cond_0
    iget-object v0, p0, Lazq;->a:Lazo;

    iget v1, p0, Lazq;->d:I

    invoke-static {v0, v1}, Lazo;->a(Lazo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget v0, p0, Lazq;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lazq;->a:Lazo;

    invoke-static {v1}, Lazo;->c(Lazo;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lazq;->b:I

    .line 626
    iget-object v0, p0, Lazq;->a:Lazo;

    invoke-static {v0}, Lazo;->b(Lazo;)I

    move-result v0

    iput v0, p0, Lazq;->c:I

    .line 628
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lazq;->d:I

    .line 629
    return-void
.end method
