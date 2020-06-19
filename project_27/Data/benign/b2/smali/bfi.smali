.class Lbfi;
.super Lbbl;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lbbl;-><init>()V

    .line 46
    return-void
.end method

.method public static a(Lbag;Ljava/lang/Exception;)Lbfi;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lbfi;

    invoke-direct {v0}, Lbfi;-><init>()V

    .line 52
    new-instance v1, Lbfj;

    invoke-direct {v1, v0, p1}, Lbfj;-><init>(Lbfi;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method static synthetic a(Lbfi;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lbfi;->a(Ljava/lang/Exception;)V

    return-void
.end method
