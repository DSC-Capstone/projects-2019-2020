.class Lep;
.super Leo;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Leo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 147
    invoke-static {p1}, Les;->a(I)I

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 1

    .prologue
    .line 152
    invoke-static {p1, p2}, Les;->a(II)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Les;->b(I)Z

    move-result v0

    return v0
.end method
