.class Lbid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lbid;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 4

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-byte v0, v0, Lbib;->e:B

    packed-switch v0, :pswitch_data_0

    .line 190
    invoke-virtual {p2}, Lbaz;->m()V

    .line 192
    :goto_0
    iget-object v0, p0, Lbid;->a:Lbib;

    invoke-static {v0}, Lbib;->c(Lbib;)V

    .line 197
    :goto_1
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->a(Lbib;Lbaz;SBI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lbid;->a:Lbib;

    invoke-static {v1}, Lbib;->d(Lbib;)Lbhq;

    move-result-object v1

    invoke-interface {v1, v0}, Lbhq;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 153
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->b(Lbib;Lbaz;SBI)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->c(Lbib;Lbaz;SBI)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->d(Lbib;Lbaz;SBI)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->e(Lbib;Lbaz;SBI)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->f(Lbib;Lbaz;SBI)V

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->g(Lbib;Lbaz;SBI)V

    goto/16 :goto_0

    .line 177
    :pswitch_7
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->h(Lbib;Lbaz;SBI)V

    goto/16 :goto_0

    .line 181
    :pswitch_8
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->i(Lbib;Lbaz;SBI)V

    goto/16 :goto_0

    .line 185
    :pswitch_9
    iget-object v0, p0, Lbid;->a:Lbib;

    iget-object v1, p0, Lbid;->a:Lbib;

    iget-short v1, v1, Lbib;->f:S

    iget-object v2, p0, Lbid;->a:Lbib;

    iget-byte v2, v2, Lbib;->d:B

    iget-object v3, p0, Lbid;->a:Lbib;

    iget v3, v3, Lbib;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lbib;->j(Lbib;Lbaz;SBI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
