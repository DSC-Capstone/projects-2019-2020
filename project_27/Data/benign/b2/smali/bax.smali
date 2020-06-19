.class public Lbax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbf;


# static fields
.field static final synthetic f:Z


# instance fields
.field a:Lbbf;

.field b:Lbaz;

.field c:Lbcu;

.field d:I

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbax;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbax;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbbf;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbax;->b:Lbaz;

    .line 81
    const v0, 0x7fffffff

    iput v0, p0, Lbax;->d:I

    .line 11
    invoke-virtual {p0, p1}, Lbax;->a(Lbbf;)V

    .line 12
    return-void
.end method

.method static synthetic a(Lbax;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lbax;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lbax;->a:Lbbf;

    iget-object v1, p0, Lbax;->b:Lbaz;

    invoke-interface {v0, v1}, Lbbf;->a(Lbaz;)V

    .line 36
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-boolean v0, p0, Lbax;->e:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lbax;->a:Lbbf;

    invoke-interface {v0}, Lbbf;->a()V

    .line 41
    :cond_0
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbax;->c:Lbcu;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lbax;->c:Lbcu;

    invoke-interface {v0}, Lbcu;->a()V

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbax;->e:Z

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lbax;->a:Lbbf;

    invoke-interface {v0}, Lbbf;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lbax;->f:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lbax;->d:I

    .line 89
    return-void
.end method

.method public a(Lbaz;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbax;->a(Lbaz;Z)V

    .line 50
    return-void
.end method

.method protected a(Lbaz;Z)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lbax;->a:Lbbf;

    invoke-interface {v0, p1}, Lbbf;->a(Lbaz;)V

    .line 56
    :cond_0
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_2

    .line 57
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v0

    iget v1, p0, Lbax;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v0

    .line 60
    :cond_1
    if-lez v0, :cond_2

    .line 61
    iget-object v1, p0, Lbax;->b:Lbaz;

    invoke-virtual {p1, v1, v0}, Lbaz;->a(Lbaz;I)V

    .line 64
    :cond_2
    return-void
.end method

.method public a(Lbbf;)V
    .locals 2

    .prologue
    .line 23
    iput-object p1, p0, Lbax;->a:Lbbf;

    .line 24
    iget-object v0, p0, Lbax;->a:Lbbf;

    new-instance v1, Lbay;

    invoke-direct {v1, p0}, Lbay;-><init>(Lbax;)V

    invoke-interface {v0, v1}, Lbbf;->a(Lbcu;)V

    .line 30
    return-void
.end method

.method public a(Lbcn;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lbax;->a:Lbbf;

    invoke-interface {v0, p1}, Lbbf;->a(Lbcn;)V

    .line 109
    return-void
.end method

.method public a(Lbcu;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lbax;->c:Lbcu;

    .line 70
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbax;->b:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lbax;->d:I

    return v0
.end method

.method public g()Lbcu;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbax;->c:Lbcu;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbax;->a:Lbbf;

    invoke-interface {v0}, Lbbf;->i()Z

    move-result v0

    return v0
.end method
