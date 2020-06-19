.class public Lcom/urbanairship/richpush/RichPushMessageJavaScript;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/richpush/RichPushMessageJavaScriptInterface;


# static fields
.field static final deviceModel:Ljava/lang/String;


# instance fields
.field messageId:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->messageId:Ljava/lang/String;

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->view:Landroid/view/View;

    return-void
.end method

.method private getMessage()Lcom/urbanairship/richpush/RichPushMessage;
    .locals 2

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->shared()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushInbox;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOrientation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "undefined"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "landscape"

    goto :goto_0

    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSentDate()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->getMessage()Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->getMessage()Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->shared()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public isMessageRead()Z
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->getMessage()Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->isRead()Z

    move-result v0

    return v0
.end method

.method public markMessageRead()V
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->getMessage()Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->markRead()V

    return-void
.end method

.method public markMessageUnread()V
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->getMessage()Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->markUnread()V

    return-void
.end method

.method public navigateTo(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No class found for name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
