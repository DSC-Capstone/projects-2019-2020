.class Lbdq;
.super Lbdg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdg",
        "<",
        "Lbec;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lbaw;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Runnable;

.field final synthetic m:Lbdj;


# direct methods
.method private constructor <init>(Lbdj;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lbdq;->m:Lbdj;

    invoke-direct {p0}, Lbdg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbdj;Lbdk;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lbdq;-><init>(Lbdj;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lbdg;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lbdq;->a:Lbaw;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lbdq;->a:Lbaw;

    new-instance v1, Lbcs;

    invoke-direct {v1}, Lbcs;-><init>()V

    invoke-interface {v0, v1}, Lbaw;->a(Lbcr;)V

    .line 146
    iget-object v0, p0, Lbdq;->a:Lbaw;

    invoke-interface {v0}, Lbaw;->d()V

    .line 149
    :cond_1
    iget-object v0, p0, Lbdq;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lbdq;->m:Lbdj;

    iget-object v0, v0, Lbdj;->e:Lbag;

    iget-object v1, p0, Lbdq;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Object;)V

    .line 152
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
