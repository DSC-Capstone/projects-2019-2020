.class final Lakd;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lafd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lafd;

    const/4 v1, 0x0

    new-instance v2, Lake;

    const-string v3, "0\u0082\u0003\u00e10\u0082\u0002\u00c9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c7\u00d4\u0092C\u0093\u00da\u00c8\u00030"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lake;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lakf;

    const-string v3, "0\u0082\u0003\u00e10\u0082\u0002\u00c9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0093\u00be\u00db\u00f1\u008fF\u001e\u00b00"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lakf;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lakd;->a:[Lafd;

    return-void
.end method
