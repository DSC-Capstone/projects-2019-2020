.class public final Laws;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lazj;)Laut;
    .locals 2

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lazj;->f()Lazl;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v0, Laya;->P:Lavf;

    invoke-virtual {v0, p0}, Lavf;->b(Lazj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laut;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lazn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lauv;->a:Lauv;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Lauu;

    invoke-direct {v1, v0}, Lauu;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_3
    move-exception v0

    .line 60
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 73
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lawu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lawu;-><init>(Ljava/lang/Appendable;Lawt;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Laut;Lazm;)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Laya;->P:Lavf;

    invoke-virtual {v0, p1, p0}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
