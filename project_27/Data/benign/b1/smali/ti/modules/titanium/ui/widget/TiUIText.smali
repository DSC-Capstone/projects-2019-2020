.class public Lti/modules/titanium/ui/widget/TiUIText;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIText$TiEditText;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KEYBOARD_ASCII:I = 0x0

.field private static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field private static final KEYBOARD_DEFAULT:I = 0x7

.field private static final KEYBOARD_EMAIL_ADDRESS:I = 0x5

.field private static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field private static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field private static final KEYBOARD_NUMBER_PAD:I = 0x3

.field private static final KEYBOARD_PHONE_PAD:I = 0x4

.field private static final KEYBOARD_URL:I = 0x2

.field private static final LCAT:Ljava/lang/String; = "TiUIText"

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

.field private static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field private static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field private static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field private static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2


# instance fields
.field private field:Z

.field protected tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "field"    # Z

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 107
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "TiUIText"

    const-string v1, "Creating a text field"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    .line 111
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIText;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;-><init>(Lti/modules/titanium/ui/widget/TiUIText;Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    .line 112
    if-eqz p2, :cond_1

    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSingleLine()V

    .line 114
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setMaxLines(I)V

    .line 116
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setIncludeFontPadding(Z)V

    .line 120
    if-eqz p2, :cond_2

    .line 121
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setGravity(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->setNativeView(Landroid/view/View;)V

    .line 126
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setGravity(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIText;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIText;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIText;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIText;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "tv"    # Landroid/text/Editable;

    .prologue
    .line 225
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 230
    return-void
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 247
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "editable"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "editable"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 277
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 278
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object v0
.end method

.method public handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 317
    const/4 v5, 0x0

    .line 318
    .local v5, "type":I
    const/4 v3, 0x0

    .line 319
    .local v3, "passwordMask":Z
    const/4 v2, 0x1

    .line 320
    .local v2, "editable":Z
    const v1, 0x8000

    .line 321
    .local v1, "autocorrect":I
    const/4 v0, 0x0

    .line 323
    .local v0, "autoCapValue":I
    const-string v7, "autocorrect"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    const-string v7, "autocorrect"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 325
    const v1, 0x8000

    .line 331
    :cond_0
    :goto_0
    const-string v7, "editable"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    const-string v7, "editable"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    .line 335
    :cond_1
    const-string v7, "autocapitalization"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 337
    const-string v7, "autocapitalization"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 355
    const-string v7, "TiUIText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown AutoCapitalization Value ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "autocapitalization"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    :goto_1
    const-string v7, "passwordMask"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    const-string v7, "passwordMask"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    .line 364
    :cond_3
    const-string v7, "keyboardType"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 365
    const-string v7, "keyboardType"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    .line 368
    :cond_4
    or-int v6, v1, v0

    .line 369
    .local v6, "typeModifiers":I
    move v4, v6

    .line 372
    .local v4, "textTypeAndClass":I
    const/high16 v7, 0x80000

    if-eq v1, v7, :cond_5

    .line 374
    or-int/lit8 v4, v4, 0x1

    .line 376
    :cond_5
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v10}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setCursorVisible(Z)V

    .line 377
    packed-switch v5, :pswitch_data_1

    .line 423
    :goto_2
    :pswitch_0
    if-eqz v3, :cond_b

    .line 424
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 425
    or-int/lit16 v4, v4, 0x80

    .line 431
    :cond_6
    :goto_3
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setInputType(I)V

    .line 432
    if-nez v2, :cond_7

    .line 433
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v12}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 434
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v11}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setCursorVisible(Z)V

    .line 437
    :cond_7
    iget-boolean v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-nez v7, :cond_8

    .line 438
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v11}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSingleLine(Z)V

    .line 440
    :cond_8
    return-void

    .line 327
    .end local v4    # "textTypeAndClass":I
    .end local v6    # "typeModifiers":I
    :cond_9
    const/high16 v1, 0x80000

    goto/16 :goto_0

    .line 339
    :pswitch_1
    const/4 v0, 0x0

    .line 340
    goto :goto_1

    .line 342
    :pswitch_2
    const/16 v0, 0x7000

    .line 346
    goto :goto_1

    .line 348
    :pswitch_3
    const/16 v0, 0x4000

    .line 349
    goto :goto_1

    .line 352
    :pswitch_4
    const/16 v0, 0x2000

    .line 353
    goto :goto_1

    .line 383
    .restart local v4    # "textTypeAndClass":I
    .restart local v6    # "typeModifiers":I
    :pswitch_5
    or-int/lit8 v4, v4, 0x2

    .line 384
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    new-instance v8, Lti/modules/titanium/ui/widget/TiUIText$1;

    invoke-direct {v8, p0}, Lti/modules/titanium/ui/widget/TiUIText$1;-><init>(Lti/modules/titanium/ui/widget/TiUIText;)V

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_2

    .line 404
    :pswitch_6
    sget-boolean v7, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v7, :cond_a

    .line 405
    const-string v7, "TiUIText"

    const-string v8, "Setting keyboard type URL-3"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_a
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    .line 408
    or-int/lit8 v4, v4, 0x10

    .line 409
    goto :goto_2

    .line 412
    :pswitch_7
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {v10, v10}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 413
    or-int/lit8 v4, v4, 0x2

    .line 414
    goto :goto_2

    .line 416
    :pswitch_8
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 417
    or-int/lit8 v4, v4, 0x3

    .line 418
    goto :goto_2

    .line 420
    :pswitch_9
    or-int/lit8 v4, v4, 0x20

    goto :goto_2

    .line 427
    :cond_b
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    instance-of v7, v7, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v7, :cond_6

    .line 428
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v12}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 377
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public handleReturnKeyType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x2

    .line 444
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 446
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 449
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 452
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 455
    :pswitch_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 458
    :pswitch_4
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 461
    :pswitch_5
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 464
    :pswitch_6
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 467
    :pswitch_7
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 470
    :pswitch_8
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 473
    :pswitch_9
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 476
    :pswitch_a
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "textAlign"    # Ljava/lang/String;
    .param p2, "verticalAlign"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p2, :cond_0

    .line 307
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-eqz v0, :cond_2

    const-string p2, "middle"

    .line 309
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 310
    const-string p1, "left"

    .line 312
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 307
    :cond_2
    const-string p2, "top"

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "value":Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 287
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "value"

    invoke-virtual {v3, v4, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v3, :cond_0

    .line 291
    const-string v4, "TiUIText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " KeyEvent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 294
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "return"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 297
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "enableReturnKey"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 298
    .local v1, "enableReturnKey":Ljava/lang/Boolean;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 299
    const/4 v3, 0x1

    .line 301
    :goto_1
    return v3

    .line 291
    .end local v1    # "enableReturnKey":Ljava/lang/Boolean;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 301
    .restart local v1    # "enableReturnKey":Ljava/lang/Boolean;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 261
    if-eqz p2, :cond_1

    .line 262
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "clearOnEdit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 263
    .local v0, "clearOnEdit":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 267
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 268
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 271
    .end local v0    # "clearOnEdit":Ljava/lang/Boolean;
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->onFocusChange(Landroid/view/View;Z)V

    .line 272
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 235
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "value":Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 237
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 133
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "enabled"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEnabled(Z)V

    .line 136
    :cond_0
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1
    const-string v2, "color"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "color"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTextColor(I)V

    .line 142
    :cond_2
    const-string v2, "hintText"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 145
    :cond_3
    const-string v2, "ellipsize"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    const-string v2, "ellipsize"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 147
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    :cond_4
    :goto_0
    const-string v2, "font"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "font"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 155
    :cond_5
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "verticalAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    :cond_6
    const/4 v0, 0x0

    .line 157
    .local v0, "textAlign":Ljava/lang/String;
    const/4 v1, 0x0

    .line 158
    .local v1, "verticalAlign":Ljava/lang/String;
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_7
    const-string v2, "verticalAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    const-string v2, "verticalAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_8
    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v0    # "textAlign":Ljava/lang/String;
    .end local v1    # "verticalAlign":Ljava/lang/String;
    :cond_9
    const-string v2, "returnKeyType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 167
    const-string v2, "returnKeyType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    .line 169
    :cond_a
    const-string v2, "keyboardType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "autocorrect"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "passwordMask"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "autocapitalization"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "editable"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 171
    :cond_b
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    .line 173
    :cond_c
    return-void

    .line 149
    :cond_d
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 179
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v3, :cond_0

    .line 180
    const-string v3, "TiUIText"

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

    .line 182
    :cond_0
    const-string v3, "enabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEnabled(Z)V

    .line 220
    .end local p3    # "newValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 184
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTextColor(I)V

    goto :goto_0

    .line 188
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_4
    const-string v3, "ellipsize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 194
    :cond_5
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 196
    :cond_6
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 197
    :cond_7
    const/4 v1, 0x0

    .line 198
    .local v1, "textAlign":Ljava/lang/String;
    const/4 v2, 0x0

    .line 199
    .local v2, "verticalAlign":Ljava/lang/String;
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 200
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_8
    :goto_1
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 205
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_9
    :goto_2
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_a
    const-string v3, "textAlign"

    invoke-virtual {p4, v3}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 202
    const-string v3, "textAlign"

    invoke-virtual {p4, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 206
    :cond_b
    const-string v3, "verticalAlign"

    invoke-virtual {p4, v3}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 207
    const-string v3, "verticalAlign"

    invoke-virtual {p4, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 210
    .end local v1    # "textAlign":Ljava/lang/String;
    .end local v2    # "verticalAlign":Ljava/lang/String;
    :cond_c
    const-string v3, "keyboardType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "autocorrect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "autocapitalization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "passwordMask"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "editable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 211
    :cond_d
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 212
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_e
    const-string v3, "returnKeyType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 214
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    goto/16 :goto_0

    .line 215
    :cond_f
    const-string v3, "font"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 216
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {v3, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 218
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method
