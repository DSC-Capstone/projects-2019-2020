.class Lve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field private final a:Lut;


# direct methods
.method constructor <init>(Lut;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lve;->a:Lut;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lve;->a:Lut;

    invoke-interface {v0, p1}, Lut;->a(Luc;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
