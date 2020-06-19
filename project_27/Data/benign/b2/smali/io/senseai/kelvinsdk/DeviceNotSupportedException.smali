.class public Lio/senseai/kelvinsdk/DeviceNotSupportedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private ˊ:Ljava/lang/String;

.field private ˋ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceNotSupportedException;->ˊ:Ljava/lang/String;

    .line 15
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lio/senseai/kelvinsdk/DeviceNotSupportedException;->ˋ:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    const-string v0, "Device not supported (%s) (%s)."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/senseai/kelvinsdk/DeviceNotSupportedException;->ˊ:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lio/senseai/kelvinsdk/DeviceNotSupportedException;->ˋ:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
