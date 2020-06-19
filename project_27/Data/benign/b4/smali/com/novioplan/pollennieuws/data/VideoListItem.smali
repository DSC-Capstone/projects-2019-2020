.class public Lcom/novioplan/pollennieuws/data/VideoListItem;
.super Landroid/widget/RelativeLayout;
.source "VideoListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novioplan/pollennieuws/data/VideoListItem$1;,
        Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;
    }
.end annotation


# static fields
.field private static adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

.field public static tag:Ljava/lang/String;


# instance fields
.field private loaded:Z

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mPlaceholder:Landroid/graphics/drawable/Drawable;

.field private subTitle:Landroid/widget/TextView;

.field private thumb:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private video:Lcom/novioplan/pollennieuws/data/VideoData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "VideoListItem"

    sput-object v0, Lcom/novioplan/pollennieuws/data/VideoListItem;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$102(Lcom/novioplan/pollennieuws/data/VideoListItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/data/VideoListItem;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/novioplan/pollennieuws/data/VideoListItem;)Lcom/novioplan/pollennieuws/data/VideoData;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/data/VideoListItem;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->video:Lcom/novioplan/pollennieuws/data/VideoData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novioplan/pollennieuws/data/VideoListItem;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/data/VideoListItem;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->thumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static getBackingAdapter()Lcom/novioplan/pollennieuws/data/VideoListAdapter;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/novioplan/pollennieuws/data/VideoListItem;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    return-object v0
.end method

.method public static setBackingAdapter(Lcom/novioplan/pollennieuws/data/VideoListAdapter;)V
    .locals 0
    .param p0, "adapter"    # Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    .prologue
    .line 133
    sput-object p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    .line 134
    return-void
.end method


# virtual methods
.method public getVideo()Lcom/novioplan/pollennieuws/data/VideoData;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->video:Lcom/novioplan/pollennieuws/data/VideoData;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/VideoListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->thumb:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/VideoListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->title:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/VideoListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->subTitle:Landroid/widget/TextView;

    .line 54
    sget-object v0, Lcom/novioplan/pollennieuws/data/VideoListItem;->tag:Ljava/lang/String;

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public setImageUrl(Lcom/novioplan/pollennieuws/data/VideoData;)V
    .locals 3
    .param p1, "video"    # Lcom/novioplan/pollennieuws/data/VideoData;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/VideoData;->getThumbBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;-><init>(Lcom/novioplan/pollennieuws/data/VideoListItem;Lcom/novioplan/pollennieuws/data/VideoListItem$1;)V

    .line 73
    .local v0, "task":Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/novioplan/pollennieuws/data/VideoData;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    .end local v0    # "task":Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->thumb:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/VideoData;->getThumbBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVideo(Lcom/novioplan/pollennieuws/data/VideoData;)V
    .locals 2
    .param p1, "_video"    # Lcom/novioplan/pollennieuws/data/VideoData;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->video:Lcom/novioplan/pollennieuws/data/VideoData;

    .line 60
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->video:Lcom/novioplan/pollennieuws/data/VideoData;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/VideoData;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->subTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->video:Lcom/novioplan/pollennieuws/data/VideoData;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/VideoData;->getVideoSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem;->video:Lcom/novioplan/pollennieuws/data/VideoData;

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/VideoListItem;->setImageUrl(Lcom/novioplan/pollennieuws/data/VideoData;)V

    .line 63
    return-void
.end method
