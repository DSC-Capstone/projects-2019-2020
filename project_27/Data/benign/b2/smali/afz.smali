.class final Lafz;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lafd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lafd;

    const/4 v1, 0x0

    new-instance v2, Laga;

    const-string v3, "0\u0082\u0003\u00cd0\u0082\u0002\u00b5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00e2\u0091\u00c9\u00ca\r\u00b2\u0004/0"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Laga;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lagb;

    const-string v3, "0\u0082\u0003\u00cd0\u0082\u0002\u00b5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00b3+\u001c\u00ef0O\u000c\u00b90"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lagb;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lafz;->a:[Lafd;

    return-void
.end method
