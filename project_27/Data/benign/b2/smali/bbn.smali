.class public Lbbn;
.super Lbax;
.source "SourceFile"


# static fields
.field static final synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-class v0, Lbbn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbbn;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbbf;)V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lbax;-><init>(Lbbf;)V

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbn;->a(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lbaz;)V
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lbbn;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbbn;->d()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lbbn;->b(Lbaz;)Lbaz;

    move-result-object v0

    .line 20
    sget-boolean v1, Lbbn;->g:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lbaz;->c()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_2
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lbax;->a(Lbaz;Z)V

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lbaz;->m()V

    goto :goto_0
.end method

.method public b(Lbaz;)Lbaz;
    .locals 0

    .prologue
    .line 10
    return-object p1
.end method
