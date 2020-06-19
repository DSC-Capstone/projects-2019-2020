.class public Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException;
.super Lcom/urbanairship/push/embedded/BoxOfficeClient$FatalBoxOfficeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/BoxOfficeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstRunForbiddenException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$FatalBoxOfficeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
