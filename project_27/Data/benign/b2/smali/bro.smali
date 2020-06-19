.class public Lbro;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lbro;


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private final f:Z


# direct methods
.method protected constructor <init>(Lbrp;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lbrp;->a(Lbrp;)Z

    move-result v0

    iput-boolean v0, p0, Lbro;->b:Z

    .line 57
    invoke-static {p1}, Lbrp;->b(Lbrp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbro;->c:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lbrp;->c(Lbrp;)I

    move-result v0

    iput v0, p0, Lbro;->d:I

    .line 59
    invoke-static {p1}, Lbrp;->d(Lbrp;)Z

    move-result v0

    iput-boolean v0, p0, Lbro;->e:Z

    .line 60
    invoke-static {p1}, Lbrp;->e(Lbrp;)Z

    move-result v0

    iput-boolean v0, p0, Lbro;->f:Z

    .line 61
    return-void
.end method

.method public static a()Lbro;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lbro;->a:Lbro;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lbro;

    new-instance v1, Lbrp;

    invoke-direct {v1}, Lbrp;-><init>()V

    invoke-direct {v0, v1}, Lbro;-><init>(Lbrp;)V

    sput-object v0, Lbro;->a:Lbro;

    .line 31
    :cond_0
    sget-object v0, Lbro;->a:Lbro;

    return-object v0
.end method

.method public static a(Lbro;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lbro;->a:Lbro;

    .line 22
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbro;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lbro;->b:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lbro;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lbro;->f:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lbro;->d:I

    return v0
.end method
