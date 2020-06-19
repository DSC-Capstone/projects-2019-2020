.class public Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityIndicator.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z

.field public static final DETERMINANT:I = 0x1

.field public static final DIALOG:I = 0x1

.field public static final INDETERMINANT:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TiUIActivityIndicator"

.field private static final MSG_HIDE:I = 0x66

.field private static final MSG_PROGRESS:I = 0x65

.field private static final MSG_SHOW:I = 0x64

.field public static final STATUS_BAR:I


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected incrementFactor:I

.field protected location:I

.field protected max:I

.field protected min:I

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected statusBarTitle:Ljava/lang/String;

.field protected type:I

.field protected visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 54
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->DBG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "TiUIActivityIndicator"

    const-string v1, "Creating an activity indicator"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handler:Landroid/os/Handler;

    .line 58
    return-void
.end method


# virtual methods
.method protected handleHide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 216
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 218
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 227
    :goto_0
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    .line 228
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, "parent":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 224
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 62
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 82
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handleShow()V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, "parent":Landroid/app/Activity;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0

    .line 77
    .end local v0    # "parent":Landroid/app/Activity;
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handleHide()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleShow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 130
    const-string v1, ""

    .line 131
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "message":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 135
    .restart local v1    # "message":Ljava/lang/String;
    :cond_0
    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    .line 136
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    .line 140
    :cond_1
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    .line 141
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "min"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "min"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    .line 145
    :cond_2
    const/16 v3, 0x64

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    .line 146
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "max"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "max"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    .line 150
    :cond_3
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    .line 151
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    .line 155
    :cond_4
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    if-nez v3, :cond_7

    .line 156
    const/16 v3, 0x2710

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->incrementFactor:I

    .line 157
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 159
    .local v2, "parent":Landroid/app/Activity;
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-nez v3, :cond_5

    .line 160
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 161
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 162
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    .end local v2    # "parent":Landroid/app/Activity;
    :goto_0
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    .line 205
    return-void

    .line 164
    .restart local v2    # "parent":Landroid/app/Activity;
    :cond_5
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-ne v3, v6, :cond_6

    .line 165
    invoke-virtual {v2, v7}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 166
    invoke-virtual {v2, v7}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 167
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 168
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_6
    const-string v3, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v2    # "parent":Landroid/app/Activity;
    :cond_7
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    if-ne v3, v6, :cond_d

    .line 174
    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->incrementFactor:I

    .line 175
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_9

    .line 176
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "a":Landroid/content/Context;
    if-nez v0, :cond_8

    .line 178
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 180
    :cond_8
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 183
    .end local v0    # "a":Landroid/content/Context;
    :cond_9
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 186
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-nez v3, :cond_a

    .line 187
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 200
    :goto_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 188
    :cond_a
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-ne v3, v6, :cond_c

    .line 189
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 190
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 191
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    if-eqz v3, :cond_b

    .line 192
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 196
    :goto_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    .line 194
    :cond_b
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_2

    .line 198
    :cond_c
    const-string v3, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_d
    const-string v3, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 209
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 91
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 96
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->DBG:Z

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const-string v3, "message"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 104
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, "parent":Landroid/app/Activity;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    .end local v0    # "parent":Landroid/app/Activity;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v3, :cond_1

    .line 110
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 111
    .local v2, "value":I
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    sub-int v3, v2, v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->incrementFactor:I

    mul-int v1, v3, v4

    .line 113
    .local v1, "thePos":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handler:Landroid/os/Handler;

    const/16 v4, 0x65

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 116
    .end local v1    # "thePos":I
    .end local v2    # "value":I
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 122
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handleShow()V

    goto :goto_0
.end method
