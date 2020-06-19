.class final Lio/senseai/kelvinsdk/KelvinInit$ˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ˊ:Lio/senseai/kelvinsdk/KelvinInit$if;

.field private synthetic ˋ:Lio/senseai/kelvinsdk/KelvinInit;


# direct methods
.method public constructor <init>(Lio/senseai/kelvinsdk/KelvinInit;Lio/senseai/kelvinsdk/KelvinInit$if;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lio/senseai/kelvinsdk/KelvinInit$ˊ;->ˋ:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lio/senseai/kelvinsdk/KelvinInit$ˊ;->ˊ:Lio/senseai/kelvinsdk/KelvinInit$if;

    .line 263
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lio/senseai/kelvinsdk/KelvinInit$ˊ;->ˊ:Lio/senseai/kelvinsdk/KelvinInit$if;

    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/KelvinInit$if;->ˊ(Lio/senseai/kelvinsdk/DeviceObject;)V

    .line 272
    return-void
.end method
