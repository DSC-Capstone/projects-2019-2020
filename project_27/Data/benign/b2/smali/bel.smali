.class Lbel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbaw;

.field final synthetic b:Lbek;


# direct methods
.method constructor <init>(Lbek;Lbaw;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lbel;->b:Lbek;

    iput-object p2, p0, Lbel;->a:Lbaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lbel;->b:Lbek;

    iget-object v0, v0, Lbek;->a:Lbcp;

    iget-object v1, p0, Lbel;->a:Lbaw;

    invoke-interface {v0, p1, v1}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 147
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lbbp;

    invoke-direct {v0}, Lbbp;-><init>()V

    .line 116
    new-instance v1, Lbem;

    invoke-direct {v1, p0}, Lbem;-><init>(Lbel;)V

    invoke-virtual {v0, v1}, Lbbp;->a(Lbbq;)V

    .line 137
    iget-object v1, p0, Lbel;->a:Lbaw;

    invoke-interface {v1, v0}, Lbaw;->a(Lbcr;)V

    .line 139
    iget-object v0, p0, Lbel;->a:Lbaw;

    new-instance v1, Lben;

    invoke-direct {v1, p0}, Lben;-><init>(Lbel;)V

    invoke-interface {v0, v1}, Lbaw;->b(Lbcn;)V

    goto :goto_0
.end method
