.class public Lcyanogenmod/app/CustomTile$ExpandedListItem;
.super Lcyanogenmod/app/CustomTile$ExpandedItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedItem;-><init>(Lcyanogenmod/app/CustomTile$1;)V

    .line 819
    return-void
.end method


# virtual methods
.method public setExpandedListItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemBitmap(Landroid/graphics/Bitmap;)V

    .line 863
    return-void
.end method

.method public setExpandedListItemDrawable(I)V
    .locals 0

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemDrawable(I)V

    .line 851
    return-void
.end method

.method public setExpandedListItemOnClickIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V

    .line 843
    return-void
.end method

.method public setExpandedListItemSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemSummary(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public setExpandedListItemTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemTitle(Ljava/lang/String;)V

    .line 827
    return-void
.end method
