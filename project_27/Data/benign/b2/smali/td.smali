.class Ltd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltb;


# direct methods
.method private constructor <init>(Ltb;)V
    .locals 0

    .prologue
    .line 1484
    iput-object p1, p0, Ltd;->a:Ltb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltb;Lsx;)V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Ltd;-><init>(Ltb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Ltd;->a:Ltb;

    invoke-static {v0}, Ltb;->b(Ltb;)V

    .line 1488
    return-void
.end method
