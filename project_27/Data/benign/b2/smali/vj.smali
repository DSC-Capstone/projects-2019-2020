.class Lvj;
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
.field final synthetic a:Lvi;

.field private b:I


# direct methods
.method constructor <init>(Lvi;)V
    .locals 1

    .prologue
    .line 244
    iput-object p1, p0, Lvj;->a:Lvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iget-object v0, p0, Lvj;->a:Lvi;

    invoke-static {v0}, Lvi;->a(Lvi;)I

    move-result v0

    iput v0, p0, Lvj;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lvj;->b:I

    iget-object v1, p0, Lvj;->a:Lvi;

    invoke-static {v1}, Lvi;->b(Lvi;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

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
    .line 269
    iget v0, p0, Lvj;->b:I

    iget-object v1, p0, Lvj;->a:Lvi;

    invoke-static {v1}, Lvi;->b(Lvi;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lvj;->a:Lvi;

    invoke-static {v0}, Lvi;->b(Lvi;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lvj;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvj;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
