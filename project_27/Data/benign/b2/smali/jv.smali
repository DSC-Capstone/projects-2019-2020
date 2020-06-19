.class Ljv;
.super Ljx;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljr;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljw;

    invoke-direct {v0, p0, p1}, Ljw;-><init>(Ljv;Ljr;)V

    invoke-static {v0}, Lkb;->a(Lkd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
