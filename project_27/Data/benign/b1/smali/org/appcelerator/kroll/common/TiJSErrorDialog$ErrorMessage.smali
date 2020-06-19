.class Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/common/TiJSErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorMessage"
.end annotation


# instance fields
.field line:I

.field lineOffset:I

.field lineSource:Ljava/lang/String;

.field message:Ljava/lang/String;

.field sourceName:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;-><init>()V

    return-void
.end method
