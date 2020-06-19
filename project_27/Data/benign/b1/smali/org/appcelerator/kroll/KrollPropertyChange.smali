.class public Lorg/appcelerator/kroll/KrollPropertyChange;
.super Ljava/lang/Object;
.source "KrollPropertyChange.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected newValue:Ljava/lang/Object;

.field protected oldValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->oldValue:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->newValue:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public fireEvent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxyListener;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .param p2, "listener"    # Lorg/appcelerator/kroll/KrollProxyListener;

    .prologue
    .line 20
    if-eqz p2, :cond_0

    .line 21
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->oldValue:Ljava/lang/Object;

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->newValue:Ljava/lang/Object;

    invoke-interface {p2, v0, v1, v2, p1}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 23
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollPropertyChange;->oldValue:Ljava/lang/Object;

    return-object v0
.end method
