.class public Lcyanogenmod/app/CustomTile$GridExpandedStyle;
.super Lcyanogenmod/app/CustomTile$ExpandedStyle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Lcyanogenmod/app/CustomTile$1;)V

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile$GridExpandedStyle;->internalStyleId(I)V

    .line 514
    return-void
.end method


# virtual methods
.method public setGridItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedGridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$GridExpandedStyle;->internalSetExpandedItems(Ljava/util/ArrayList;)V

    .line 526
    return-void
.end method
