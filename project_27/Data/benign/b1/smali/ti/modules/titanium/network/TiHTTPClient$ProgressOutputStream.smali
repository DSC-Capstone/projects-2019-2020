.class Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TiHTTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressOutputStream"
.end annotation


# instance fields
.field private lastTransferred:I

.field private listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;

.field private transferred:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V
    .locals 1
    .param p2, "delegate"    # Ljava/io/OutputStream;
    .param p3, "listener"    # Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    .prologue
    const/4 v0, 0x0

    .line 432
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    .line 433
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 429
    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->transferred:I

    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->lastTransferred:I

    .line 434
    iput-object p3, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    .line 435
    return-void
.end method

.method private fireProgress()V
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->transferred:I

    iget v1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->lastTransferred:I

    sub-int/2addr v0, v1

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 441
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->transferred:I

    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->lastTransferred:I

    .line 442
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    iget v1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->transferred:I

    invoke-interface {v0, v1}, Lti/modules/titanium/network/TiHTTPClient$ProgressListener;->progress(I)V

    .line 444
    :cond_0
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 450
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->transferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->transferred:I

    .line 451
    invoke-direct {p0}, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;->fireProgress()V

    .line 452
    return-void
.end method
