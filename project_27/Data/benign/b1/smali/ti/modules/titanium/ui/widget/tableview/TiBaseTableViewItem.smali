.class public abstract Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.super Landroid/view/ViewGroup;
.source "TiBaseTableViewItem.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiBaseTableViewItem"

.field private static checkIndicatorBitmap:Landroid/graphics/Bitmap;

.field private static childIndicatorBitmap:Landroid/graphics/Bitmap;


# instance fields
.field protected className:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field protected tfh:Lorg/appcelerator/titanium/util/TiFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->DBG:Z

    .line 39
    sput-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 40
    sput-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->handler:Landroid/os/Handler;

    .line 51
    sget-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 52
    :cond_0
    const-class v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    monitor-enter v2

    .line 55
    :try_start_0
    sget-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 56
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_more.png"

    .line 57
    .local v0, "path":Ljava/lang/String;
    sget v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    sparse-switch v1, :sswitch_data_0

    .line 61
    :goto_0
    const-class v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 63
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    sget-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 64
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on.png"

    .line 65
    .restart local v0    # "path":Ljava/lang/String;
    sget v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    sparse-switch v1, :sswitch_data_1

    .line 69
    :goto_1
    const-class v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 71
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    monitor-exit v2

    .line 73
    :cond_3
    return-void

    .line 58
    .restart local v0    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_more_48.png"

    goto :goto_0

    .line 59
    :sswitch_1
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_more_18.png"

    goto :goto_0

    .line 66
    :sswitch_2
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_48.png"

    goto :goto_1

    .line 67
    :sswitch_3
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_1ow 8.png"

    goto :goto_1

    .line 71
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch

    .line 65
    :sswitch_data_1
    .sparse-switch
        0x78 -> :sswitch_3
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method private createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 101
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v1

    .line 104
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "TiBaseTableViewItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 105
    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 108
    goto :goto_0
.end method


# virtual methods
.method public createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageDrawable(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClickedViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public hasSelector()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 125
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->handler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method public setBackgroundDrawable(Lorg/appcelerator/kroll/KrollDict;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v8, 0x10100a1

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 143
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 145
    .local v1, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const-string v3, "backgroundSelectedImage"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "backgroundSelectedColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 149
    .local v2, "transparent":Landroid/graphics/drawable/ColorDrawable;
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 153
    new-array v3, v7, [I

    aput v8, v3, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 166
    .end local v2    # "transparent":Landroid/graphics/drawable/ColorDrawable;
    :goto_0
    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 170
    new-array v3, v5, [I

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 172
    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string v3, "opacity"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 176
    :cond_1
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void

    .line 158
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "defaultDrawable":Landroid/graphics/drawable/Drawable;
    new-array v3, v6, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 163
    new-array v3, v7, [I

    aput v8, v3, v5

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 149
    nop

    :array_0
    .array-data 4
        0x101009d
        0x101009e
        0x10100a7
    .end array-data

    .line 166
    :array_1
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
    .end array-data

    .line 159
    :array_2
    .array-data 4
        0x101009d
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public setBackgroundFromProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getBackgroundImageDrawable(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Lorg/appcelerator/kroll/KrollDict;Landroid/graphics/drawable/Drawable;)V

    .line 189
    return-void

    .line 183
    :cond_1
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 185
    .local v1, "bgColor":Ljava/lang/Integer;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->className:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public abstract setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
.end method
