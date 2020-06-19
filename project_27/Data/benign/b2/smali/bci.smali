.class final Lbci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbbf;


# direct methods
.method constructor <init>(Lbbf;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lbci;->a:Lbbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbci;->a:Lbbf;

    invoke-interface {v0, p2}, Lbbf;->a(Lbaz;)V

    .line 121
    invoke-virtual {p2}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    invoke-interface {p1}, Lbbc;->j()V

    .line 123
    :cond_0
    return-void
.end method
