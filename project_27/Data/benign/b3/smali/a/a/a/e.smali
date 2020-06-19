.class public La/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:La/a/a/j;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a/a/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, La/a/a/e;->b:La/a/a/j;

    iput-object p3, p0, La/a/a/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, La/a/a/e;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, La/a/a/e;->b:La/a/a/j;

    aput-object v2, v1, v4

    iget-object v2, p0, La/a/a/e;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, La/a/a/e;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, La/a/a/e;->b:La/a/a/j;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
