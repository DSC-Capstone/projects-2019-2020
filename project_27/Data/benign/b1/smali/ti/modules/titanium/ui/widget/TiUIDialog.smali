.class public Lti/modules/titanium/ui/widget/TiUIDialog;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_MASK:I = 0x10000000

.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiUIDialog"


# instance fields
.field protected builder:Landroid/app/AlertDialog$Builder;

.field protected dialog:Landroid/app/AlertDialog;

.field protected ownerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 53
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "TiUIDialog"

    const-string v1, "Creating a dialog"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->createBuilder()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    return v0
.end method

.method private createBuilder()V
    .locals 3

    .prologue
    .line 277
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, "currentActivity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 279
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 280
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->ownerActivity:Ljava/lang/ref/WeakReference;

    .line 281
    return-void
.end method

.method private getBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->createBuilder()V

    .line 73
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 63
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

.method private processButtons([Ljava/lang/String;)V
    .locals 5
    .param p1, "buttonText"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lti/modules/titanium/ui/widget/TiUIDialog$2;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$2;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 141
    aget-object v2, p1, v1

    .line 142
    .local v2, "text":Ljava/lang/String;
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;

    const/high16 v3, 0x10000000

    or-int/2addr v3, v1

    invoke-direct {v0, p0, v3}, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;I)V

    .line 143
    .local v0, "clicker":Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    packed-switch v1, :pswitch_data_0

    .line 154
    const-string v3, "TiUIDialog"

    const-string v4, "Only 3 buttons are supported"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 151
    :pswitch_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 157
    .end local v0    # "clicker":Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processOptions([Ljava/lang/String;I)V
    .locals 2
    .param p1, "optionText"    # [Ljava/lang/String;
    .param p2, "selectedIndex"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/TiUIDialog$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$1;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    return-void
.end method

.method private processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 163
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "cancel"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "cancel"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 287
    .local v0, "cancelIndex":I
    :goto_0
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 288
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const/high16 v4, 0x10000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 289
    const-string v4, "button"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const v4, -0x10000001

    and-int/2addr p1, v4

    .line 298
    :cond_0
    :goto_1
    const-string v4, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v4, "cancel"

    if-ne p1, v0, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "click"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 301
    return-void

    .line 285
    .end local v0    # "cancelIndex":I
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 292
    .restart local v0    # "cancelIndex":I
    .restart local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    const-string v4, "button"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "options"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "selectedIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 299
    goto :goto_2
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 267
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 269
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 271
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 273
    :cond_1
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "buttonText":[Ljava/lang/String;
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    :cond_0
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    :cond_1
    const-string v3, "buttonNames"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 88
    const-string v3, "buttonNames"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    :goto_0
    const-string v3, "androidView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 93
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "androidView"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 106
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 107
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    .line 109
    :cond_4
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 110
    return-void

    .line 89
    :cond_5
    const-string v3, "ok"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .end local v0    # "buttonText":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "ok"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .restart local v0    # "buttonText":[Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_6
    const-string v3, "options"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    const-string v3, "options"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "optionText":[Ljava/lang/String;
    const-string v3, "selectedIndex"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "selectedIndex"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    .local v2, "selectedIndex":I
    :goto_2
    array-length v3, v1

    if-lt v2, v3, :cond_8

    .line 98
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    if-eqz v3, :cond_7

    .line 99
    const-string v3, "TiUIDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ooops invalid selected index specified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_7
    const/4 v2, -0x1

    .line 104
    :cond_8
    invoke-direct {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto :goto_1

    .line 96
    .end local v2    # "selectedIndex":I
    :cond_9
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 170
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "TiUIDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 178
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v1, "buttonNames"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 187
    :cond_4
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "newValue":Ljava/lang/Object;
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "buttonNames"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 189
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 190
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 191
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 193
    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_7
    const-string v1, "options"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8

    .line 196
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 200
    :cond_8
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 201
    const/4 v0, -0x1

    .line 202
    .local v0, "selectedIndex":I
    const-string v1, "selectedIndex"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 203
    const-string v1, "selectedIndex"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 205
    :cond_9
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "newValue":Ljava/lang/Object;
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "selectedIndex":I
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_a
    const-string v1, "selectedIndex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 207
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b

    .line 208
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 212
    :cond_b
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 213
    const-string v1, "options"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const-string v1, "options"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 217
    :cond_c
    const-string v1, "androidView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 218
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d

    .line 219
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 222
    :cond_d
    if-eqz p3, :cond_e

    .line 223
    check-cast p3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto/16 :goto_0

    .line 225
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_e
    const-string v1, "androidView"

    invoke-virtual {p4, v1, v4, v5}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 228
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 235
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 236
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lti/modules/titanium/ui/widget/TiUIDialog$3;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$3;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 248
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 251
    :cond_0
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->ownerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 252
    .local v0, "dialogActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 261
    .end local v0    # "dialogActivity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 255
    .restart local v0    # "dialogActivity":Landroid/app/Activity;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 256
    const-string v2, "TiUIDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog activity is destroyed, unable to show dialog with message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0    # "dialogActivity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiUIDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context must have gone away: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
