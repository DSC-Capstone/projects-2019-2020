.class Lbrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbri;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lbqg;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqg;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
