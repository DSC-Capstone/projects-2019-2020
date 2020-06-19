.class final Lio/senseai/kelvinsdk/If$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/ˋ;

.field private synthetic ˋ:I

.field private synthetic ˎ:I

.field private synthetic ˏ:Lio/senseai/kelvinsdk/If;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;II)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lio/senseai/kelvinsdk/If$4;->ˏ:Lio/senseai/kelvinsdk/If;

    iput-object p2, p0, Lio/senseai/kelvinsdk/If$4;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    iput p3, p0, Lio/senseai/kelvinsdk/If$4;->ˋ:I

    iput p4, p0, Lio/senseai/kelvinsdk/If$4;->ˎ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 369
    invoke-static {}, Lio/senseai/kelvinsdk/If;->ˎ()Z

    .line 371
    iget-object v0, p0, Lio/senseai/kelvinsdk/If$4;->ˏ:Lio/senseai/kelvinsdk/If;

    iget-object v1, p0, Lio/senseai/kelvinsdk/If$4;->ˊ:Lio/senseai/kelvinsdk/ˋ;

    iget v2, p0, Lio/senseai/kelvinsdk/If$4;->ˋ:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lio/senseai/kelvinsdk/If$4;->ˎ:I

    invoke-static {v0, v1, v2, v3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;II)V

    .line 372
    return-void
.end method
