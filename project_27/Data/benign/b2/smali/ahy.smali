.class final Lahy;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lafd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lafd;

    const/4 v1, 0x0

    new-instance v2, Lahz;

    const-string v3, "0\u0082\u0003\u00b50\u0082\u0002\u009d\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00e5\u00d7\u0080\u0017\u00ce\u0083t\u00a10"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lahz;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Laia;

    const-string v3, "0\u0082\u0003\u00b50\u0082\u0002\u009d\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00e5o\u009c\t\u001b\u0092\u0084\u001f0"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Laia;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lahy;->a:[Lafd;

    return-void
.end method
