.class final Lio/senseai/kelvinsdk/If$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/ˋ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/senseai/kelvinsdk/\u02cb",
        "<",
        "Lio/senseai/kelvinsdk/Session;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/If$6;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/If$6;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lio/senseai/kelvinsdk/If$6$1;->ˊ:Lio/senseai/kelvinsdk/If$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˊ()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6$1;->ˊ:Lio/senseai/kelvinsdk/If$6;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ()V

    .line 442
    return-void
.end method

.method public final ˊ(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6$1;->ˊ:Lio/senseai/kelvinsdk/If$6;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ()V

    .line 429
    return-void
.end method

.method public final synthetic ˊ(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 424
    check-cast p1, Lio/senseai/kelvinsdk/Session;

    .line 1434
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;)Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$6$1;->ˊ:Lio/senseai/kelvinsdk/If$6;

    iget-object v0, v0, Lio/senseai/kelvinsdk/If$6;->ˎ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$6$1;->ˊ:Lio/senseai/kelvinsdk/If$6;

    iget-object v1, v1, Lio/senseai/kelvinsdk/If$6;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    iget-object v2, p0, Lio/senseai/kelvinsdk/If$6$1;->ˊ:Lio/senseai/kelvinsdk/If$6;

    iget v2, v2, Lio/senseai/kelvinsdk/If$6;->ˋ:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;I)V

    .line 424
    return-void
.end method
