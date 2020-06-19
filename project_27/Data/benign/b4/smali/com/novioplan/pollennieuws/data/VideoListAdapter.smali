.class public Lcom/novioplan/pollennieuws/data/VideoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public forceReload()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/data/VideoData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    if-nez p2, :cond_1

    .line 44
    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/data/VideoListItem;

    .line 48
    .local v0, "videoItem":Lcom/novioplan/pollennieuws/data/VideoListItem;
    :goto_0
    invoke-static {}, Lcom/novioplan/pollennieuws/data/VideoListItem;->getBackingAdapter()Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {p0}, Lcom/novioplan/pollennieuws/data/VideoListItem;->setBackingAdapter(Lcom/novioplan/pollennieuws/data/VideoListAdapter;)V

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/data/VideoData;

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoListItem;->setVideo(Lcom/novioplan/pollennieuws/data/VideoData;)V

    .line 52
    return-object v0

    .end local v0    # "videoItem":Lcom/novioplan/pollennieuws/data/VideoListItem;
    :cond_1
    move-object v0, p2

    .line 46
    check-cast v0, Lcom/novioplan/pollennieuws/data/VideoListItem;

    .restart local v0    # "videoItem":Lcom/novioplan/pollennieuws/data/VideoListItem;
    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->context:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public setVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "videoList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->videoList:Ljava/util/List;

    .line 66
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
