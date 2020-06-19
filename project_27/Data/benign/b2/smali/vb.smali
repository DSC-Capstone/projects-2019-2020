.class Lvb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lvc;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method constructor <init>(Lvc;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lvb;->a:Lvc;

    .line 133
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lvb;->b:Ljava/lang/String;

    .line 134
    iput p3, p0, Lvb;->c:I

    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v2, p1, Lvb;

    if-nez v2, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    check-cast p1, Lvb;

    .line 149
    iget-object v2, p0, Lvb;->a:Lvc;

    iget-object v3, p1, Lvb;->a:Lvc;

    .line 150
    invoke-virtual {v2, v3}, Lvc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lvb;->b:Ljava/lang/String;

    iget-object v3, p1, Lvb;->b:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lvb;->c:I

    iget v3, p1, Lvb;->c:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 160
    .line 161
    iget-object v0, p0, Lvb;->a:Lvc;

    invoke-virtual {v0}, Lvc;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x163

    .line 162
    mul-int/lit8 v0, v0, 0x47

    iget-object v1, p0, Lvb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x47

    iget v1, p0, Lvb;->c:I

    add-int/2addr v0, v1

    .line 164
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    const-string v0, "%s(%s) at position %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lvb;->a:Lvc;

    .line 176
    invoke-virtual {v3}, Lvc;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lvb;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lvb;->c:I

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 174
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
