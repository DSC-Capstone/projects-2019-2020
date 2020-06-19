.class public final Laxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavg;


# instance fields
.field private final a:Lavr;


# direct methods
.method public constructor <init>(Lavr;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Laxh;->a:Lavr;

    .line 38
    return-void
.end method

.method static a(Lavr;Lauj;Lazi;Lavi;)Lavf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavr;",
            "Lauj;",
            "Lazi",
            "<*>;",
            "Lavi;",
            ")",
            "Lavf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p3}, Lavi;->a()Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v1, Lavf;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0}, Lazi;->get(Ljava/lang/Class;)Lazi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lavr;->a(Lazi;)Lawq;

    move-result-object v0

    invoke-interface {v0}, Lawq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavf;

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-class v1, Lavg;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v0}, Lazi;->get(Ljava/lang/Class;)Lazi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lavr;->a(Lazi;)Lawq;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lawq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    .line 61
    invoke-interface {v0, p1, p2}, Lavg;->a(Lauj;Lazi;)Lavf;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lauj;Lazi;)Lavf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lauj;",
            "Lazi",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p2}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lavi;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lavi;

    .line 43
    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Laxh;->a:Lavr;

    invoke-static {v1, p1, p2, v0}, Laxh;->a(Lavr;Lauj;Lazi;Lavi;)Lavf;

    move-result-object v0

    goto :goto_0
.end method
