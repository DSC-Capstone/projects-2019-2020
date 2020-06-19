.class public interface abstract Lcom/outlinegames/unibill/IabHelper$OnConsumeFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/outlinegames/unibill/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeFinished(Lcom/outlinegames/unibill/Purchase;Lcom/outlinegames/unibill/IabResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
