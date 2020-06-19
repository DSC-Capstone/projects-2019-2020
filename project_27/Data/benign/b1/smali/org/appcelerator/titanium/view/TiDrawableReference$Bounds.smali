.class public Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
.super Ljava/lang/Object;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiDrawableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bounds"
.end annotation


# static fields
.field public static final UNKNOWN:I = -0x1


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 65
    iput v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    return-void
.end method
