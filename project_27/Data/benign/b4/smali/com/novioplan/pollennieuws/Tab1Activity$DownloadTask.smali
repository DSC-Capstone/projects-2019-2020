.class Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "Tab1Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/Tab1Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/novioplan/pollennieuws/Tab1Activity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/Tab1Activity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$400()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DownloadTask"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "doInBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    aget-object v7, p1, v10

    .line 221
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 222
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 223
    .local v6, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v8, 0x32

    invoke-direct {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 226
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 227
    .local v3, "current":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 228
    int-to-byte v8, v3

    invoke-virtual {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "current":I
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 233
    .local v4, "exc":Ljava/lang/Exception;
    invoke-static {}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$400()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v8, 0x0

    .end local v4    # "exc":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 230
    .restart local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "current":I
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v5

    .line 231
    .local v5, "imageData":[B
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
    .line 215
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const v2, 0x7f02002e

    .line 240
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 241
    if-eqz p1, :cond_1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onPostExecute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "completing background task"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$502(Lcom/novioplan/pollennieuws/Tab1Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$500(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$600(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$500(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$500(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$702(Lcom/novioplan/pollennieuws/Tab1Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onPostExecute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "completing background task1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$800(Lcom/novioplan/pollennieuws/Tab1Activity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastForecastLoad:J

    .line 249
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$900(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$1002(Lcom/novioplan/pollennieuws/Tab1Activity;Z)Z

    .line 259
    invoke-static {}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v2}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$1000(Lcom/novioplan/pollennieuws/Tab1Activity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$702(Lcom/novioplan/pollennieuws/Tab1Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$702(Lcom/novioplan/pollennieuws/Tab1Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 215
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
