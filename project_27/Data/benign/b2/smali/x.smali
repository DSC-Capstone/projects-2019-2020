.class Lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lv;


# direct methods
.method constructor <init>(Lv;II)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lx;->c:Lv;

    iput p2, p0, Lx;->a:I

    iput p3, p0, Lx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 532
    iget-object v0, p0, Lx;->c:Lv;

    iget-object v1, p0, Lx;->c:Lv;

    iget-object v1, v1, Lv;->o:Lo;

    iget-object v1, v1, Lo;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lx;->a:I

    iget v4, p0, Lx;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lv;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 533
    return-void
.end method
