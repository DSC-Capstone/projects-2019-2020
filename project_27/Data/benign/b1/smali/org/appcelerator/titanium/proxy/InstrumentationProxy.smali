.class public Lorg/appcelerator/titanium/proxy/InstrumentationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "InstrumentationProxy.java"


# instance fields
.field private instrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/InstrumentationProxy;->instrumentation:Landroid/app/Instrumentation;

    .line 17
    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/InstrumentationProxy;->instrumentation:Landroid/app/Instrumentation;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 23
    return-void
.end method
