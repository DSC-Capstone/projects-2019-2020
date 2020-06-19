.class Lue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Luc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lud;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lue;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Luc;Luc;)I
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p1, p2}, Luc;->e(Luc;)I

    move-result v0

    .line 199
    if-nez v0, :cond_1

    .line 200
    invoke-static {p1}, Luc;->f(Luc;)Ltw;

    move-result-object v0

    invoke-static {p2}, Luc;->f(Luc;)Ltw;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw;->a(Ltw;)I

    move-result v0

    .line 201
    invoke-static {p1}, Luc;->f(Luc;)Ltw;

    move-result-object v1

    sget-object v2, Ltw;->a:Ltw;

    if-eq v1, v2, :cond_0

    .line 202
    invoke-static {p2}, Luc;->f(Luc;)Ltw;

    move-result-object v1

    sget-object v2, Ltw;->a:Ltw;

    if-ne v1, v2, :cond_1

    .line 209
    :cond_0
    mul-int/lit8 v0, v0, -0x1

    .line 212
    :cond_1
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 180
    check-cast p1, Luc;

    check-cast p2, Luc;

    invoke-virtual {p0, p1, p2}, Lue;->a(Luc;Luc;)I

    move-result v0

    return v0
.end method
