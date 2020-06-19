.class final Lio/senseai/kelvinsdk/ˎ$1;
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
.field private synthetic ˊ:Lio/senseai/kelvinsdk/ˎ;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/ˎ;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˊ()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    iget-object v1, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ˎ;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/senseai/kelvinsdk/ˎ;->ˊ(Lio/senseai/kelvinsdk/ˎ;Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public final ˊ(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    iget-object v1, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ˎ;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/senseai/kelvinsdk/ˎ;->ˊ(Lio/senseai/kelvinsdk/ˎ;Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public final synthetic ˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 45
    .line 1055
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    iget-object v1, p0, Lio/senseai/kelvinsdk/ˎ$1;->ˊ:Lio/senseai/kelvinsdk/ˎ;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ˎ;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/senseai/kelvinsdk/ˎ;->startServices(Landroid/content/Context;)V

    .line 45
    return-void
.end method
