.class Lblf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lblp;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lble;


# direct methods
.method constructor <init>(Lble;Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lblf;->d:Lble;

    iput-object p2, p0, Lblf;->a:Lblp;

    iput-object p3, p0, Lblf;->b:Ljava/lang/Exception;

    iput-object p4, p0, Lblf;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lblf;->d:Lble;

    iget-object v0, v0, Lble;->b:Lbkm;

    invoke-virtual {v0}, Lbkm;->a()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lblf;->a:Lblp;

    iget-object v1, v1, Lblp;->o:Lbea;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context has died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbea;->c(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lblf;->a:Lblp;

    invoke-virtual {v0}, Lblp;->c()Z

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lblf;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lblf;->a:Lblp;

    iget-object v1, p0, Lblf;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lblp;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lblf;->a:Lblp;

    iget-object v1, p0, Lblf;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lblp;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method
