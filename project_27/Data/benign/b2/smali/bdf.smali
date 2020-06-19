.class final Lbdf;
.super Lbde;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lbde;-><init>()V

    .line 76
    invoke-virtual {p0}, Lbdf;->f()Z

    .line 77
    return-void
.end method


# virtual methods
.method public synthetic a(Lbcv;)Lbcy;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lbde;->b(Lbcv;)Lbde;

    move-result-object v0

    return-object v0
.end method
