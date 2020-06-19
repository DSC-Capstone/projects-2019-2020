.class Lup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field private final a:Lut;

.field private final b:Lut;


# direct methods
.method constructor <init>(Lut;Lut;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lup;->a:Lut;

    .line 55
    iput-object p2, p0, Lup;->b:Lut;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lup;->a:Lut;

    invoke-interface {v0, p1}, Lut;->a(Luc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lup;->b:Lut;

    invoke-interface {v0, p1}, Lut;->a(Luc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
