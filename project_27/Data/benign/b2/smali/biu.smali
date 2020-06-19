.class Lbiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcp;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbcp;

.field final synthetic c:Lbiq;


# direct methods
.method constructor <init>(Lbiq;Ljava/lang/String;Lbcp;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lbiu;->c:Lbiq;

    iput-object p2, p0, Lbiu;->a:Ljava/lang/String;

    iput-object p3, p0, Lbiu;->b:Lbcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbaw;)V
    .locals 2

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lbiu;->c:Lbiq;

    iget-object v0, v0, Lbiq;->x:Ljava/util/Hashtable;

    iget-object v1, p0, Lbiu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lbiz;->a(Ljava/lang/Exception;)Z

    .line 316
    :cond_0
    iget-object v0, p0, Lbiu;->b:Lbcp;

    invoke-interface {v0, p1, p2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 317
    return-void
.end method
