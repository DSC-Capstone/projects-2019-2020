.class Lbar;
.super Lbdg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdg",
        "<",
        "Lazr;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Lbcp;

.field final synthetic c:Lbag;


# direct methods
.method private constructor <init>(Lbag;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lbar;->c:Lbag;

    invoke-direct {p0}, Lbdg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbag;Lbah;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lbar;-><init>(Lbag;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lbdg;->a()V

    .line 333
    :try_start_0
    iget-object v0, p0, Lbar;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lbar;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method
