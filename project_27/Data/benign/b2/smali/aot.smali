.class public final Laot;
.super Laoe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laoe",
        "<",
        "Laot;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic a(Laoe;)V
    .locals 0

    check-cast p1, Laot;

    invoke-virtual {p0, p1}, Laot;->a(Laot;)V

    return-void
.end method

.method public a(Laot;)V
    .locals 1

    iget-object v0, p0, Laot;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laot;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Laot;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Laot;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laot;->b:Z

    invoke-virtual {p1, v0}, Laot;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laot;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Laot;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Laot;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "description"

    iget-object v2, p0, Laot;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fatal"

    iget-boolean v2, p0, Laot;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Laot;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
