.class Ltf;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lsw;


# direct methods
.method private constructor <init>(Lsw;)V
    .locals 0

    .prologue
    .line 1703
    iput-object p1, p0, Ltf;->a:Lsw;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsw;Lsx;)V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Ltf;-><init>(Lsw;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Ltf;->a:Lsw;

    invoke-virtual {v0}, Lsw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Ltf;->a:Lsw;

    invoke-virtual {v0}, Lsw;->c()V

    .line 1710
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Ltf;->a:Lsw;

    invoke-virtual {v0}, Lsw;->a()V

    .line 1715
    return-void
.end method
