.class public Lyc;
.super Lxq;


# instance fields
.field private final a:Laoo;


# direct methods
.method constructor <init>(Lxr;)V
    .locals 1

    invoke-direct {p0, p1}, Lxq;-><init>(Lxr;)V

    new-instance v0, Laoo;

    invoke-direct {v0}, Laoo;-><init>()V

    iput-object v0, p0, Lyc;->a:Laoo;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lyc;->r()Laog;

    move-result-object v0

    invoke-virtual {v0}, Laog;->a()Laoo;

    move-result-object v0

    iget-object v1, p0, Lyc;->a:Laoo;

    invoke-virtual {v0, v1}, Laoo;->a(Laoo;)V

    invoke-virtual {p0}, Lyc;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lyc;->v()Lxi;

    move-result-object v0

    invoke-virtual {v0}, Lxi;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lyc;->a:Laoo;

    invoke-virtual {v2, v1}, Laoo;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lxi;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lyc;->a:Laoo;

    invoke-virtual {v1, v0}, Laoo;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Laoo;
    .locals 1

    invoke-virtual {p0}, Lyc;->D()V

    iget-object v0, p0, Lyc;->a:Laoo;

    return-object v0
.end method
