.class final Lio/senseai/kelvinsdk/If$3;
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
.field final synthetic ˊ:I

.field final synthetic ˋ:Lio/senseai/kelvinsdk/ˋ;

.field final synthetic ˎ:I

.field final synthetic ˏ:Lio/senseai/kelvinsdk/If;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/If;ILio/senseai/kelvinsdk/ˋ;I)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    iput p2, p0, Lio/senseai/kelvinsdk/If$3;->ˊ:I

    iput-object p3, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    iput p4, p0, Lio/senseai/kelvinsdk/If$3;->ˎ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/16 v4, 0x1a4

    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 243
    check-cast p2, Lbmh;

    .line 1246
    if-eqz p1, :cond_2

    .line 1248
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    .line 1250
    iget v0, p0, Lio/senseai/kelvinsdk/If$3;->ˊ:I

    if-ge v0, v3, :cond_0

    .line 1251
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    iget v1, p0, Lio/senseai/kelvinsdk/If$3;->ˊ:I

    iget-object v2, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    iget v3, p0, Lio/senseai/kelvinsdk/If$3;->ˎ:I

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;ILio/senseai/kelvinsdk/ˋ;I)V

    .line 1305
    :goto_0
    return-void

    .line 1254
    :cond_0
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1255
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1258
    :cond_1
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1259
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1261
    :cond_2
    invoke-virtual {p2}, Lbmh;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1263
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1264
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1265
    :cond_3
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_6

    .line 1267
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    .line 1268
    iget-object v1, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    invoke-static {v1, p2}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lbmh;)V

    .line 1269
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1270
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ᐝ()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʻ()I

    move-result v0

    if-lez v0, :cond_5

    .line 1272
    :cond_4
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    const/4 v2, 0x0

    iget v3, p0, Lio/senseai/kelvinsdk/If$3;->ˎ:I

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;II)V

    goto :goto_0

    .line 1275
    :cond_5
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Object;)V

    goto :goto_0

    .line 1277
    :cond_6
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_7

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_7

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_7

    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 1281
    :cond_7
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1283
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    invoke-static {v0, p2}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lbmh;)V

    .line 1286
    :cond_8
    iget v0, p0, Lio/senseai/kelvinsdk/If$3;->ˊ:I

    if-ge v0, v3, :cond_9

    .line 1287
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    iget v1, p0, Lio/senseai/kelvinsdk/If$3;->ˊ:I

    iget-object v2, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    iget v3, p0, Lio/senseai/kelvinsdk/If$3;->ˎ:I

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;ILio/senseai/kelvinsdk/ˋ;I)V

    goto/16 :goto_0

    .line 1290
    :cond_9
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1291
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1293
    :cond_a
    invoke-virtual {p2}, Lbmh;->d()Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->b()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_c

    .line 1296
    iget v0, p0, Lio/senseai/kelvinsdk/If$3;->ˎ:I

    if-le v0, v2, :cond_b

    .line 1298
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1299
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    invoke-interface {v0}, Lio/senseai/kelvinsdk/ˋ;->ˊ()V

    goto/16 :goto_0

    .line 1303
    :cond_b
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˊ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/Session;)Lio/senseai/kelvinsdk/Session;

    .line 1305
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˏ:Lio/senseai/kelvinsdk/If;

    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˏ()Lio/senseai/kelvinsdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Session;->getApiKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/senseai/kelvinsdk/if;

    invoke-direct {v2, p0}, Lio/senseai/kelvinsdk/if;-><init>(Lio/senseai/kelvinsdk/If$3;)V

    invoke-virtual {v0, v1, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    goto/16 :goto_0

    .line 1339
    :cond_c
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 1340
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$3;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/ˋ;->ˊ(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
