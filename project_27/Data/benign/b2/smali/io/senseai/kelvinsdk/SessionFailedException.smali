.class public Lio/senseai/kelvinsdk/SessionFailedException;
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
    const-string v0, "A session could not be fetched from Kelvin Servers during initial startup."

    return-object v0
.end method
