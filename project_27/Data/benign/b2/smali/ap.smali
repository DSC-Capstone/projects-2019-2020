.class public Lap;
.super Lan;
.source "SourceFile"


# static fields
.field static a:Z


# instance fields
.field final b:Ldl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldl",
            "<",
            "Laq;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ldl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldl",
            "<",
            "Laq;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Lo;

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lap;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo;Z)V
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Lan;-><init>()V

    .line 194
    new-instance v0, Ldl;

    invoke-direct {v0}, Ldl;-><init>()V

    iput-object v0, p0, Lap;->b:Ldl;

    .line 200
    new-instance v0, Ldl;

    invoke-direct {v0}, Ldl;-><init>()V

    iput-object v0, p0, Lap;->c:Ldl;

    .line 478
    iput-object p1, p0, Lap;->d:Ljava/lang/String;

    .line 479
    iput-object p2, p0, Lap;->e:Lo;

    .line 480
    iput-boolean p3, p0, Lap;->f:Z

    .line 481
    return-void
.end method

.method private c(ILandroid/os/Bundle;Lao;)Laq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lao",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Laq;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Laq;

    invoke-direct {v0, p0, p1, p2, p3}, Laq;-><init>(Lap;ILandroid/os/Bundle;Lao;)V

    .line 490
    invoke-interface {p3, p1, p2}, Lao;->a(ILandroid/os/Bundle;)Law;

    move-result-object v1

    .line 491
    iput-object v1, v0, Laq;->d:Law;

    .line 492
    return-object v0
.end method

.method private d(ILandroid/os/Bundle;Lao;)Laq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lao",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Laq;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 498
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lap;->h:Z

    .line 499
    invoke-direct {p0, p1, p2, p3}, Lap;->c(ILandroid/os/Bundle;Lao;)Laq;

    move-result-object v0

    .line 500
    invoke-virtual {p0, v0}, Lap;->a(Laq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iput-boolean v1, p0, Lap;->h:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lap;->h:Z

    throw v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lao;)Law;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lao",
            "<TD;>;)",
            "Law",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-boolean v0, p0, Lap;->h:Z

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, p1}, Ldl;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 549
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    if-nez v0, :cond_4

    .line 553
    invoke-direct {p0, p1, p2, p3}, Lap;->d(ILandroid/os/Bundle;Lao;)Laq;

    move-result-object v0

    .line 554
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_2
    :goto_0
    iget-boolean v1, v0, Laq;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lap;->f:Z

    if-eqz v1, :cond_3

    .line 562
    iget-object v1, v0, Laq;->d:Law;

    iget-object v2, v0, Laq;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Laq;->b(Law;Ljava/lang/Object;)V

    .line 565
    :cond_3
    iget-object v0, v0, Laq;->d:Law;

    return-object v0

    .line 556
    :cond_4
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_5
    iput-object p3, v0, Laq;->c:Lao;

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 658
    iget-boolean v0, p0, Lap;->h:Z

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_1
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, p1}, Ldl;->g(I)I

    move-result v1

    .line 664
    if-ltz v1, :cond_2

    .line 665
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 666
    iget-object v2, p0, Lap;->b:Ldl;

    invoke-virtual {v2, v1}, Ldl;->d(I)V

    .line 667
    invoke-virtual {v0}, Laq;->f()V

    .line 669
    :cond_2
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0, p1}, Ldl;->g(I)I

    move-result v1

    .line 670
    if-ltz v1, :cond_3

    .line 671
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 672
    iget-object v2, p0, Lap;->c:Ldl;

    invoke-virtual {v2, v1}, Ldl;->d(I)V

    .line 673
    invoke-virtual {v0}, Laq;->f()V

    .line 675
    :cond_3
    iget-object v0, p0, Lap;->e:Lo;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lap;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 676
    iget-object v0, p0, Lap;->e:Lo;

    iget-object v0, v0, Lo;->b:Lv;

    invoke-virtual {v0}, Lv;->e()V

    .line 678
    :cond_4
    return-void
.end method

.method a(Laq;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lap;->b:Ldl;

    iget v1, p1, Laq;->a:I

    invoke-virtual {v0, v1, p1}, Ldl;->b(ILjava/lang/Object;)V

    .line 509
    iget-boolean v0, p0, Lap;->f:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Laq;->a()V

    .line 515
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 804
    :goto_0
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 805
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 806
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lap;->b:Ldl;

    invoke-virtual {v4, v1}, Ldl;->e(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 807
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Laq;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v3, p2, p3, p4}, Laq;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 804
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    :goto_1
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 815
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0, v2}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 816
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lap;->c:Ldl;

    invoke-virtual {v3, v2}, Ldl;->e(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Laq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1, p2, p3, p4}, Laq;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :cond_1
    return-void
.end method

.method a(Lo;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lap;->e:Lo;

    .line 485
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 825
    .line 826
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 827
    :goto_0
    if-ge v2, v4, :cond_1

    .line 828
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v2}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 829
    iget-boolean v5, v0, Laq;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Laq;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 827
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 829
    goto :goto_1

    .line 831
    :cond_1
    return v3
.end method

