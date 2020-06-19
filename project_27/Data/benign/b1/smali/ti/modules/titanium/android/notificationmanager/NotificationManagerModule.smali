.class public Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "NotificationManagerModule.java"


# static fields
.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field protected static final PENDING_INTENT_FOR_ACTIVITY:I = 0x0

.field protected static final PENDING_INTENT_FOR_BROADCAST:I = 0x2

.field protected static final PENDING_INTENT_FOR_SERVICE:I = 0x1

.field protected static final PENDING_INTENT_MAX_VALUE:I = 0x1

.field public static final STREAM_DEFAULT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 47
    invoke-direct {p0}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;-><init>()V

    .line 48
    return-void
.end method

.method private getManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 67
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 73
    return-void
.end method

.method public createNotification([Ljava/lang/Object;)Lti/modules/titanium/android/notificationmanager/NotificationProxy;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 53
    new-instance v0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;

    invoke-direct {v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;-><init>()V

    .line 54
    .local v0, "notification":Lti/modules/titanium/android/notificationmanager/NotificationProxy;
    invoke-virtual {v0, p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 55
    return-object v0
.end method

.method public notify(ILti/modules/titanium/android/notificationmanager/NotificationProxy;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "notificationProxy"    # Lti/modules/titanium/android/notificationmanager/NotificationProxy;

    .prologue
    .line 78
    invoke-direct {p0}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p2}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 79
    return-void
.end method
