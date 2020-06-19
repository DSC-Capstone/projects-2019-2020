.class Lbjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lbjk;


# direct methods
.method constructor <init>(Lbjk;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbjl;->b:Lbjk;

    iput-object p2, p0, Lbjl;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lbjl;->a:Ljava/lang/Exception;

    .line 62
    :try_start_0
    iget-object v1, p0, Lbjl;->b:Lbjk;

    iget-object v1, v1, Lbjk;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-object v1, p0, Lbjl;->b:Lbjk;

    iget-object v1, v1, Lbjk;->h:Lbcn;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lbjl;->b:Lbjk;

    iget-object v1, v1, Lbjk;->h:Lbcn;

    invoke-interface {v1, v0}, Lbcn;->a(Ljava/lang/Exception;)V

    .line 69
    :cond_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method
