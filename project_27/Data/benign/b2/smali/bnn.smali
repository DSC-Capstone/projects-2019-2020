.class Lbnn;
.super Lbdi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdi",
        "<TT;",
        "Lbaz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbnm;


# direct methods
.method constructor <init>(Lbnm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lbnn;->b:Lbnm;

    iput-object p2, p0, Lbnn;->a:Ljava/lang/String;

    invoke-direct {p0}, Lbdi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lbaz;)V
    .locals 4

    .prologue
    .line 44
    new-instance v1, Lauy;

    invoke-direct {v1}, Lauy;-><init>()V

    .line 45
    new-instance v2, Lbji;

    invoke-direct {v2, p1}, Lbji;-><init>(Lbaz;)V

    .line 47
    iget-object v0, p0, Lbnn;->b:Lbnm;

    iget-object v0, v0, Lbnm;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lbnn;->b:Lbnm;

    iget-object v3, v3, Lbnm;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 53
    :goto_0
    new-instance v2, Lazj;

    invoke-direct {v2, v0}, Lazj;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Lauy;->a(Lazj;)Laut;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Laut;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Laut;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    :cond_0
    new-instance v0, Laux;

    const-string v1, "unable to parse json"

    invoke-direct {v0, v1}, Laux;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget-object v0, p0, Lbnn;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lbnn;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v1, p0, Lbnn;->b:Lbnm;

    iget-object v1, v1, Lbnm;->b:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 57
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can not be casted to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lbnn;->b:Lbnm;

    iget-object v2, v2, Lbnm;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lbnn;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lbaz;

    invoke-virtual {p0, p1}, Lbnn;->a(Lbaz;)V

    return-void
.end method
