.class final Lbcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcu;


# instance fields
.field final synthetic a:Lbbf;

.field final synthetic b:Lbaz;

.field final synthetic c:Lbcn;


# direct methods
.method constructor <init>(Lbbf;Lbaz;Lbcn;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lbcm;->a:Lbbf;

    iput-object p2, p0, Lbcm;->b:Lbaz;

    iput-object p3, p0, Lbcm;->c:Lbcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lbcm;->a:Lbbf;

    iget-object v1, p0, Lbcm;->b:Lbaz;

    invoke-interface {v0, v1}, Lbbf;->a(Lbaz;)V

    .line 195
    iget-object v0, p0, Lbcm;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcm;->c:Lbcn;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lbcm;->a:Lbbf;

    invoke-interface {v0, v2}, Lbbf;->a(Lbcu;)V

    .line 197
    iget-object v0, p0, Lbcm;->c:Lbcn;

    invoke-interface {v0, v2}, Lbcn;->a(Ljava/lang/Exception;)V

    .line 199
    :cond_0
    return-void
.end method
