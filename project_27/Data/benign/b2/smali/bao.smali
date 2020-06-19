.class Lbao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lbam;


# direct methods
.method constructor <init>(Lbam;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lbao;->b:Lbam;

    iput-object p2, p0, Lbao;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lbao;->b:Lbam;

    iget-object v0, v0, Lbam;->b:Lbdg;

    iget-object v1, p0, Lbao;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 432
    return-void
.end method
