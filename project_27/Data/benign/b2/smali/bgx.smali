.class public Lbgx;
.super Lbbl;
.source "SourceFile"


# static fields
.field static final synthetic g:Z


# instance fields
.field d:J

.field e:J

.field f:Lbaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lbgx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbgx;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lbbl;-><init>()V

    .line 21
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbgx;->f:Lbaz;

    .line 9
    iput-wide p1, p0, Lbgx;->d:J

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 6

    .prologue
    .line 24
    sget-boolean v0, Lbgx;->g:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbgx;->e:J

    iget-wide v2, p0, Lbgx;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lbaz;->d()I

    move-result v0

    .line 27
    iget-wide v2, p0, Lbgx;->d:J

    iget-wide v4, p0, Lbgx;->e:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lbgx;->f:Lbaz;

    long-to-int v0, v0

    invoke-virtual {p2, v2, v0}, Lbaz;->a(Lbaz;I)V

    .line 31
    iget-object v0, p0, Lbgx;->f:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    .line 33
    iget-object v1, p0, Lbgx;->f:Lbaz;

    invoke-super {p0, p1, v1}, Lbbl;->a(Lbbc;Lbaz;)V

    .line 35
    iget-wide v2, p0, Lbgx;->e:J

    iget-object v1, p0, Lbgx;->f:Lbaz;

    invoke-virtual {v1}, Lbaz;->d()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbgx;->e:J

    .line 36
    iget-object v0, p0, Lbgx;->f:Lbaz;

    invoke-virtual {v0, p2}, Lbaz;->a(Lbaz;)V

    .line 38
    iget-wide v0, p0, Lbgx;->e:J

    iget-wide v2, p0, Lbgx;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbgx;->a(Ljava/lang/Exception;)V

    .line 40
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 14
    if-nez p1, :cond_0

    iget-wide v0, p0, Lbgx;->e:J

    iget-wide v2, p0, Lbgx;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 15
    new-instance p1, Lbhg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of data reached before content length was read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbgx;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbgx;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbgx;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lbhg;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lbbl;->a(Ljava/lang/Exception;)V

    .line 17
    return-void
.end method
