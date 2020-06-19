.class Lte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lsw;


# direct methods
.method private constructor <init>(Lsw;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lte;->a:Lsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsw;Lsx;)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0, p1}, Lte;-><init>(Lsw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lte;->a:Lsw;

    invoke-virtual {v0}, Lsw;->e()V

    .line 1721
    return-void
.end method
