.class final Lio/senseai/kelvinsdk/If$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbdb",
        "<",
        "Lbmh",
        "<",
        "Lauw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ˊ:Lio/senseai/kelvinsdk/ˋ;

.field final synthetic ˋ:I

.field final synthetic ˎ:Lio/senseai/kelvinsdk/If;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;I)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lio/senseai/kelvinsdk/If$6;->ˎ:Lio/senseai/kelvinsdk/If;

    iput-object p2, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    iput p3, p0, Lio/senseai/kelvinsdk/If$6;->ˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 393
    check-cast p2, Lbmh;

    .line 1396
    if-eqz p1, :cond_0

    .line 1398
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    .line 1424
    :goto_0
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p2}, Lbmh;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1402
    :cond_1
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 1404
    invoke-virtual {p2}, Lbmh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauw;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lauw;->c(Ljava/lang/String;)Lauw;

    move-result-object v0

    .line 1405
    iget-object v1, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    const-string v2, "pin"

    invoke-virtual {v0, v2}, Lauw;->a(Ljava/lang/String;)Lauz;

    move-result-object v0

    invoke-virtual {v0}, Lauz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Object;)V

    goto :goto_0

    .line 1406
    :cond_2
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x198

    if-ne v0, v1, :cond_5

    .line 1407
    :cond_3
    iget v0, p0, Lio/senseai/kelvinsdk/If$6;->ˋ:I

    if-ge v0, v2, :cond_4

    .line 1409
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˎ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    iget v2, p0, Lio/senseai/kelvinsdk/If$6;->ˋ:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;I)V

    goto :goto_0

    .line 1412
    :cond_4
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1414
    :cond_5
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_7

    .line 1417
    iget v0, p0, Lio/senseai/kelvinsdk/If$6;->ˋ:I

    if-le v0, v2, :cond_6

    .line 1418
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ()V

    goto/16 :goto_0

    .line 1422
    :cond_6
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/Session;)Lio/senseai/kelvinsdk/Session;

    .line 1424
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˎ:Lio/senseai/kelvinsdk/If;

    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˏ()Lio/senseai/kelvinsdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Session;->getApiKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/senseai/kelvinsdk/If$6$1;

    invoke-direct {v2, p0}, Lio/senseai/kelvinsdk/If$6$1;-><init>(Lio/senseai/kelvinsdk/If$6;)V

    invoke-virtual {v0, v1, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    goto/16 :goto_0

    .line 1446
    :cond_7
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
