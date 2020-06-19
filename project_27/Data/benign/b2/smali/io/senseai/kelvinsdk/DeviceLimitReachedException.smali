.class public Lio/senseai/kelvinsdk/DeviceLimitReachedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "The trial account you are using has hit its user limit."

    return-object v0
.end method
