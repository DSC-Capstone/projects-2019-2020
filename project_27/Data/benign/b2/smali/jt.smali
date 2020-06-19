.class Ljt;
.super Ljx;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljr;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lju;

    invoke-direct {v0, p0, p1}, Lju;-><init>(Ljt;Ljr;)V

    invoke-static {v0}, Ljy;->a(Lka;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
