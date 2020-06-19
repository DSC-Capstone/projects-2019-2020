.class final Lafh;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lafd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lafd;

    const/4 v1, 0x0

    new-instance v2, Lafi;

    const-string v3, "0\u0082\u0003w0\u0082\u0002a\u0002\u0006\u0001A`\u008d\u0007v0\u000b\u0006\t*\u0086H\u0086\u00f7"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lafi;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lafj;

    const-string v3, "0\u0082\u0003\u00cd0\u0082\u0002\u00b5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u008b\u00dc\u001c\u00f6Rc?]0"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lafj;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lafh;->a:[Lafd;

    return-void
.end method
