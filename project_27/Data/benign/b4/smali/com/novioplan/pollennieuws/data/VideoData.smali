.class public Lcom/novioplan/pollennieuws/data/VideoData;
.super Ljava/lang/Object;
.source "VideoData.java"


# static fields
.field private static deviceScreenHeight:I

.field private static deviceScreenWidth:I


# instance fields
.field private thumbBitmap:Landroid/graphics/drawable/Drawable;

.field private thumbURL:Ljava/lang/String;

.field private videoSubTitle:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "videoSubTitle"    # Ljava/lang/String;
    .param p3, "videoURL"    # Ljava/lang/String;
    .param p4, "thumbURL"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoTitle:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoSubTitle:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoURL:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/novioplan/pollennieuws/data/VideoData;->thumbURL:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getDeviceScreenHeight()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/novioplan/pollennieuws/data/VideoData;->deviceScreenHeight:I

    return v0
.end method

.method public static getDeviceScreenWidth()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/novioplan/pollennieuws/data/VideoData;->deviceScreenWidth:I

    return v0
.end method

.method public static getSample()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "sampleList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    return-object v0
.end method

.method public static setDeviceScreenHeight(I)V
    .locals 0
    .param p0, "deviceScreenHeight"    # I

    .prologue
    .line 95
    sput p0, Lcom/novioplan/pollennieuws/data/VideoData;->deviceScreenHeight:I

    .line 96
    return-void
.end method

.method public static setDeviceScreenWidth(I)V
    .locals 0
    .param p0, "deviceScreenWidth"    # I

    .prologue
    .line 87
    sput p0, Lcom/novioplan/pollennieuws/data/VideoData;->deviceScreenWidth:I

    .line 88
    return-void
.end method


# virtual methods
.method public getThumbBitmap()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoData;->thumbBitmap:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoData;->thumbURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoURL:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumbBitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoData;->thumbBitmap:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method public setThumbURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbURL"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoData;->thumbURL:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVideoSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoSubTitle"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoSubTitle:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoTitle"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoTitle:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoURL"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/VideoData;->videoURL:Ljava/lang/String;

    .line 56
    return-void
.end method
