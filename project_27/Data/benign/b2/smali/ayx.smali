.class final Layx;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lazj;->j()V

    .line 148
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->f:Lazl;

    if-ne v0, v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1}, Lazj;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lazm;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lazm;->a(Z)Lazm;

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Layx;->a(Lazm;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Layx;->a(Lazj;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
