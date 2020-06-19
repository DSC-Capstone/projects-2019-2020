.class Lcom/google/ads/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "u_h"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "u_w"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "u_tz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/ah;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
