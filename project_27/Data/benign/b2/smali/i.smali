.class public Li;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcy",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lal;

.field public d:Landroid/view/View;

.field final synthetic e:Ld;


# direct methods
.method public constructor <init>(Ld;)V
    .locals 1

    .prologue
    .line 1449
    iput-object p1, p0, Li;->e:Ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    iput-object v0, p0, Li;->a:Lcy;

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li;->b:Ljava/util/ArrayList;

    .line 1453
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    iput-object v0, p0, Li;->c:Lal;

    return-void
.end method