.method public b(I)Law;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Law",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 686
    iget-boolean v0, p0, Lap;->h:Z

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, p1}, Ldl;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 691
    if-eqz v0, :cond_2

    .line 692
    iget-object v1, v0, Laq;->n:Laq;

    if-eqz v1, :cond_1

    .line 693
    iget-object v0, v0, Laq;->n:Laq;

    iget-object v0, v0, Laq;->d:Law;

    .line 697
    :goto_0
    return-object v0

    .line 695
    :cond_1
    iget-object v0, v0, Laq;->d:Law;

    goto :goto_0

    .line 697
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/os/Bundle;Lao;)Law;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lao",
            "<TD;>;)",
            "Law",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-boolean v0, p0, Lap;->h:Z

    if-eqz v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, p1}, Ldl;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    .line 598
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    if-eqz v0, :cond_3

    .line 600
    iget-object v1, p0, Lap;->c:Ldl;

    invoke-virtual {v1, p1}, Ldl;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laq;

    .line 601
    if-eqz v1, :cond_a

    .line 602
    iget-boolean v2, v0, Laq;->e:Z

    if-eqz v2, :cond_4

    .line 607
    sget-boolean v2, Lap;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Laq;->f:Z

    .line 609
    invoke-virtual {v1}, Laq;->f()V

    .line 610
    iget-object v1, v0, Laq;->d:Law;

    invoke-virtual {v1}, Law;->h()V

    .line 611
    iget-object v1, p0, Lap;->c:Ldl;

    invoke-virtual {v1, p1, v0}, Ldl;->b(ILjava/lang/Object;)V

    .line 646
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lap;->d(ILandroid/os/Bundle;Lao;)Laq;

    move-result-object v0

    .line 647
    iget-object v0, v0, Laq;->d:Law;

    :goto_1
    return-object v0

    .line 615
    :cond_4
    iget-boolean v1, v0, Laq;->h:Z

    if-nez v1, :cond_6

    .line 619
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    const-string v2, "  Current loader is stopped; replacing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_5
    iget-object v1, p0, Lap;->b:Ldl;

    invoke-virtual {v1, p1, v4}, Ldl;->b(ILjava/lang/Object;)V

    .line 621
    invoke-virtual {v0}, Laq;->f()V

    goto :goto_0

    .line 626
    :cond_6
    iget-object v1, v0, Laq;->n:Laq;

    if-eqz v1, :cond_8

    .line 627
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_7

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Removing pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Laq;->n:Laq;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_7
    iget-object v1, v0, Laq;->n:Laq;

    invoke-virtual {v1}, Laq;->f()V

    .line 629
    iput-object v4, v0, Laq;->n:Laq;

    .line 631
    :cond_8
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "LoaderManager"

    const-string v2, "  Enqueuing as new pending loader"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lap;->c(ILandroid/os/Bundle;Lao;)Laq;

    move-result-object v1

    iput-object v1, v0, Laq;->n:Laq;

    .line 634
    iget-object v0, v0, Laq;->n:Laq;

    iget-object v0, v0, Laq;->d:Law;

    goto :goto_1

    .line 640
    :cond_a
    sget-boolean v1, Lap;->a:Z

    if-eqz v1, :cond_b

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Making last loader inactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_b
    iget-object v1, v0, Laq;->d:Law;

    invoke-virtual {v1}, Law;->h()V

    .line 642
    iget-object v1, p0, Lap;->c:Ldl;

    invoke-virtual {v1, p1, v0}, Ldl;->b(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 701
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iget-boolean v0, p0, Lap;->f:Z

    if-eqz v0, :cond_2

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 705
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    :cond_1
    return-void

    .line 709
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lap;->f:Z

    .line 713
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 714
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->a()V

    .line 713
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 719
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-boolean v0, p0, Lap;->f:Z

    if-nez v0, :cond_1

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 723
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 728
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->e()V

    .line 727
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 730
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lap;->f:Z

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 734
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    iget-boolean v0, p0, Lap;->f:Z

    if-nez v0, :cond_2

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 738
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    :cond_1
    return-void

    .line 742
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lap;->g:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lap;->f:Z

    .line 744
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 745
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->b()V

    .line 744
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method e()V
    .locals 3

    .prologue
    .line 750
    iget-boolean v0, p0, Lap;->g:Z

    if-eqz v0, :cond_1

    .line 751
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lap;->g:Z

    .line 754
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 755
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->c()V

    .line 754
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 762
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    const/4 v2, 0x1

    iput-boolean v2, v0, Laq;->k:Z

    .line 761
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 768
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->d()V

    .line 767
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 773
    iget-boolean v0, p0, Lap;->g:Z

    if-nez v0, :cond_2

    .line 774
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 776
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->f()V

    .line 775
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Lap;->b:Ldl;

    invoke-virtual {v0}, Ldl;->c()V

    .line 781
    :cond_2
    sget-boolean v0, Lap;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_3
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0}, Ldl;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 783
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0, v1}, Ldl;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq;

    invoke-virtual {v0}, Laq;->f()V

    .line 782
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 785
    :cond_4
    iget-object v0, p0, Lap;->c:Ldl;

    invoke-virtual {v0}, Ldl;->c()V

    .line 786
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v1, p0, Lap;->e:Lo;

    invoke-static {v1, v0}, Ldb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 795
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
