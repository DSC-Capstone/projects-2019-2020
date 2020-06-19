.class Lvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field private final a:Luc;


# direct methods
.method constructor <init>(Luc;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lvf;->a:Luc;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lvf;->a:Luc;

    invoke-virtual {p1, v0}, Luc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
