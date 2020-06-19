.class Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;
.super Landroid/os/AsyncTask;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/WebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/WebImageView;


# direct methods
.method private constructor <init>(Lcom/novioplan/pollennieuws/WebImageView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/WebImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novioplan/pollennieuws/WebImageView;Lcom/novioplan/pollennieuws/WebImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novioplan/pollennieuws/WebImageView;
    .param p2, "x1"    # Lcom/novioplan/pollennieuws/WebImageView$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;-><init>(Lcom/novioplan/pollennieuws/WebImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 67
    aget-object v7, p1, v8

    .line 69
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 70
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 71
    .local v6, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v8, 0x32

    invoke-direct {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 74
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 75
    .local v3, "current":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 76
    int-to-byte v8, v3

    invoke-virtual {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "current":I
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 82
    .local v4, "exc":Ljava/lang/Exception;
    invoke-static {}, Lcom/novioplan/pollennieuws/WebImageView;->access$200()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v8, 0x0

    .end local v4    # "exc":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 78
    .restart local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "current":I
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v5

    .line 79
    .local v5, "imageData":[B
    iget-object v8, p0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/WebImageView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/novioplan/pollennieuws/WebImageView;->access$102(Lcom/novioplan/pollennieuws/WebImageView;Z)Z

    .line 80
    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/WebImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/WebImageView;->access$302(Lcom/novioplan/pollennieuws/WebImageView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/WebImageView;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/WebImageView;->access$300(Lcom/novioplan/pollennieuws/WebImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/WebImageView;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/WebImageView;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/WebImageView;->access$300(Lcom/novioplan/pollennieuws/WebImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
