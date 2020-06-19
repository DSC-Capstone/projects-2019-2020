.class Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;
.super Landroid/os/AsyncTask;
.source "VideoListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/data/VideoListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/novioplan/pollennieuws/data/VideoData;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/data/VideoListItem;


# direct methods
.method private constructor <init>(Lcom/novioplan/pollennieuws/data/VideoListItem;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/data/VideoListItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novioplan/pollennieuws/data/VideoListItem;Lcom/novioplan/pollennieuws/data/VideoListItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novioplan/pollennieuws/data/VideoListItem;
    .param p2, "x1"    # Lcom/novioplan/pollennieuws/data/VideoListItem$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;-><init>(Lcom/novioplan/pollennieuws/data/VideoListItem;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/novioplan/pollennieuws/data/VideoData;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "params"    # [Lcom/novioplan/pollennieuws/data/VideoData;

    .prologue
    const/4 v10, 0x0

    .line 83
    aget-object v10, p1, v10

    invoke-virtual {v10}, Lcom/novioplan/pollennieuws/data/VideoData;->getThumbURL()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "url":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 86
    .local v4, "connection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 87
    .local v8, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v10, 0x32

    invoke-direct {v0, v10}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 90
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v5, 0x0

    .line 91
    .local v5, "current":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    .line 92
    int-to-byte v10, v5

    invoke-virtual {v0, v10}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v5    # "current":I
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 114
    .local v6, "exc":Ljava/lang/Exception;
    sget-object v10, Lcom/novioplan/pollennieuws/data/VideoListItem;->tag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    .end local v6    # "exc":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 94
    .restart local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "current":I
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    .line 95
    .local v7, "imageData":[B
    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    .local v2, "bm":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v3, "bmImage":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 107
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {v10, v3}, Lcom/novioplan/pollennieuws/data/VideoData;->setThumbBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 108
    sget-object v10, Lcom/novioplan/pollennieuws/data/VideoListItem;->tag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setting scaled bitmap for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lcom/novioplan/pollennieuws/data/VideoData;->getVideoTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, [Lcom/novioplan/pollennieuws/data/VideoData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->doInBackground([Lcom/novioplan/pollennieuws/data/VideoData;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/data/VideoListItem;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoListItem;->access$102(Lcom/novioplan/pollennieuws/data/VideoListItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 122
    sget-object v0, Lcom/novioplan/pollennieuws/data/VideoListItem;->tag:Ljava/lang/String;

    const-string v1, "finished downloading..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/data/VideoListItem;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/data/VideoListItem;->access$300(Lcom/novioplan/pollennieuws/data/VideoListItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/data/VideoListItem;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/data/VideoListItem;->access$200(Lcom/novioplan/pollennieuws/data/VideoListItem;)Lcom/novioplan/pollennieuws/data/VideoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/VideoData;->getThumbBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/data/VideoListItem$DownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
