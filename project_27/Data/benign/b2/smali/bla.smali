.class abstract Lbla;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:Z

.field private static final d:Lbdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbdg",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lbku;

.field b:Lbmu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lbla;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbla;->c:Z

    .line 28
    new-instance v0, Lblb;

    invoke-direct {v0}, Lblb;-><init>()V

    sput-object v0, Lbla;->d:Lbdg;

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbku;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lbmu;->b:Lbmu;

    iput-object v0, p0, Lbla;->b:Lbmu;

    .line 62
    iput-object p1, p0, Lbla;->a:Lbku;

    .line 63
    return-void
.end method
