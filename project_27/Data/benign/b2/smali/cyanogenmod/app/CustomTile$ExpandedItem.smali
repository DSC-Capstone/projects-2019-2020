.class public Lcyanogenmod/app/CustomTile$ExpandedItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public itemBitmapResource:Landroid/graphics/Bitmap;

.field public itemDrawableResourceId:I

.field public itemSummary:Ljava/lang/String;

.field public itemTitle:Ljava/lang/String;

.field public onClickPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 750
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedItem$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$ExpandedItem$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 605
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 655
    const/4 v0, 0x1

    if-lt v1, v0, :cond_3

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    .line 662
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 665
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    .line 668
    :cond_3
    const/4 v0, 0x2

    if-lt v1, v0, :cond_4

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    .line 674
    :cond_4
    add-int v0, v3, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 675
    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTile$1;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lcyanogenmod/app/CustomTile$ExpandedItem;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method protected internalSetItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    .line 619
    return-void
.end method

.method protected internalSetItemDrawable(I)V
    .locals 0

    .prologue
    .line 611
    iput p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    .line 612
    return-void
.end method

.method protected internalSetItemSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 626
    return-void
.end method

.method protected internalSetItemTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    .line 633
    return-void
.end method

.method protected internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    .line 640
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 734
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickPendingIntent= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemTitle= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemSummary= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemDrawableResourceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemBitmapResource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 686
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 691
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 695
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 696
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    :goto_0
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 702
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    :goto_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 708
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    :goto_2
    iget v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 717
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 724
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    sub-int/2addr v2, v1

    .line 725
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 726
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    add-int v0, v1, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 728
    return-void

    .line 699
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 711
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 720
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
