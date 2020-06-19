.class Lty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lty;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(III)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Major, minor and patch versions MUST be non-negative integers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput p1, p0, Lty;->a:I

    .line 67
    iput p2, p0, Lty;->b:I

    .line 68
    iput p3, p0, Lty;->c:I

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lty;)I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lty;->a:I

    iget v1, p1, Lty;->a:I

    sub-int/2addr v0, v1

    .line 131
    if-nez v0, :cond_0

    .line 132
    iget v0, p0, Lty;->b:I

    iget v1, p1, Lty;->b:I

    sub-int/2addr v0, v1

    .line 133
    if-nez v0, :cond_0

    .line 134
    iget v0, p0, Lty;->c:I

    iget v1, p1, Lty;->c:I

    sub-int/2addr v0, v1

    .line 137
    :cond_0
    return v0
.end method

.method a()Lty;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    new-instance v0, Lty;

    iget v1, p0, Lty;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lty;-><init>(III)V

    return-object v0
.end method

.method b()Lty;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lty;

    iget v1, p0, Lty;->a:I

    iget v2, p0, Lty;->b:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lty;-><init>(III)V

    return-object v0
.end method

.method c()Lty;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lty;

    iget v1, p0, Lty;->a:I

    iget v2, p0, Lty;->b:I

    iget v3, p0, Lty;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lty;-><init>(III)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lty;

    invoke-virtual {p0, p1}, Lty;->a(Lty;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    instance-of v2, p1, Lty;

    if-nez v2, :cond_2

    move v0, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_2
    check-cast p1, Lty;

    invoke-virtual {p0, p1}, Lty;->a(Lty;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 159
    .line 160
    iget v0, p0, Lty;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lty;->b:I

    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lty;->c:I

    add-int/2addr v0, v1

    .line 163
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    const-string v0, "%d.%d.%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lty;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lty;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lty;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
