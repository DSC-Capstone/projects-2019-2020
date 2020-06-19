.class final Lio/senseai/kelvinsdk/If$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic ˊ:Ljava/lang/String;

.field private synthetic ˋ:Lio/senseai/kelvinsdk/ˋ;

.field private synthetic ˎ:I

.field private synthetic ˏ:Lio/senseai/kelvinsdk/If;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/If;Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lio/senseai/kelvinsdk/If$2;->ˏ:Lio/senseai/kelvinsdk/If;

    iput-object p2, p0, Lio/senseai/kelvinsdk/If$2;->ˊ:Ljava/lang/String;

    iput-object p3, p0, Lio/senseai/kelvinsdk/If$2;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    iput p4, p0, Lio/senseai/kelvinsdk/If$2;->ˎ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˋ()Z

    .line 227
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$2;->ˏ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$2;->ˊ:Ljava/lang/String;

    iget-object v2, p0, Lio/senseai/kelvinsdk/If$2;->ˋ:Lio/senseai/kelvinsdk/ˋ;

    iget v3, p0, Lio/senseai/kelvinsdk/If$2;->ˎ:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V

    .line 228
    return-void
.end method
