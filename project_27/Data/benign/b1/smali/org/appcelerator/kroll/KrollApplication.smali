.class public interface abstract Lorg/appcelerator/kroll/KrollApplication;
.super Ljava/lang/Object;
.source "KrollApplication.java"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getAppGUID()Ljava/lang/String;
.end method

.method public abstract getCurrentActivity()Landroid/app/Activity;
.end method

.method public abstract getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;
.end method

.method public abstract getDeployType()Ljava/lang/String;
.end method

.method public abstract getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;
.end method

.method public abstract getThreadStackSize()I
.end method

.method public abstract isDebuggerEnabled()Z
.end method

.method public abstract isFastDevMode()Z
.end method

.method public abstract waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
.end method
