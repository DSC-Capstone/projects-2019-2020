.class final Lio/senseai/kelvinsdk/ʻ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/SysFsCrawler$Listener;


# instance fields
.field private synthetic ˊ:Landroid/content/Context;

.field private synthetic ˋ:Ljava/lang/String;

.field private synthetic ˎ:Z

.field private synthetic ˏ:Lio/senseai/kelvinsdk/ᐝ;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLio/senseai/kelvinsdk/ᐝ;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˊ:Landroid/content/Context;

    iput-object p2, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˋ:Ljava/lang/String;

    iput-boolean p3, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˎ:Z

    iput-object p4, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˏ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFileFailed()V
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lio/senseai/kelvinsdk/ʻ;->ˊ:Ljava/lang/String;

    const-string v1, "Can\'t find valid file. Not starting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˏ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ι()V

    .line 270
    iget-object v0, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 271
    iget-object v0, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ʼ(Landroid/content/Context;)V

    .line 272
    return-void
.end method

.method public final onFileValidated()V
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lio/senseai/kelvinsdk/ʻ;->ˊ:Ljava/lang/String;

    const-string v1, "Found valid file. Starting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˎ(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˊ:Landroid/content/Context;

    iget-object v1, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˋ:Ljava/lang/String;

    iget-boolean v2, p0, Lio/senseai/kelvinsdk/ʻ$1;->ˎ:Z

    invoke-static {v0, v1, v2}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method
