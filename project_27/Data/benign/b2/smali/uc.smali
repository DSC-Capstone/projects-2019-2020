.class public Luc;
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
        "Luc;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Luc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lty;

.field private final c:Ltw;

.field private final d:Ltw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lue;-><init>(Lud;)V

    sput-object v0, Luc;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lty;)V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Ltw;->a:Ltw;

    sget-object v1, Ltw;->a:Ltw;

    invoke-direct {p0, p1, v0, v1}, Luc;-><init>(Lty;Ltw;Ltw;)V

    .line 223
    return-void
.end method

.method constructor <init>(Lty;Ltw;Ltw;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Luc;->b:Lty;

    .line 250
    iput-object p2, p0, Luc;->c:Ltw;

    .line 251
    iput-object p3, p0, Luc;->d:Ltw;

    .line 252
    return-void
.end method

.method public static a(III)Luc;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Luc;

    new-instance v1, Lty;

    invoke-direct {v1, p0, p1, p2}, Lty;-><init>(III)V

    invoke-direct {v0, v1}, Luc;-><init>(Lty;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Luc;
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Luf;->c(Ljava/lang/String;)Luc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Luc;)Ltw;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Luc;->d:Ltw;

    return-object v0
.end method


# virtual methods
.method public a()Luc;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Luc;

    iget-object v1, p0, Luc;->b:Lty;

    invoke-virtual {v1}, Lty;->a()Lty;

    move-result-object v1

    invoke-direct {v0, v1}, Luc;-><init>(Lty;)V

    return-object v0
.end method

.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Luc;->e(Luc;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lut;)Z
    .locals 1

    .prologue
    .line 339
    invoke-interface {p1, p0}, Lut;->a(Luc;)Z

    move-result v0

    return v0
.end method

.method public b()Luc;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Luc;

    iget-object v1, p0, Luc;->b:Lty;

    invoke-virtual {v1}, Lty;->b()Lty;

    move-result-object v1

    invoke-direct {v0, v1}, Luc;-><init>(Lty;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Luu;->a()Lua;

    move-result-object v0

    .line 325
    invoke-interface {v0, p1}, Lua;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    invoke-virtual {p0, v0}, Luc;->a(Lut;)Z

    move-result v0

    return v0
.end method

.method public b(Luc;)Z
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Luc;->e(Luc;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Luc;
    .locals 2

    .prologue
    .line 398
    new-instance v0, Luc;

    iget-object v1, p0, Luc;->b:Lty;

    invoke-virtual {v1}, Lty;->c()Lty;

    move-result-object v1

    invoke-direct {v0, v1}, Luc;-><init>(Lty;)V

    return-object v0
.end method

.method public c(Luc;)Z
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Luc;->e(Luc;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Luc;

    invoke-virtual {p0, p1}, Luc;->e(Luc;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Luc;->b:Lty;

    invoke-virtual {v0}, Lty;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Luc;)Z
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Luc;->e(Luc;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Luc;)I
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Luc;->b:Lty;

    iget-object v1, p1, Luc;->b:Lty;

    invoke-virtual {v0, v1}, Lty;->a(Lty;)I

    move-result v0

    .line 627
    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Luc;->c:Ltw;

    iget-object v1, p1, Luc;->c:Ltw;

    invoke-virtual {v0, v1}, Ltw;->a(Ltw;)I

    move-result v0

    .line 630
    :cond_0
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Luc;->c:Ltw;

    invoke-virtual {v0}, Ltw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 575
    if-ne p0, p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    instance-of v2, p1, Luc;

    if-nez v2, :cond_2

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :cond_2
    check-cast p1, Luc;

    invoke-virtual {p0, p1}, Luc;->e(Luc;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Luc;->d:Ltw;

    invoke-virtual {v0}, Ltw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 589
    .line 590
    iget-object v0, p0, Luc;->b:Lty;

    invoke-virtual {v0}, Lty;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x1e5

    .line 591
    mul-int/lit8 v0, v0, 0x61

    iget-object v1, p0, Luc;->c:Ltw;

    invoke-virtual {v1}, Ltw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 592
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Luc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Luc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Luc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_0
    invoke-virtual {p0}, Luc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Luc;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
