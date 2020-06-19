.class Ltw;
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
        "Ltw;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ltw;


# instance fields
.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ltx;

    invoke-direct {v0}, Ltx;-><init>()V

    sput-object v0, Ltw;->a:Ltw;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Ltw;->b:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0, p1}, Ltw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Ltw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 199
    .line 200
    iget-object v1, p0, Ltw;->b:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Ltw;->a([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v1, v0

    .line 201
    :goto_0
    if-ge v1, v2, :cond_0

    .line 202
    iget-object v0, p0, Ltw;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v3, p1, v1

    invoke-direct {p0, v0, v3}, Ltw;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 203
    if-eqz v0, :cond_1

    .line 207
    :cond_0
    return v0

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 218
    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_0

    array-length v0, p1

    :goto_0
    return v0

    :cond_0
    array-length v0, p2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 246
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ltw;)I
    .locals 2

    .prologue
    .line 172
    sget-object v0, Ltw;->a:Ltw;

    if-ne p1, v0, :cond_1

    .line 177
    const/4 v0, -0x1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v0, p1, Ltw;->b:[Ljava/lang/String;

    invoke-direct {p0, v0}, Ltw;->a([Ljava/lang/String;)I

    move-result v0

    .line 180
    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Ltw;->b:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p1, Ltw;->b:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ltw;

    invoke-virtual {p0, p1}, Ltw;->a(Ltw;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-ne p0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    instance-of v2, p1, Ltw;

    if-nez v2, :cond_2

    move v0, v1

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    check-cast p1, Ltw;

    invoke-virtual {p0, p1}, Ltw;->a(Ltw;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ltw;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    iget-object v2, p0, Ltw;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
