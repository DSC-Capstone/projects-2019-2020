.class public Lvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lvi;->b:I

    .line 81
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lvi;->a:[Ljava/lang/Object;

    .line 82
    return-void
.end method

.method static synthetic a(Lvi;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lvi;->b:I

    return v0
.end method

.method static synthetic b(Lvi;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lvi;->a:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lvi;->b:I

    iget-object v1, p0, Lvi;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lvi;->a:[Ljava/lang/Object;

    iget v1, p0, Lvi;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvi;->b:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 145
    iget v0, p0, Lvi;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 146
    iget-object v1, p0, Lvi;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lvi;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([Lvk;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lvk",
            "<TE;>;>([TT;)TE;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 110
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 111
    invoke-interface {v3, v1}, Lvk;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lvi;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lvl;

    iget v2, p0, Lvi;->b:I

    invoke-direct {v0, v1, v2, p1}, Lvl;-><init>(Ljava/lang/Object;I[Lvk;)V

    throw v0
.end method

.method public varargs a(I[Lvk;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lvk",
            "<TE;>;>(I[TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    move v3, v0

    :goto_0
    if-gt v3, p1, :cond_2

    .line 228
    array-length v4, p2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p2, v2

    .line 229
    invoke-virtual {p0, v3}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lvk;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    :goto_2
    return v0

    .line 228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 234
    goto :goto_2
.end method

.method public varargs a(Lvk;[Lvk;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lvk",
            "<TE;>;>(",
            "Lvk",
            "<TE;>;[TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    move v0, v1

    :goto_0
    iget-object v3, p0, Lvi;->a:[Ljava/lang/Object;

    array-length v3, v3

    if-gt v0, v3, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v4

    .line 199
    invoke-interface {p1, v4}, Lvk;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 208
    :cond_1
    return v1

    .line 202
    :cond_2
    array-length v5, p2

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, p2, v3

    .line 203
    invoke-interface {v6, v4}, Lvk;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs b([Lvk;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lvk",
            "<TE;>;>([TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 173
    invoke-virtual {p0, v0}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lvk;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    :goto_1
    return v0

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lvi;->b:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lvj;

    invoke-direct {v0, p0}, Lvj;-><init>(Lvi;)V

    return-object v0
.end method
