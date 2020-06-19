.class public Lorg/appcelerator/kroll/common/TiJSErrorDialog;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;
    }
.end annotation


# static fields
.field private static final MSG_OPEN_ERROR_DIALOG:I = 0x271b

.field private static final TAG:Ljava/lang/String; = "TiJSError"

.field private static _instance:Lorg/appcelerator/kroll/common/TiJSErrorDialog;

.field private static dialogShowing:Z

.field private static errorMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->errorMessages:Ljava/util/LinkedList;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->dialogShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->errorMessages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->dialogShowing:Z

    return p0
.end method

.method protected static createDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V
    .locals 17
    .param p0, "error"    # Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    .prologue
    .line 114
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v13

    invoke-virtual {v13}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v1

    .line 115
    .local v1, "application":Lorg/appcelerator/kroll/KrollApplication;
    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-interface {v1}, Lorg/appcelerator/kroll/KrollApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 120
    .local v4, "context":Landroid/content/Context;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 121
    .local v6, "layout":Landroid/widget/FrameLayout;
    const/16 v13, 0x80

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 123
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v12, "vlayout":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    invoke-virtual/range {v12 .. v16}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v9, "sourceInfoView":Landroid/widget/TextView;
    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 130
    const/high16 v13, -0x1000000

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->line:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->lineOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->sourceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v8, "messageView":Landroid/widget/TextView;
    const/4 v13, -0x1

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 136
    const/high16 v13, -0x1000000

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->message:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v11, "sourceView":Landroid/widget/TextView;
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 142
    const/high16 v13, -0x1000000

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->lineSource:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v5, "infoLabel":Landroid/widget/TextView;
    const-string v13, "Location: "

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 151
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v7, "messageLabel":Landroid/widget/TextView;
    const-string v13, "Message: "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v13, -0x1

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 156
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    .local v10, "sourceLabel":Landroid/widget/TextView;
    const-string v13, "Source: "

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v13, -0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 161
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v3, Lorg/appcelerator/kroll/common/TiJSErrorDialog$2;

    invoke-direct {v3}, Lorg/appcelerator/kroll/common/TiJSErrorDialog$2;-><init>()V

    .line 194
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Kill"

    invoke-virtual {v13, v14, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Continue"

    invoke-virtual {v13, v14, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 204
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->_instance:Lorg/appcelerator/kroll/common/TiJSErrorDialog;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;

    invoke-direct {v0}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->_instance:Lorg/appcelerator/kroll/common/TiJSErrorDialog;

    .line 60
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->_instance:Lorg/appcelerator/kroll/common/TiJSErrorDialog;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->mainHandler:Landroid/os/Handler;

    .line 64
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static handleOpenErrorDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V
    .locals 9
    .param p0, "error"    # Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    .prologue
    .line 83
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v7

    .line 84
    .local v7, "application":Lorg/appcelerator/kroll/KrollApplication;
    if-nez v7, :cond_0

    .line 110
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-interface {v7}, Lorg/appcelerator/kroll/KrollApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    .line 89
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    const-string v0, "TiJSError"

    const-string v1, "Activity is null or already finishing, skipping dialog."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->message:Ljava/lang/String;

    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->sourceName:Ljava/lang/String;

    iget v3, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->line:I

    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->lineSource:Ljava/lang/String;

    iget v5, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->lineOffset:I

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->printError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 96
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->dialogShowing:Z

    if-nez v0, :cond_3

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->dialogShowing:Z

    .line 98
    move-object v8, p0

    .line 99
    .local v8, "fError":Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;
    new-instance v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;-><init>(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V

    invoke-interface {v7, v0}, Lorg/appcelerator/kroll/KrollApplication;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    goto :goto_0

    .line 108
    .end local v8    # "fError":Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;
    :cond_3
    sget-object v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->errorMessages:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static openErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceName"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "lineSource"    # Ljava/lang/String;
    .param p5, "lineOffset"    # I

    .prologue
    .line 70
    new-instance v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;-><init>(Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;)V

    .line 71
    .local v0, "error":Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;
    iput-object p0, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->title:Ljava/lang/String;

    .line 72
    iput-object p1, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->message:Ljava/lang/String;

    .line 73
    iput-object p2, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->sourceName:Ljava/lang/String;

    .line 74
    iput p3, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->line:I

    .line 75
    iput-object p4, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->lineSource:Ljava/lang/String;

    .line 76
    iput p5, v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;->lineOffset:I

    .line 78
    invoke-static {}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x271b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static printError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceName"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "lineSource"    # Ljava/lang/String;
    .param p5, "lineOffset"    # I

    .prologue
    .line 42
    const-string v0, "TiJSError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- Titanium Javascript "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "TiJSError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- In "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "TiJSError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "TiJSError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method protected static reload(Ljava/lang/String;)V
    .locals 0
    .param p0, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 233
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 224
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 225
    .local v0, "asyncResult":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    .line 226
    .local v1, "errorMessage":Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;
    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->handleOpenErrorDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 228
    const/4 v2, 0x1

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x271b
        :pswitch_0
    .end packed-switch
.end method
