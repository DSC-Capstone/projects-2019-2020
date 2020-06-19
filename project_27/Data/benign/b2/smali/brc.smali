.class public Lbrc;
.super Lbra;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbra",
        "<",
        "Lbqb;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private b:Lbqz;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lbqy;

    invoke-direct {v0}, Lbqy;-><init>()V

    invoke-direct {p0, v0}, Lbrc;-><init>(Lbqs;)V

    .line 104
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lbqy;

    invoke-direct {v0, p1, p2, p3, p4}, Lbqy;-><init>(DD)V

    invoke-direct {p0, v0}, Lbrc;-><init>(Lbqs;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lbqs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqs",
            "<",
            "Lbqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lbra;-><init>(Lbqs;)V

    .line 111
    return-void
.end method

.method private varargs a([Lbqv;)V
    .locals 4

    .prologue
    .line 172
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 173
    instance-of v3, v0, Lbqz;

    if-eqz v3, :cond_0

    .line 174
    check-cast v0, Lbqz;

    iput-object v0, p0, Lbrc;->b:Lbqz;

    .line 172
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a(ILbqb;Lbqt;[Lbqv;)Lbqw;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p4}, Lbrc;->a([Lbqv;)V

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Lbra;->a(ILbqb;Lbqt;[Lbqv;)Lbqw;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbqz;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Lbqv;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lbrc;->a([Lbqv;)V

    .line 132
    return-void
.end method

.method protected d()Lbqw;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lbrc;->b:Lbqz;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lbqh;

    invoke-direct {v0}, Lbqh;-><init>()V

    throw v0

    .line 189
    :cond_0
    new-instance v6, Lbrd;

    invoke-direct {v6, p0}, Lbrd;-><init>(Lbrc;)V

    .line 196
    invoke-virtual {p0}, Lbrc;->b()Lbqt;

    move-result-object v0

    sget-object v3, Lbqt;->b:Lbqt;

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 197
    :goto_0
    new-instance v7, Lbre;

    invoke-direct {v7, p0, v0}, Lbre;-><init>(Lbrc;Z)V

    .line 208
    iget-object v0, p0, Lbrc;->b:Lbqz;

    invoke-virtual {p0}, Lbrc;->c()[D

    move-result-object v3

    invoke-virtual {v0, v3}, Lbqz;->a([D)V

    .line 209
    iget-object v0, p0, Lbrc;->b:Lbqz;

    invoke-virtual {v0, v6, v7}, Lbqz;->b(Lbqb;Ljava/util/Comparator;)V

    .line 211
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0}, Lbrc;->a()Lbqs;

    move-result-object v8

    move v4, v2

    move-object v5, v0

    .line 215
    :goto_1
    if-lez v4, :cond_4

    move v0, v2

    move v3, v1

    .line 217
    :goto_2
    iget-object v9, p0, Lbrc;->b:Lbqz;

    invoke-virtual {v9}, Lbqz;->b()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 218
    aget-object v9, v5, v0

    .line 219
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbrc;->b:Lbqz;

    invoke-virtual {v3, v0}, Lbqz;->a(I)Lbqw;

    move-result-object v3

    invoke-interface {v8, v4, v9, v3}, Lbqs;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 217
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    .line 196
    goto :goto_0

    :cond_2
    move v3, v2

    .line 219
    goto :goto_3

    .line 222
    :cond_3
    if-eqz v3, :cond_4

    .line 224
    iget-object v0, p0, Lbrc;->b:Lbqz;

    invoke-virtual {v0, v2}, Lbqz;->a(I)Lbqw;

    move-result-object v0

    return-object v0

    .line 229
    :cond_4
    iget-object v0, p0, Lbrc;->b:Lbqz;

    invoke-virtual {v0}, Lbqz;->c()[Lbqw;

    move-result-object v3

    .line 230
    iget-object v0, p0, Lbrc;->b:Lbqz;

    invoke-virtual {v0, v6, v7}, Lbqz;->a(Lbqb;Ljava/util/Comparator;)V

    .line 231
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v3

    goto :goto_1
.end method
