.class Lbis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbae;


# instance fields
.field final synthetic a:Lbds;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbcp;

.field final synthetic d:Lbiq;


# direct methods
.method constructor <init>(Lbiq;Lbds;Ljava/lang/String;Lbcp;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lbis;->d:Lbiq;

    iput-object p2, p0, Lbis;->a:Lbds;

    iput-object p3, p0, Lbis;->b:Ljava/lang/String;

    iput-object p4, p0, Lbis;->c:Lbcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lazw;)V
    .locals 6

    .prologue
    .line 193
    iget-object v0, p0, Lbis;->a:Lbds;

    iget-object v0, v0, Lbds;->j:Lbea;

    const-string v1, "checking spdy handshake"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 194
    if-nez p1, :cond_0

    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v0, v0, Lbiq;->w:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v1, p0, Lbis;->b:Ljava/lang/String;

    iget-object v2, p0, Lbis;->c:Lbcp;

    invoke-static {v0, v1, v2, p1, p2}, Lbiq;->a(Lbiq;Ljava/lang/String;Lbcp;Ljava/lang/Exception;Lazw;)V

    .line 196
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v1, p0, Lbis;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbiq;->a(Lbiq;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 201
    :cond_1
    :try_start_0
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v0, v0, Lbiq;->t:Ljava/lang/reflect/Field;

    invoke-interface {p2}, Lazw;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 202
    iget-object v2, p0, Lbis;->d:Lbiq;

    iget-object v2, v2, Lbiq;->w:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 203
    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v1, p0, Lbis;->b:Ljava/lang/String;

    iget-object v2, p0, Lbis;->c:Lbcp;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lbiq;->a(Lbiq;Ljava/lang/String;Lbcp;Ljava/lang/Exception;Lazw;)V

    .line 205
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v1, p0, Lbis;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbiq;->a(Lbiq;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 208
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 209
    invoke-static {v1}, Lbfo;->a(Ljava/lang/String;)Lbfo;

    move-result-object v0

    .line 210
    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v1, p0, Lbis;->b:Ljava/lang/String;

    iget-object v2, p0, Lbis;->c:Lbcp;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lbiq;->a(Lbiq;Ljava/lang/String;Lbcp;Ljava/lang/Exception;Lazw;)V

    .line 212
    iget-object v0, p0, Lbis;->d:Lbiq;

    iget-object v1, p0, Lbis;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbiq;->a(Lbiq;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :cond_3
    new-instance v0, Lbit;

    invoke-static {v1}, Lbfo;->a(Ljava/lang/String;)Lbfo;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lbit;-><init>(Lbis;Lbaw;Lbfo;)V

    goto :goto_0
.end method
