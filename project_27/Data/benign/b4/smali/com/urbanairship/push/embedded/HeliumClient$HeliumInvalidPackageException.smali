.class public Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;
.super Lcom/urbanairship/push/embedded/HeliumClient$HeliumException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/HeliumClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeliumInvalidPackageException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/embedded/HeliumClient;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/embedded/HeliumClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;->this$0:Lcom/urbanairship/push/embedded/HeliumClient;

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/embedded/HeliumClient$HeliumException;-><init>(Lcom/urbanairship/push/embedded/HeliumClient;Ljava/lang/String;)V

    return-void
.end method
