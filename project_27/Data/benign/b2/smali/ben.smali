.class Lben;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbel;


# direct methods
.method constructor <init>(Lbel;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lben;->a:Lbel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lben;->a:Lbel;

    iget-object v0, v0, Lbel;->a:Lbaw;

    invoke-interface {v0}, Lbaw;->i()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket closed before proxy connect response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lben;->a:Lbel;

    iget-object v0, v0, Lbel;->b:Lbek;

    iget-object v0, v0, Lbek;->a:Lbcp;

    iget-object v1, p0, Lben;->a:Lbel;

    iget-object v1, v1, Lbel;->a:Lbaw;

    invoke-interface {v0, p1, v1}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 145
    return-void
.end method
