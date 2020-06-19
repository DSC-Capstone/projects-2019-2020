.class La/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:La/a/a/h;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;La/a/a/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/g;->a:Ljava/lang/String;

    iput-object p2, p0, La/a/a/g;->b:Ljava/lang/String;

    iput-object p3, p0, La/a/a/g;->c:La/a/a/h;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;La/a/a/h;La/a/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;La/a/a/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, La/a/a/g;->a:Ljava/lang/String;

    iget-object v1, p0, La/a/a/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " COLLATE %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, La/a/a/g;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, La/a/a/g;->c:La/a/a/h;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, La/a/a/g;->c:La/a/a/h;

    invoke-virtual {v3}, La/a/a/h;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
