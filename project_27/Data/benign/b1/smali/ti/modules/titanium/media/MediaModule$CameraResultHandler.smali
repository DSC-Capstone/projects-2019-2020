.class public Lti/modules/titanium/media/MediaModule$CameraResultHandler;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/MediaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraResultHandler"
.end annotation


# instance fields
.field protected activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

.field protected cameraIntent:Landroid/content/Intent;

.field protected cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected code:I

.field protected errorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected imageFile:Ljava/io/File;

.field protected imageUrl:Ljava/lang/String;

.field protected saveToPhotoGallery:Z

.field protected successCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;


# direct methods
.method protected constructor <init>(Lti/modules/titanium/media/MediaModule;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 441
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 449
    :cond_1
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 30
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 281
    if-nez p3, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v3}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    if-nez p4, :cond_4

    .line 291
    new-instance v29, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 292
    .local v29, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "_display_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "datetaken"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    if-eqz v2, :cond_3

    .line 297
    const-string v2, "bucket_id"

    const-string v3, "/sdcard/dcim/Camera"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v2, "bucket_display_name"

    const-string v3, "Camera"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_1
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v20

    .line 309
    .local v20, "imageUri":Landroid/net/Uri;
    new-instance v23, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v5}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 310
    .local v23, "mediaScanner":Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
    invoke-virtual/range {v23 .. v23}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->scan()V

    .line 313
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v3}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v19

    .line 318
    .local v19, "e":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough memory to get image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 319
    .local v25, "msg":Ljava/lang/String;
    const-string v2, "TiMedia"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v3}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Lti/modules/titanium/media/MediaModule;->access$000(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 301
    .end local v19    # "e":Ljava/lang/OutOfMemoryError;
    .end local v20    # "imageUri":Landroid/net/Uri;
    .end local v23    # "mediaScanner":Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
    .end local v25    # "msg":Ljava/lang/String;
    :cond_3
    const-string v2, "bucket_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v2, "bucket_display_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 327
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 336
    .local v4, "projection":[Ljava/lang/String;
    const/16 v27, 0x0

    .line 337
    .local v27, "title":Ljava/lang/String;
    const/16 v17, 0x0

    .line 338
    .local v17, "displayName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 339
    .local v24, "mimeType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 340
    .local v13, "bucketId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 341
    .local v12, "bucketDisplayName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 343
    .local v16, "dataPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 344
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_6

    .line 346
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 348
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 349
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 350
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 351
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 352
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 354
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 355
    const-string v2, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image { title: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " displayName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mimeType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bucketId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bucketDisplayName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    :cond_5
    if-eqz v15, :cond_6

    .line 363
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 364
    const/4 v15, 0x0

    .line 369
    :cond_6
    move-object/from16 v22, v16

    .line 371
    .local v22, "localImageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    if-nez v2, :cond_9

    .line 375
    :try_start_2
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 377
    .local v28, "url":Ljava/net/URL;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v26, "src":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 380
    .local v18, "dst":Ljava/io/File;
    const/4 v8, 0x0

    .line 381
    .local v8, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 384
    .local v10, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x1fa0

    invoke-direct {v9, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 385
    .end local v8    # "bis":Ljava/io/BufferedInputStream;
    .local v9, "bis":Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x1fa0

    invoke-direct {v11, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 387
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .local v11, "bos":Ljava/io/BufferedOutputStream;
    const/16 v2, 0x1fa0

    :try_start_5
    new-array v14, v2, [B

    .line 388
    .local v14, "buf":[B
    const/16 v21, 0x0

    .line 390
    .local v21, "len":I
    :goto_2
    invoke-virtual {v9, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v21

    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_b

    .line 391
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v14, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 395
    .end local v14    # "buf":[B
    .end local v21    # "len":I
    :catchall_0
    move-exception v2

    move-object v10, v11

    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "bis":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v8, :cond_7

    .line 396
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 399
    :cond_7
    if-eqz v10, :cond_8

    .line 400
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    :cond_8
    throw v2
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 415
    .end local v8    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .end local v18    # "dst":Ljava/io/File;
    .end local v26    # "src":Ljava/io/File;
    .end local v28    # "url":Ljava/net/URL;
    :catch_1
    move-exception v19

    .line 416
    .local v19, "e":Ljava/net/MalformedURLException;
    const-string v2, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URL not moving image: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v19    # "e":Ljava/net/MalformedURLException;
    :cond_9
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v3}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const-string v6, "image/jpeg"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 428
    :catch_2
    move-exception v19

    .line 429
    .local v19, "e":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough memory to get image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 430
    .restart local v25    # "msg":Ljava/lang/String;
    const-string v2, "TiMedia"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v3}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Lti/modules/titanium/media/MediaModule;->access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 362
    .end local v19    # "e":Ljava/lang/OutOfMemoryError;
    .end local v22    # "localImageUrl":Ljava/lang/String;
    .end local v25    # "msg":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_a

    .line 363
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 364
    const/4 v15, 0x0

    :cond_a
    throw v2

    .line 395
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v14    # "buf":[B
    .restart local v18    # "dst":Ljava/io/File;
    .restart local v21    # "len":I
    .restart local v22    # "localImageUrl":Ljava/lang/String;
    .restart local v26    # "src":Ljava/io/File;
    .restart local v28    # "url":Ljava/net/URL;
    :cond_b
    if-eqz v9, :cond_c

    .line 396
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 399
    :cond_c
    if-eqz v11, :cond_d

    .line 400
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 405
    :cond_d
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .restart local v29    # "values":Landroid/content/ContentValues;
    const-string v2, "bucket_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v2, "bucket_display_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 412
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object/from16 v22, v0
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_4

    .line 418
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .end local v14    # "buf":[B
    .end local v18    # "dst":Ljava/io/File;
    .end local v21    # "len":I
    .end local v26    # "src":Ljava/io/File;
    .end local v28    # "url":Ljava/net/URL;
    .end local v29    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v19

    .line 419
    .local v19, "e":Ljava/io/IOException;
    const-string v2, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to move file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 395
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v8    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "dst":Ljava/io/File;
    .restart local v26    # "src":Ljava/io/File;
    .restart local v28    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v2

    goto/16 :goto_3

    .end local v8    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v2

    move-object v8, v9

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_3
.end method

.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    invoke-interface {v0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    .line 275
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    iget v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    invoke-interface {v0, v1, v2, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 276
    return-void
.end method
