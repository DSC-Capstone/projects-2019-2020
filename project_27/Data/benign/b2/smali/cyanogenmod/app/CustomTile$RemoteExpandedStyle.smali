.class public Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;
.super Lcyanogenmod/app/CustomTile$ExpandedStyle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Lcyanogenmod/app/CustomTile$1;)V

    .line 559
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;->internalStyleId(I)V

    .line 560
    return-void
.end method


# virtual methods
.method public setRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;->internalSetRemoteViews(Landroid/widget/RemoteViews;)V

    .line 568
    return-void
.end method
