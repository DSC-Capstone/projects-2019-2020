.class public Lti/modules/titanium/ui/TiTabActivity;
.super Landroid/app/TabActivity;
.source "TiTabActivity.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiTabActivity"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected proxy:Lti/modules/titanium/ui/TabGroupProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 41
    return-void
.end method

.method private shouldFinishRootActivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "finishRoot"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "finishRoot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 188
    invoke-direct {p0}, Lti/modules/titanium/ui/TiTabActivity;->shouldFinishRootActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 191
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 193
    .local v0, "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    .line 199
    .end local v0    # "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    .end local v1    # "tiApp":Lorg/appcelerator/titanium/TiApplication;
    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->finish()V

    .line 200
    return-void
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    invoke-static {p1}, Lorg/appcelerator/titanium/TiBaseActivity;->callOrientationChangedListener(Landroid/content/res/Configuration;)V

    .line 279
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v16

    .line 52
    .local v16, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 53
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->isFinishing()Z

    move-result v18

    if-nez v18, :cond_0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 61
    const-string v18, "TiTabActivity"

    const-string v19, "Unsupported, out-of-order activity creation. Finishing."

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/16 v18, 0xfa

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static/range {p0 .. p0}, Lorg/appcelerator/titanium/TiApplication;->addToActivityStack(Landroid/app/Activity;)V

    .line 69
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementActivityRefCount()V

    .line 71
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "titanium_tabgroup"

    const-string v20, "layout"

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 75
    .local v7, "layoutResId":I
    if-nez v7, :cond_3

    .line 76
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "titanium_tabgroup layout resource not found.  TabGroup cannot be created."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 78
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 79
    .local v5, "intent":Landroid/content/Intent;
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/TiTabActivity;->handler:Landroid/os/Handler;

    .line 84
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TabHost;

    .line 85
    .local v13, "tabHost":Landroid/widget/TabHost;
    new-instance v14, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v14}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 86
    .local v14, "tabHostLayout":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 87
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 88
    new-instance v6, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    sget-object v18, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 89
    .local v6, "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    invoke-virtual {v6, v13, v14}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "fullscreen":Z
    const/4 v12, 0x0

    .line 93
    .local v12, "navbar":Z
    const/4 v10, 0x0

    .line 94
    .local v10, "messenger":Landroid/os/Messenger;
    const/4 v9, 0x0

    .line 95
    .local v9, "messageId":Ljava/lang/Integer;
    if-eqz v5, :cond_7

    .line 96
    const-string v18, "fullscreen"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 97
    const-string v18, "fullscreen"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 99
    :cond_4
    const-string v18, "navBarHidden"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 100
    const-string v18, "navBarHidden"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_9

    const/4 v12, 0x1

    .line 102
    :cond_5
    :goto_1
    const-string v18, "messenger"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 103
    const-string v18, "messenger"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10    # "messenger":Landroid/os/Messenger;
    check-cast v10, Landroid/os/Messenger;

    .line 104
    .restart local v10    # "messenger":Landroid/os/Messenger;
    const-string v18, "messageId"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 106
    :cond_6
    const-string v18, "windowSoftInputMode"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 107
    const-string v18, "windowSoftInputMode"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 108
    .local v11, "mode":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_7

    .line 109
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 110
    .local v17, "w":Landroid/view/Window;
    if-eqz v17, :cond_7

    .line 111
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    .end local v11    # "mode":I
    .end local v17    # "w":Landroid/view/Window;
    :cond_7
    if-eqz v4, :cond_8

    .line 118
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x400

    const/16 v20, 0x400

    invoke-virtual/range {v18 .. v20}, Landroid/view/Window;->setFlags(II)V

    .line 122
    :cond_8
    if-eqz v12, :cond_a

    .line 123
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 124
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 125
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 126
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 131
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lti/modules/titanium/ui/TiTabActivity;->setContentView(Landroid/view/View;)V

    .line 138
    const-string v18, "ti_empty"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    .line 139
    .local v15, "tabSpec":Landroid/widget/TabHost$TabSpec;
    new-instance v18, Lti/modules/titanium/ui/TiTabActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/TiTabActivity$1;-><init>(Lti/modules/titanium/ui/TiTabActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 147
    invoke-virtual {v13, v15}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 151
    move-object/from16 v8, p0

    .line 152
    .local v8, "me":Lti/modules/titanium/ui/TiTabActivity;
    move-object v3, v10

    .line 153
    .local v3, "fMessenger":Landroid/os/Messenger;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 154
    .local v2, "fMessageId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TiTabActivity;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v19, Lti/modules/titanium/ui/TiTabActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v2, v8}, Lti/modules/titanium/ui/TiTabActivity$2;-><init>(Lti/modules/titanium/ui/TiTabActivity;Landroid/os/Messenger;ILti/modules/titanium/ui/TiTabActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 100
    .end local v2    # "fMessageId":I
    .end local v3    # "fMessenger":Landroid/os/Messenger;
    .end local v8    # "me":Lti/modules/titanium/ui/TiTabActivity;
    .end local v15    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 128
    :cond_a
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 240
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 242
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 244
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 255
    invoke-direct {p0}, Lti/modules/titanium/ui/TiTabActivity;->shouldFinishRootActivity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 259
    const-string v2, "finishRoot"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 263
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    if-eqz v2, :cond_4

    .line 267
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v2}, Lti/modules/titanium/ui/TabGroupProxy;->closeFromActivity()V

    .line 268
    iput-object v3, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 271
    :cond_4
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->decrementActivityRefCount()V

    .line 272
    iput-object v3, p0, Lti/modules/titanium/ui/TiTabActivity;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 207
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 209
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 224
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 226
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public setTabGroupProxy(Lti/modules/titanium/ui/TabGroupProxy;)V
    .locals 0
    .param p1, "proxy"    # Lti/modules/titanium/ui/TabGroupProxy;

    .prologue
    .line 44
    iput-object p1, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 45
    return-void
.end method
