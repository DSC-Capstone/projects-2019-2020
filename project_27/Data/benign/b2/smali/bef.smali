.class Lbef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbed;


# direct methods
.method constructor <init>(Lbed;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lbef;->a:Lbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 53
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbef;->a:Lbed;

    iget-boolean v0, v0, Lbed;->k:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lbef;->a:Lbed;

    new-instance v1, Lbez;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2, p1}, Lbez;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lbed;->a(Ljava/lang/Exception;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lbef;->a:Lbed;

    invoke-virtual {v0, p1}, Lbed;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
