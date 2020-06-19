.class public Lorg/appcelerator/kroll/common/TiFastDev$Session;
.super Ljava/lang/Thread;
.source "TiFastDev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/common/TiFastDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Session"
.end annotation


# instance fields
.field protected checkingForMessage:Z

.field protected connected:Z

.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/appcelerator/kroll/common/TiFastDev;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/common/TiFastDev;)V
    .locals 3

    .prologue
    .line 273
    iput-object p1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->connected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 275
    :try_start_0
    iget-object v1, p1, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->in:Ljava/io/InputStream;

    .line 276
    iget-object v1, p1, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected blockRead([B)Z
    .locals 6
    .param p1, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "bytesRead":I
    :cond_0
    :try_start_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 294
    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->in:Ljava/io/InputStream;

    array-length v5, p1

    sub-int/2addr v5, v0

    invoke-virtual {v4, p1, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 295
    .local v2, "read":I
    if-gez v2, :cond_2

    .line 308
    .end local v2    # "read":I
    :cond_1
    :goto_0
    return v3

    .line 299
    .restart local v2    # "read":I
    :cond_2
    add-int/2addr v0, v2

    .line 300
    array-length v4, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v4, :cond_0

    .line 301
    const/4 v3, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "read":I
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TiFastDev"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 505
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->connected:Z

    .line 506
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v1, v1, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v1, v1, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 509
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected execute([[B)V
    .locals 5
    .param p1, "message"    # [[B

    .prologue
    .line 423
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 424
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const-string v2, "TiFastDev"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const-string v2, "kill"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->executeKill()V

    .line 437
    .end local v0    # "command":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 431
    .restart local v0    # "command":Ljava/lang/String;
    :cond_2
    const-string v2, "restart"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->executeRestart()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v0    # "command":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "TiFastDev"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected executeHandshake()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 379
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "handshake"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v4, v4, Lorg/appcelerator/kroll/common/TiFastDev;->appGuid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendMessage([Ljava/lang/String;)[[B

    move-result-object v1

    .line 380
    .local v1, "resultData":[[B
    if-nez v1, :cond_0

    .line 381
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v2, v2, Lorg/appcelerator/kroll/common/TiFastDev;->appGuid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->handshakeError(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/String;

    aget-object v2, v1, v5

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 386
    .local v0, "result":Ljava/lang/String;
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v2, v2, Lorg/appcelerator/kroll/common/TiFastDev;->appGuid:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->handshakeError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_1
    const-string v2, "TiFastDev"

    const-string v3, "Fastdev session handshake succesful."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected executeKill()V
    .locals 4

    .prologue
    .line 441
    const-string v0, "Killing app from Fastdev server request"

    .line 442
    .local v0, "message":Ljava/lang/String;
    const-string v1, "TiFastDev"

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showToast(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "OK"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendTokens([Ljava/lang/String;)Z

    .line 446
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 447
    return-void
.end method

.method protected executeRestart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 451
    const-string v2, "Restarting app from Fastdev server request"

    .line 452
    .local v2, "message":Ljava/lang/String;
    const-string v3, "TiFastDev"

    invoke-static {v3, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-virtual {v3, v2}, Lorg/appcelerator/kroll/common/TiFastDev;->showToast(Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iput-boolean v4, v3, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    .line 456
    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "OK"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendTokens([Ljava/lang/String;)Z

    .line 457
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 458
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 459
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method protected handshakeError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 372
    const-string v0, "TiFastDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fastdev session didn\'t receive the correct handshake (sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean v3, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->connected:Z

    .line 374
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->this$0:Lorg/appcelerator/kroll/common/TiFastDev;

    iput-boolean v3, v0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 375
    return-void
.end method

.method protected readInt()I
    .locals 2

    .prologue
    .line 332
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 333
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->blockRead([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toInt([B)I

    move-result v1

    .line 337
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected readMessage()[[B
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readTokenCount()I

    move-result v1

    .line 408
    .local v1, "tokenCount":I
    if-lez v1, :cond_0

    .line 409
    new-array v2, v1, [[B

    .line 410
    .local v2, "tokens":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 411
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readToken()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    .end local v2    # "tokens":[[B
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [[B

    move-object v2, v3

    :cond_1
    return-object v2
.end method

.method protected readToken()[B
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readInt()I

    move-result v0

    .line 343
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 344
    new-array v1, v0, [B

    .line 345
    .local v1, "tokenData":[B
    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->blockRead([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    .end local v1    # "tokenData":[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readTokenCount()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 396
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readInt()I

    move-result v0

    .line 397
    .local v0, "tokenCount":I
    if-lez v0, :cond_1

    .line 398
    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    move v0, v1

    .line 402
    .end local v0    # "tokenCount":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "tokenCount":I
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 354
    :goto_0
    iget-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->connected:Z

    if-eqz v2, :cond_0

    .line 356
    :try_start_0
    iget-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_2

    .line 358
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readMessage()[[B

    move-result-object v1

    .line 359
    .local v1, "message":[[B
    if-nez v1, :cond_1

    .line 368
    .end local v1    # "message":[[B
    :cond_0
    return-void

    .line 360
    .restart local v1    # "message":[[B
    :cond_1
    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->execute([[B)V

    .line 363
    .end local v1    # "message":[[B
    :cond_2
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TiFastDev"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public varargs declared-synchronized sendMessage([Ljava/lang/String;)[[B
    .locals 3
    .param p1, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 484
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 485
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendTokens([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readMessage()[[B

    move-result-object v0

    .line 487
    .local v0, "message":[[B
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "TiFastDev"

    const-string v2, "sent tokens successfully"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v0    # "message":[[B
    :goto_0
    monitor-exit p0

    return-object v0

    .line 495
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    const-string v1, "TiFastDev"

    const-string v2, "error sending tokens"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 500
    const/4 v1, 0x0

    check-cast v1, [[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected varargs sendTokens([Ljava/lang/String;)Z
    .locals 10
    .param p1, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 467
    :try_start_0
    array-length v8, p1

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toBytes(I)[B

    move-result-object v7

    .line 468
    .local v7, "tokenLen":[B
    iget-object v8, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v8, v7}, Ljava/io/OutputStream;->write([B)V

    .line 469
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 470
    .local v6, "token":Ljava/lang/String;
    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 471
    .local v1, "data":[B
    array-length v8, v1

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toBytes(I)[B

    move-result-object v4

    .line 472
    .local v4, "len":[B
    iget-object v8, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 473
    iget-object v8, p0, Lorg/appcelerator/kroll/common/TiFastDev$Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    .end local v1    # "data":[B
    .end local v4    # "len":[B
    .end local v6    # "token":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x1

    .line 478
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "tokenLen":[B
    :goto_1
    return v8

    .line 476
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "TiFastDev"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected toBytes(I)[B
    .locals 3
    .param p1, "data"    # I

    .prologue
    .line 321
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 322
    .local v0, "bytes":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 323
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 324
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 325
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 327
    return-object v0
.end method

.method protected toInt([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 313
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method
