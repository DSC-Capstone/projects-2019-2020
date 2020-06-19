.class public abstract Lavf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Laut;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Laut;"
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Laxk;

    invoke-direct {v0}, Laxk;-><init>()V

    .line 230
    invoke-virtual {p0, v0, p1}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v0}, Laxk;->a()Laut;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lauu;

    invoke-direct {v1, v0}, Lauu;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract a(Lazm;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazm;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract b(Lazj;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazj;",
            ")TT;"
        }
    .end annotation
.end method
