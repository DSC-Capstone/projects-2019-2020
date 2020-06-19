.class public Loa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lig;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Liw;

.field private e:Z

.field private final f:Lix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Loa;->b:J

    .line 107
    new-instance v0, Lob;

    invoke-direct {v0, p0}, Lob;-><init>(Loa;)V

    iput-object v0, p0, Loa;->f:Lix;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loa;->a:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic a(Loa;)Liw;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Loa;->d:Liw;

    return-object v0
.end method

.method static synthetic b(Loa;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Loa;->c()V

    return-void
.end method

.method static synthetic c(Loa;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Loa;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Loa;->e:Z

    .line 74
    return-void
.end method


# virtual methods
.method public a(J)Loa;
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Loa;->e:Z

    if-nez v0, :cond_0

    .line 88
    iput-wide p1, p0, Loa;->b:J

    .line 90
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Loa;
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Loa;->e:Z

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Loa;->c:Landroid/view/animation/Interpolator;

    .line 97
    :cond_0
    return-object p0
.end method

.method public a(Lig;)Loa;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Loa;->e:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Loa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method

.method public a(Liw;)Loa;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Loa;->e:Z

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Loa;->d:Liw;

    .line 104
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 55
    iget-boolean v0, p0, Loa;->e:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Loa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lig;

    .line 57
    iget-wide v2, p0, Loa;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 58
    iget-wide v2, p0, Loa;->b:J

    invoke-virtual {v0, v2, v3}, Lig;->a(J)Lig;

    .line 60
    :cond_1
    iget-object v2, p0, Loa;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Loa;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lig;->a(Landroid/view/animation/Interpolator;)Lig;

    .line 63
    :cond_2
    iget-object v2, p0, Loa;->d:Liw;

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Loa;->f:Lix;

    invoke-virtual {v0, v2}, Lig;->a(Liw;)Lig;

    .line 66
    :cond_3
    invoke-virtual {v0}, Lig;->b()V

    goto :goto_1

    .line 69
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Loa;->e:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Loa;->e:Z

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Loa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lig;

    .line 81
    invoke-virtual {v0}, Lig;->a()V

    goto :goto_1

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Loa;->e:Z

    goto :goto_0
.end method
