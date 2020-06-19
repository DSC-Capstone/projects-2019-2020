.class public Lti/modules/titanium/ui/UIModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "UIModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final FACE_DOWN:I = 0x6

.field public static final FACE_UP:I = 0x5

.field public static final INPUT_BORDERSTYLE_BEZEL:I = 0x2

.field public static final INPUT_BORDERSTYLE_LINE:I = 0x3

.field public static final INPUT_BORDERSTYLE_NONE:I = 0x0

.field public static final INPUT_BORDERSTYLE_ROUNDED:I = 0x1

.field public static final INPUT_BUTTONMODE_ALWAYS:I = 0x1

.field public static final INPUT_BUTTONMODE_NEVER:I = 0x2

.field public static final INPUT_BUTTONMODE_ONFOCUS:I = 0x0

.field public static final KEYBOARD_APPEARANCE_ALERT:I = -0x1

.field public static final KEYBOARD_APPEARANCE_DEFAULT:I = -0x1

.field public static final KEYBOARD_ASCII:I = 0x0

.field public static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field public static final KEYBOARD_DEFAULT:I = 0x7

.field public static final KEYBOARD_EMAIL:I = 0x5

.field public static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field public static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field public static final KEYBOARD_NUMBER_PAD:I = 0x3

.field public static final KEYBOARD_PHONE_PAD:I = 0x4

.field public static final KEYBOARD_URL:I = 0x2

.field public static final LANDSCAPE_LEFT:I = 0x2

.field public static final LANDSCAPE_RIGHT:I = 0x4

.field private static final LCAT:Ljava/lang/String; = "TiUIModule"

.field public static final MAP_VIEW_HYBRID:I = 0x3

.field public static final MAP_VIEW_SATELLITE:I = 0x2

.field public static final MAP_VIEW_STANDARD:I = 0x1

.field protected static final MSG_LAST_ID:I = 0x137

.field protected static final MSG_SET_BACKGROUND_COLOR:I = 0x135

.field protected static final MSG_SET_BACKGROUND_IMAGE:I = 0x136

.field protected static final MSG_SET_ORIENTATION:I = 0x137

.field public static final NOTIFICATION_DURATION_LONG:I = 0x1

.field public static final NOTIFICATION_DURATION_SHORT:I = 0x0

.field public static final PICKER_TYPE_COUNT_DOWN_TIMER:I = 0x3

.field public static final PICKER_TYPE_DATE:I = 0x1

.field public static final PICKER_TYPE_DATE_AND_TIME:I = 0x2

.field public static final PICKER_TYPE_PLAIN:I = -0x1

.field public static final PICKER_TYPE_TIME:I = 0x0

.field public static final PORTRAIT:I = 0x1

.field public static final RETURNKEY_DEFAULT:I = 0x9

.field public static final RETURNKEY_DONE:I = 0x7

.field public static final RETURNKEY_EMERGENCY_CALL:I = 0x8

.field public static final RETURNKEY_GO:I = 0x0

.field public static final RETURNKEY_GOOGLE:I = 0x1

.field public static final RETURNKEY_JOIN:I = 0x2

.field public static final RETURNKEY_NEXT:I = 0x3

.field public static final RETURNKEY_ROUTE:I = 0x4

.field public static final RETURNKEY_SEARCH:I = 0x5

.field public static final RETURNKEY_SEND:I = 0xa

.field public static final RETURNKEY_YAHOO:I = 0x6

.field public static final TABLEVIEW_POSITION_ANY:I = 0x0

.field public static final TABLEVIEW_POSITION_BOTTOM:I = 0x3

.field public static final TABLEVIEW_POSITION_MIDDLE:I = 0x2

.field public static final TABLEVIEW_POSITION_TOP:I = 0x1

.field public static final TEXT_ALIGNMENT_CENTER:Ljava/lang/String; = "center"

.field public static final TEXT_ALIGNMENT_LEFT:Ljava/lang/String; = "left"

.field public static final TEXT_ALIGNMENT_RIGHT:Ljava/lang/String; = "right"

.field public static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field public static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field public static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field public static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2

.field public static final TEXT_VERTICAL_ALIGNMENT_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final TEXT_VERTICAL_ALIGNMENT_CENTER:Ljava/lang/String; = "middle"

.field public static final TEXT_VERTICAL_ALIGNMENT_TOP:Ljava/lang/String; = "top"

.field public static final UNKNOWN:I = 0x0

.field public static final UPSIDE_PORTRAIT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 122
    invoke-direct {p0}, Lti/modules/titanium/ui/UIModule;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method protected doSetBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 140
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 141
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected doSetBackgroundImage(Ljava/lang/Object;)V
    .locals 5
    .param p1, "image"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 160
    .local v2, "w":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 161
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 163
    :try_start_0
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "image":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "TiUIModule"

    const-string v4, "Unable to set background drawable for root window.  An integer id was provided but no such drawable resource exists."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local p1    # "image":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected doSetOrientation(I)V
    .locals 6
    .param p1, "tiOrientationMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 192
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v4, :cond_0

    .line 197
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 199
    new-array v1, v5, [I

    .local v1, "orientationModes":[I
    :goto_0
    move-object v2, v0

    .line 207
    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 208
    .local v2, "tiBaseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v3

    .line 210
    .local v3, "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-nez v3, :cond_3

    .line 212
    iget-object v4, v2, Lorg/appcelerator/titanium/TiBaseActivity;->lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_2

    .line 214
    iget-object v4, v2, Lorg/appcelerator/titanium/TiBaseActivity;->lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 226
    .end local v1    # "orientationModes":[I
    .end local v2    # "tiBaseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    .end local v3    # "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [I

    aput p1, v1, v5

    .restart local v1    # "orientationModes":[I
    goto :goto_0

    .line 218
    .restart local v2    # "tiBaseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    .restart local v3    # "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_2
    const-string v4, "TiUIModule"

    const-string v5, "no window has been associated with activity, unable to set orientation"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 233
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundColor(Ljava/lang/String;)V

    move v0, v1

    .line 235
    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundImage(Ljava/lang/Object;)V

    move v0, v1

    .line 240
    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/UIModule;->doSetOrientation(I)V

    move v0, v1

    .line 245
    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x135
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundColor(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x135

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBackgroundImage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundImage(Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x136

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "tiOrientationMode"    # I

    .prologue
    .line 181
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/UIModule;->doSetOrientation(I)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x137

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
