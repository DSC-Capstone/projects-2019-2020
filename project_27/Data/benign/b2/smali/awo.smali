.class abstract Lawo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lawp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lawp",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lawp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lawp",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lawi;


# direct methods
.method private constructor <init>(Lawi;)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Lawo;->e:Lawi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lawo;->e:Lawi;

    iget-object v0, v0, Lawi;->e:Lawp;

    iget-object v0, v0, Lawp;->d:Lawp;

    iput-object v0, p0, Lawo;->b:Lawp;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lawo;->c:Lawp;

    .line 529
    iget-object v0, p0, Lawo;->e:Lawi;

    iget v0, v0, Lawi;->d:I

    iput v0, p0, Lawo;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lawi;Lawj;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lawo;-><init>(Lawi;)V

    return-void
.end method


# virtual methods
.method final b()Lawp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lawp",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lawo;->b:Lawp;

    .line 537
    iget-object v1, p0, Lawo;->e:Lawi;

    iget-object v1, v1, Lawi;->e:Lawp;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lawo;->e:Lawi;

    iget v1, v1, Lawi;->d:I

    iget v2, p0, Lawo;->d:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lawp;->d:Lawp;

    iput-object v1, p0, Lawo;->b:Lawp;

    .line 544
    iput-object v0, p0, Lawo;->c:Lawp;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lawo;->b:Lawp;

    iget-object v1, p0, Lawo;->e:Lawi;

    iget-object v1, v1, Lawi;->e:Lawp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lawo;->c:Lawp;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lawo;->e:Lawi;

    iget-object v1, p0, Lawo;->c:Lawp;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lawi;->a(Lawp;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lawo;->c:Lawp;

    .line 553
    iget-object v0, p0, Lawo;->e:Lawi;

    iget v0, v0, Lawi;->d:I

    iput v0, p0, Lawo;->d:I

    .line 554
    return-void
.end method
