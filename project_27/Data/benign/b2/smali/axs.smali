.class Laxs;
.super Laxu;
.source "SourceFile"


# instance fields
.field final a:Lavf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavf",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lauj;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lazi;

.field final synthetic e:Z

.field final synthetic f:Laxr;


# direct methods
.method constructor <init>(Laxr;Ljava/lang/String;ZZLauj;Ljava/lang/reflect/Field;Lazi;Z)V
    .locals 4

    .prologue
    .line 83
    iput-object p1, p0, Laxs;->f:Laxr;

    iput-object p5, p0, Laxs;->b:Lauj;

    iput-object p6, p0, Laxs;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Laxs;->d:Lazi;

    iput-boolean p8, p0, Laxs;->e:Z

    invoke-direct {p0, p2, p3, p4}, Laxu;-><init>(Ljava/lang/String;ZZ)V

    .line 84
    iget-object v0, p0, Laxs;->f:Laxr;

    iget-object v1, p0, Laxs;->b:Lauj;

    iget-object v2, p0, Laxs;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Laxs;->d:Lazi;

    invoke-static {v0, v1, v2, v3}, Laxr;->a(Laxr;Lauj;Ljava/lang/reflect/Field;Lazi;)Lavf;

    move-result-object v0

    iput-object v0, p0, Laxs;->a:Lavf;

    return-void
.end method


# virtual methods
.method a(Lazj;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Laxs;->a:Lavf;

    invoke-virtual {v0, p1}, Lavf;->b(Lazj;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    iget-boolean v1, p0, Laxs;->e:Z

    if-nez v1, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Laxs;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :cond_1
    return-void
.end method

.method a(Lazm;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Laxs;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    new-instance v1, Laxz;

    iget-object v2, p0, Laxs;->b:Lauj;

    iget-object v3, p0, Laxs;->a:Lavf;

    iget-object v4, p0, Laxs;->d:Lazi;

    .line 90
    invoke-virtual {v4}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Laxz;-><init>(Lauj;Lavf;Ljava/lang/reflect/Type;)V

    .line 91
    invoke-virtual {v1, p1, v0}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    .line 92
    return-void
.end method
