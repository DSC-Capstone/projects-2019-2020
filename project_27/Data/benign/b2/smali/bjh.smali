.class Lbjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbdg;

.field final synthetic b:Lbaz;

.field final synthetic c:Lbje;


# direct methods
.method constructor <init>(Lbje;Lbdg;Lbaz;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lbjh;->c:Lbje;

    iput-object p2, p0, Lbjh;->a:Lbdg;

    iput-object p3, p0, Lbjh;->b:Lbaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lbjh;->a:Lbdg;

    invoke-virtual {v0, p1}, Lbdg;->a(Ljava/lang/Exception;)Z

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbjh;->a:Lbdg;

    iget-object v1, p0, Lbjh;->b:Lbaz;

    invoke-virtual {v0, v1}, Lbdg;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    iget-object v1, p0, Lbjh;->a:Lbdg;

    invoke-virtual {v1, v0}, Lbdg;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
