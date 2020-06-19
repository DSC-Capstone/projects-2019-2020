.class public Lti/admob/AdmobModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AdmobModule.java"


# static fields
.field public static final AD_NOT_RECEIVED:Ljava/lang/String; = "ad_not_received"

.field public static final AD_RECEIVED:Ljava/lang/String; = "ad_received"

.field private static final LCAT:Ljava/lang/String; = "AdmobModule"

.field public static MODULE_NAME:Ljava/lang/String;

.field public static PROPERTY_COLOR_BG:Ljava/lang/String;

.field public static PROPERTY_COLOR_BG_TOP:Ljava/lang/String;

.field public static PROPERTY_COLOR_BORDER:Ljava/lang/String;

.field public static PROPERTY_COLOR_LINK:Ljava/lang/String;

.field public static PROPERTY_COLOR_LINK_DEPRECATED:Ljava/lang/String;

.field public static PROPERTY_COLOR_TEXT:Ljava/lang/String;

.field public static PROPERTY_COLOR_TEXT_DEPRECATED:Ljava/lang/String;

.field public static PROPERTY_COLOR_URL:Ljava/lang/String;

.field public static PUBLISHER_ID:Ljava/lang/String;

.field public static TESTING:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "AndroidAdMobModule"

    sput-object v0, Lti/admob/AdmobModule;->MODULE_NAME:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lti/admob/AdmobModule;->TESTING:Ljava/lang/Boolean;

    .line 27
    const-string v0, "adBackgroundColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG:Ljava/lang/String;

    .line 28
    const-string v0, "backgroundTopColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG_TOP:Ljava/lang/String;

    .line 29
    const-string v0, "borderColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BORDER:Ljava/lang/String;

    .line 30
    const-string v0, "textColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT:Ljava/lang/String;

    .line 31
    const-string v0, "linkColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK:Ljava/lang/String;

    .line 32
    const-string v0, "urlColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_URL:Ljava/lang/String;

    .line 34
    const-string v0, "primaryTextColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT_DEPRECATED:Ljava/lang/String;

    .line 35
    const-string v0, "secondaryTextColor"

    sput-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK_DEPRECATED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 41
    const-string v0, "AdmobModule"

    const-string v1, "adMob module instantiated"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method public setPublisherId(Ljava/lang/String;)V
    .locals 3
    .param p1, "pubId"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "AdmobModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPublisherId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sput-object p1, Lti/admob/AdmobModule;->PUBLISHER_ID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTesting(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "testing"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    const-string v0, "AdmobModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTesting(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sput-object p1, Lti/admob/AdmobModule;->TESTING:Ljava/lang/Boolean;

    .line 56
    return-void
.end method
