.class public Lcom/urbanairship/push/embedded/Config$BoxOffice;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxOffice"
.end annotation


# static fields
.field public static final MAX_HOLDING_PATTERN:J = 0x93a80L

.field public static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://boxoffice.urbanairship.com"

    sput-object v0, Lcom/urbanairship/push/embedded/Config$BoxOffice;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
