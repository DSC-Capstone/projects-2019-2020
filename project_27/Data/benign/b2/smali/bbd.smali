.class public abstract Lbbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbc;


# instance fields
.field a:Lbcn;

.field b:Lbcr;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbcr;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lbbd;->b:Lbcr;

    .line 35
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lbbd;->c:Z

    if-eqz v0, :cond_1

    .line 17
    :cond_0
    :goto_0
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbd;->c:Z

    .line 15
    invoke-virtual {p0}, Lbbd;->h()Lbcn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lbbd;->h()Lbcn;

    move-result-object v0

    invoke-interface {v0, p1}, Lbcn;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Lbcn;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lbbd;->a:Lbcn;

    .line 22
    return-void
.end method

.method public f_()Lbcr;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbbd;->b:Lbcr;

    return-object v0
.end method

.method public final h()Lbcn;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbbd;->a:Lbcn;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
