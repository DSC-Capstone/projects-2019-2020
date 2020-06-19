.class Lbes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcp;


# instance fields
.field final synthetic a:Lbcn;

.field final synthetic b:Lber;


# direct methods
.method constructor <init>(Lber;Lbcn;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lbes;->b:Lber;

    iput-object p2, p0, Lbes;->a:Lbcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbaw;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    invoke-virtual {v0}, Lbep;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error during connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbes;->b:Lber;

    iget-object v3, v3, Lber;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lbep;->a:Ljava/lang/Exception;

    .line 230
    iget-object v0, p0, Lbes;->a:Lbcn;

    invoke-interface {v0, v4}, Lbcn;->a(Ljava/lang/Exception;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    if-eqz p1, :cond_2

    .line 236
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    iput-object p1, v0, Lbep;->a:Ljava/lang/Exception;

    .line 237
    iget-object v0, p0, Lbes;->a:Lbcn;

    invoke-interface {v0, v4}, Lbcn;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    invoke-virtual {v0}, Lbep;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    invoke-virtual {v0}, Lbep;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    :cond_3
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->b:Lbds;

    iget-object v0, v0, Lbds;->j:Lbea;

    const-string v1, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->n:Lbeo;

    invoke-static {v0, p2}, Lbeo;->a(Lbeo;Lbaw;)V

    .line 245
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->n:Lbeo;

    iget-object v1, p0, Lbes;->b:Lber;

    iget-object v1, v1, Lber;->c:Lbep;

    iget-object v1, v1, Lbep;->b:Lbds;

    iget-object v1, v1, Lbds;->j:Lbea;

    invoke-static {v0, p2, v1}, Lbeo;->a(Lbeo;Lbaw;Lbea;)V

    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    invoke-virtual {v0, v4, p2}, Lbep;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lbes;->b:Lber;

    iget-object v0, v0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->b:Lbds;

    iget-object v0, v0, Lbds;->a:Lbcp;

    invoke-interface {v0, v4, p2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    goto :goto_0
.end method
