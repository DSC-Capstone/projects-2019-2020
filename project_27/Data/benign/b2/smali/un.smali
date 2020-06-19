.class final enum Lun;
.super Luh;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luh;-><init>(Ljava/lang/String;ILug;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 107
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lun;->b(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Character;)Z
    .locals 1

    .prologue
    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
