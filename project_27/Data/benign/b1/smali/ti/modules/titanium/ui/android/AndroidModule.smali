.class public Lti/modules/titanium/ui/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "UIAndroidModule"

.field public static final LINKIFY_ALL:I = 0xf

.field public static final LINKIFY_EMAIL_ADDRESSES:I = 0x2

.field public static final LINKIFY_MAP_ADDRESSES:I = 0x8

.field public static final LINKIFY_PHONE_NUMBERS:I = 0x4

.field public static final LINKIFY_WEB_URLS:I = 0x1

.field public static final PIXEL_FORMAT_A_8:I = 0x8

.field public static final PIXEL_FORMAT_LA_88:I = 0xa

.field public static final PIXEL_FORMAT_L_8:I = 0x9

.field public static final PIXEL_FORMAT_OPAQUE:I = -0x1

.field public static final PIXEL_FORMAT_RGBA_4444:I = 0x7

.field public static final PIXEL_FORMAT_RGBA_5551:I = 0x6

.field public static final PIXEL_FORMAT_RGBA_8888:I = 0x1

.field public static final PIXEL_FORMAT_RGBX_8888:I = 0x2

.field public static final PIXEL_FORMAT_RGB_332:I = 0xb

.field public static final PIXEL_FORMAT_RGB_565:I = 0x4

.field public static final PIXEL_FORMAT_RGB_888:I = 0x3

.field public static final PIXEL_FORMAT_TRANSLUCENT:I = -0x3

.field public static final PIXEL_FORMAT_TRANSPARENT:I = -0x2

.field public static final PIXEL_FORMAT_UNKNOWN:I = 0x0

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field public static final SWITCH_STYLE_CHECKBOX:I = 0x0

.field public static final SWITCH_STYLE_TOGGLEBUTTON:I = 0x1

.field public static final WEBVIEW_PLUGINS_OFF:I = 0x0

.field public static final WEBVIEW_PLUGINS_ON:I = 0x1

.field public static final WEBVIEW_PLUGINS_ON_DEMAND:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 82
    invoke-direct {p0}, Lti/modules/titanium/ui/android/AndroidModule;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/android/AndroidModule;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "UIAndroidModule"

    const-string v2, "Unable to hide soft keyboard. Activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openPreferences(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefsName"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v1, p0, Lti/modules/titanium/ui/android/AndroidModule;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lti/modules/titanium/ui/android/TiPreferencesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "i":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 93
    const-string v1, "prefsName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v1, "UIAndroidModule"

    const-string v2, "Unable to open preferences. Activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
