.class final Lazz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbae;


# direct methods
.method constructor <init>(Lbae;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lazz;->a:Lbae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lazz;->a:Lbae;

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbae;->a(Ljava/lang/Exception;Lazw;)V

    .line 107
    return-void
.end method
