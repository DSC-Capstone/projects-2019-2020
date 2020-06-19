.class public interface abstract Lorg/appcelerator/kroll/KrollProxyListener;
.super Ljava/lang/Object;
.source "KrollProxyListener.java"


# virtual methods
.method public abstract listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
.end method

.method public abstract listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
.end method

.method public abstract processProperties(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method public abstract propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
.end method
