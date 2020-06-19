.class Lbjw;
.super Lbjz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbjz",
        "<",
        "Ljava/lang/String;",
        "Lbjv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjs;


# direct methods
.method public constructor <init>(Lbjs;)V
    .locals 2

    .prologue
    .line 204
    iput-object p1, p0, Lbjw;->a:Lbjs;

    .line 205
    iget-wide v0, p1, Lbjs;->g:J

    invoke-direct {p0, v0, v1}, Lbjz;-><init>(J)V

    .line 206
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 203
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lbjv;

    invoke-virtual {p0, p1, p2}, Lbjw;->a(Ljava/lang/String;Lbjv;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;Lbjv;)J
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lbjw;->a:Lbjs;

    iget-wide v0, v0, Lbjs;->d:J

    iget-wide v2, p2, Lbjv;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 203
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lbjv;

    check-cast p4, Lbjv;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbjw;->a(ZLjava/lang/String;Lbjv;Lbjv;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lbjv;Lbjv;)V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Lbjz;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    if-eqz p4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lbjw;->a:Lbjs;

    iget-boolean v0, v0, Lbjs;->i:Z

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbjw;->a:Lbjs;

    iget-object v1, v1, Lbjs;->f:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
