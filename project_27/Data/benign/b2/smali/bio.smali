.class Lbio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbik;


# direct methods
.method constructor <init>(Lbik;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lbio;->a:Lbik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 4

    .prologue
    .line 207
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lbaz;->a(Ljava/nio/ByteOrder;)Lbaz;

    .line 209
    iget-object v0, p0, Lbio;->a:Lbik;

    iget v0, v0, Lbik;->a:I

    const/high16 v1, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    .line 210
    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->a:I

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 213
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 214
    :try_start_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version != 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    iget-object v1, p0, Lbio;->a:Lbik;

    invoke-static {v1}, Lbik;->e(Lbik;)Lbhq;

    move-result-object v1

    invoke-interface {v1, v0}, Lbhq;->a(Ljava/lang/Exception;)V

    .line 259
    :goto_0
    return-void

    .line 217
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 251
    :pswitch_0
    :try_start_1
    invoke-virtual {p2}, Lbaz;->m()V

    .line 254
    :goto_1
    iget-object v0, p0, Lbio;->a:Lbik;

    invoke-static {v0}, Lbik;->f(Lbik;)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->a(Lbik;Lbaz;II)V

    goto :goto_1

    .line 223
    :pswitch_2
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->b(Lbik;Lbaz;II)V

    goto :goto_1

    .line 227
    :pswitch_3
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->c(Lbik;Lbaz;II)V

    goto :goto_1

    .line 231
    :pswitch_4
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->d(Lbik;Lbaz;II)V

    goto :goto_1

    .line 235
    :pswitch_5
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->e(Lbik;Lbaz;II)V

    goto :goto_1

    .line 239
    :pswitch_6
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->f(Lbik;Lbaz;II)V

    goto :goto_1

    .line 243
    :pswitch_7
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->g(Lbik;Lbaz;II)V

    goto :goto_1

    .line 247
    :pswitch_8
    iget-object v0, p0, Lbio;->a:Lbik;

    iget-object v1, p0, Lbio;->a:Lbik;

    iget v1, v1, Lbik;->c:I

    iget-object v2, p0, Lbio;->a:Lbik;

    iget v2, v2, Lbik;->d:I

    invoke-static {v0, p2, v1, v2}, Lbik;->h(Lbik;Lbaz;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
