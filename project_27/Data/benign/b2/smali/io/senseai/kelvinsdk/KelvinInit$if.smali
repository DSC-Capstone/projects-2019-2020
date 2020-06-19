.class final Lio/senseai/kelvinsdk/KelvinInit$if;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/KelvinInit;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/KelvinInit;)V
    .locals 0

    .prologue
    .line 2188
    iput-object p1, p0, Lio/senseai/kelvinsdk/KelvinInit$if;->ˊ:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˊ(Lio/senseai/kelvinsdk/DeviceObject;)V
    .locals 1

    .prologue
    .line 1192
    if-eqz p1, :cond_0

    .line 1194
    sput-object p1, Lio/senseai/kelvinsdk/iF;->mDeviceObject:Lio/senseai/kelvinsdk/DeviceObject;

    .line 1195
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit$if;->ˊ:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-static {v0}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ(Lio/senseai/kelvinsdk/KelvinInit;)V

    .line 1200
    :goto_0
    return-void

    .line 1198
    :cond_0
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ʻ(Landroid/content/Context;)V

    .line 1199
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit$if;->ˊ:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-static {v0}, Lio/senseai/kelvinsdk/KelvinInit;->ˋ(Lio/senseai/kelvinsdk/KelvinInit;)Z

    goto :goto_0
.end method
