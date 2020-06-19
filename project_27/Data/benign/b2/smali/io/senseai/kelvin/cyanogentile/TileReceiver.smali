.class public Lio/senseai/kelvin/cyanogentile/TileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "TileReceiver"

    sput-object v0, Lio/senseai/kelvin/cyanogentile/TileReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lio/senseai/kelvin/cyanogentile/TileReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v0, "io.senseai.kelvin.cyanogentile.ACTION_TILE_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lio/senseai/kelvin/cyanogentile/TileReceiver;->a:Ljava/lang/String;

    const-string v1, "Tile clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lboz;->a:[I

    invoke-static {p1}, Lbpr;->a(Landroid/content/Context;)Lbpn;

    move-result-object v1

    invoke-virtual {v1}, Lbpn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    invoke-static {}, Lboy;->a()Lio/senseai/kelvinsdk/Temperature;

    move-result-object v0

    invoke-static {p1, v0}, Lboy;->a(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 24
    :pswitch_0
    sget-object v0, Lbpn;->c:Lbpn;

    invoke-static {p1, v0}, Lbpr;->a(Landroid/content/Context;Lbpn;)V

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lbpn;->a:Lbpn;

    invoke-static {p1, v0}, Lbpr;->a(Landroid/content/Context;Lbpn;)V

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v0, Lbpn;->b:Lbpn;

    invoke-static {p1, v0}, Lbpr;->a(Landroid/content/Context;Lbpn;)V

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "io.senseai.kelvin.cyanogentile.ACTION_TILE_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lio/senseai/kelvin/cyanogentile/TileReceiver;->a:Ljava/lang/String;

    const-string v1, "Deleting tile..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbpr;->b(Landroid/content/Context;Z)V

    .line 40
    invoke-static {p1}, Lboy;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
