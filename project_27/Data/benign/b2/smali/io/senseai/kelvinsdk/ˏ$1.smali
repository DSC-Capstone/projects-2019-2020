.class final Lio/senseai/kelvinsdk/ˏ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laai;


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/ˏ;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/ˏ;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lio/senseai/kelvinsdk/ˏ$1;->ˊ:Lio/senseai/kelvinsdk/ˏ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ$1;->ˊ:Lio/senseai/kelvinsdk/ˏ;

    iget-object v0, v0, Lio/senseai/kelvinsdk/ˏ;->ˊ:Lio/senseai/kelvinsdk/LocationService$2;

    sget-object v1, Lapq;->b:Lapk;

    iget-object v2, p0, Lio/senseai/kelvinsdk/ˏ$1;->ˊ:Lio/senseai/kelvinsdk/ˏ;

    invoke-static {v2}, Lio/senseai/kelvinsdk/ˏ;->ˊ(Lio/senseai/kelvinsdk/ˏ;)Laag;

    move-result-object v2

    invoke-interface {v1, v2}, Lapk;->a(Laag;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/LocationService$LocationClientCallbacks;->onLocationUpdate(Landroid/location/Location;)V

    .line 33
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
