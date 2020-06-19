.class public final Laxd;
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Laxd;->a:Lavr;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lauj;Lazi;)Lavf;
    .locals 4
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
    .line 44
    invoke-virtual {p2}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lavn;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lauj;->a(Lazi;)Lavf;

    move-result-object v2

    .line 53
    iget-object v0, p0, Laxd;->a:Lavr;

    invoke-virtual {v0, p2}, Lavr;->a(Lazi;)Lawq;

    move-result-object v3

    .line 56
    new-instance v0, Laxe;

    invoke-direct {v0, p1, v1, v2, v3}, Laxe;-><init>(Lauj;Ljava/lang/reflect/Type;Lavf;Lawq;)V

    goto :goto_0
.end method
