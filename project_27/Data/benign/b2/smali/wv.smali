.class public Lwv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile a:Lwg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lys;

    invoke-direct {v0}, Lys;-><init>()V

    invoke-static {v0}, Lwv;->a(Lwg;)V

    return-void
.end method

.method public static a()Lwg;
    .locals 1

    sget-object v0, Lwv;->a:Lwg;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lww;->b()Lww;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lww;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lwv;->a:Lwg;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lwg;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lwv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyz;->c:Lza;

    invoke-virtual {v0}, Lza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lww;->b()Lww;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lww;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lwv;->a:Lwg;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lwg;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lwv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lyz;->c:Lza;

    invoke-virtual {v0}, Lza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_1
.end method

.method public static a(Lwg;)V
    .locals 0

    sput-object p0, Lwv;->a:Lwg;

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lwv;->a()Lwg;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lwv;->a()Lwg;

    move-result-object v1

    invoke-interface {v1}, Lwg;->a()I

    move-result v1

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lww;->b()Lww;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lww;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lwv;->a:Lwg;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lwg;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lwv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyz;->c:Lza;

    invoke-virtual {v0}, Lza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lww;->b()Lww;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lww;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lwv;->a:Lwg;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lwg;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lwv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyz;->c:Lza;

    invoke-virtual {v0}, Lza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
