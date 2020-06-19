.class public Lti/modules/titanium/TitaniumModule$Timer;
.super Ljava/lang/Object;
.source "TitaniumModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/TitaniumModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Timer"
.end annotation


# instance fields
.field protected args:[Ljava/lang/Object;

.field protected callback:Lorg/appcelerator/kroll/KrollFunction;

.field protected canceled:Z

.field protected handler:Landroid/os/Handler;

.field protected id:I

.field protected interval:Z

.field final synthetic this$0:Lti/modules/titanium/TitaniumModule;

.field protected timeout:J


# direct methods
.method public constructor <init>(Lti/modules/titanium/TitaniumModule;ILandroid/os/Handler;Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p5, "timeout"    # J
    .param p7, "args"    # [Ljava/lang/Object;
    .param p8, "interval"    # Z

    .prologue
    .line 123
    iput-object p1, p0, Lti/modules/titanium/TitaniumModule$Timer;->this$0:Lti/modules/titanium/TitaniumModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p2, p0, Lti/modules/titanium/TitaniumModule$Timer;->id:I

    .line 125
    iput-object p3, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    .line 126
    iput-object p4, p0, Lti/modules/titanium/TitaniumModule$Timer;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 127
    iput-wide p5, p0, Lti/modules/titanium/TitaniumModule$Timer;->timeout:J

    .line 128
    iput-object p7, p0, Lti/modules/titanium/TitaniumModule$Timer;->args:[Ljava/lang/Object;

    .line 129
    iput-boolean p8, p0, Lti/modules/titanium/TitaniumModule$Timer;->interval:Z

    .line 130
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/TitaniumModule$Timer;->canceled:Z

    .line 165
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 139
    iget-boolean v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->canceled:Z

    if-eqz v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lti/modules/titanium/TitaniumModule;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "calling "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->interval:Z

    if-eqz v3, :cond_3

    const-string v3, "interval"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/TitaniumModule$Timer;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v3, "TitaniumModule"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 155
    .local v1, "start":J
    iget-object v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v4, p0, Lti/modules/titanium/TitaniumModule$Timer;->this$0:Lti/modules/titanium/TitaniumModule;

    invoke-virtual {v4}, Lti/modules/titanium/TitaniumModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/TitaniumModule$Timer;->args:[Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-boolean v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->interval:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->canceled:Z

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    iget-wide v4, p0, Lti/modules/titanium/TitaniumModule$Timer;->timeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    sub-long/2addr v4, v6

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 144
    .end local v1    # "start":J
    :cond_3
    const-string v3, "timeout"

    goto :goto_1
.end method

.method public schedule()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lti/modules/titanium/TitaniumModule$Timer;->timeout:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method
