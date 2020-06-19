.class final Lio/senseai/kelvinsdk/KelvinInit$2;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Landroid/content/Intent;

.field private synthetic ˋ:Lio/senseai/kelvinsdk/KelvinInit;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/KelvinInit;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˋ:Lio/senseai/kelvinsdk/KelvinInit;

    iput-object p2, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˊ()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVAL_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/Intent;)Z

    .line 154
    return-void
.end method

.method public final ˊ(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVAL_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/Intent;)Z

    .line 141
    return-void
.end method

.method public final synthetic ˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    const-string v1, "KelvinInit.KEY_PIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/KelvinInit$2;->ˊ:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/Intent;)Z

    .line 136
    return-void
.end method
