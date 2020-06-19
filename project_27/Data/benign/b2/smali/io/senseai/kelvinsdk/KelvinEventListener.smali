.class public interface abstract Lio/senseai/kelvinsdk/KelvinEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCantMakePrediction()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onPINfailed()V
.end method

.method public abstract onPINreceived(Ljava/lang/String;)V
.end method

.method public abstract onPredictionNow(Lio/senseai/kelvinsdk/Temperature;)V
.end method

.method public abstract onTemperatureUpdate(Lio/senseai/kelvinsdk/Temperature;)V
.end method
