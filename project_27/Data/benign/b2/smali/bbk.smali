.class Lbbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbbj;


# direct methods
.method constructor <init>(Lbbj;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lbbk;->a:Lbbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lbbk;->a:Lbbj;

    iget-object v0, v0, Lbbj;->h:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lbbk;->a:Lbbj;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lbbk;->a:Lbbj;

    iget-object v2, v2, Lbbj;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lbbj;->h:Ljava/nio/channels/FileChannel;

    .line 68
    :cond_0
    iget-object v0, p0, Lbbk;->a:Lbbj;

    iget-object v0, v0, Lbbj;->g:Lbaz;

    invoke-virtual {v0}, Lbaz;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lbbk;->a:Lbbj;

    iget-object v1, p0, Lbbk;->a:Lbbj;

    iget-object v1, v1, Lbbj;->g:Lbaz;

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Lbaz;)V

    .line 70
    iget-object v0, p0, Lbbk;->a:Lbbj;

    iget-object v0, v0, Lbbj;->g:Lbaz;

    invoke-virtual {v0}, Lbaz;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    const/16 v0, 0x2000

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    const/4 v1, -0x1

    iget-object v2, p0, Lbbk;->a:Lbbj;

    iget-object v2, v2, Lbbj;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 77
    iget-object v0, p0, Lbbk;->a:Lbbj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbj;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lbbk;->a:Lbbj;

    invoke-virtual {v1, v0}, Lbbj;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 80
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    iget-object v1, p0, Lbbk;->a:Lbbj;

    iget-object v1, v1, Lbbj;->g:Lbaz;

    invoke-virtual {v1, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 82
    iget-object v0, p0, Lbbk;->a:Lbbj;

    iget-object v1, p0, Lbbk;->a:Lbbj;

    iget-object v1, v1, Lbbj;->g:Lbaz;

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Lbaz;)V

    .line 84
    iget-object v0, p0, Lbbk;->a:Lbbj;

    iget-object v0, v0, Lbbj;->g:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbbk;->a:Lbbj;

    invoke-virtual {v0}, Lbbj;->l()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method
