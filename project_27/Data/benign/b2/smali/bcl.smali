.class final Lbcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbcn;


# direct methods
.method constructor <init>(Lbcn;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lbcl;->a:Lbcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance p1, Ljava/io/IOException;

    const-string v0, "sink was closed before emitter ended"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lbcl;->a:Lbcn;

    invoke-interface {v0, p1}, Lbcn;->a(Ljava/lang/Exception;)V

    .line 155
    return-void
.end method
