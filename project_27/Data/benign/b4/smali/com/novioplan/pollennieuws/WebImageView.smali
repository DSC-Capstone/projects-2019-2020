.class public Lcom/novioplan/pollennieuws/WebImageView;
.super Landroid/widget/ImageView;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novioplan/pollennieuws/WebImageView$1;,
        Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;
    }
.end annotation


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private loaded:Z

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mPlaceholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "WebImageView"

    sput-object v0, Lcom/novioplan/pollennieuws/WebImageView;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/novioplan/pollennieuws/WebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/novioplan/pollennieuws/WebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object v0, Lcom/novioplan/pollennieuws/WebImageView;->tag:Ljava/lang/String;

    const-string v1, "constructor 3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method static synthetic access$102(Lcom/novioplan/pollennieuws/WebImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/WebImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/WebImageView;->loaded:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/novioplan/pollennieuws/WebImageView;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novioplan/pollennieuws/WebImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/WebImageView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/novioplan/pollennieuws/WebImageView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/WebImageView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/novioplan/pollennieuws/WebImageView;->mImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method


# virtual methods
.method public setImageUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/novioplan/pollennieuws/WebImageView;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setImageUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v1, p0, Lcom/novioplan/pollennieuws/WebImageView;->loaded:Z

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;-><init>(Lcom/novioplan/pollennieuws/WebImageView;Lcom/novioplan/pollennieuws/WebImageView$1;)V

    .line 60
    .local v0, "task":Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    .end local v0    # "task":Lcom/novioplan/pollennieuws/WebImageView$DownloadTask;
    :cond_0
    return-void
.end method

.method public setPlaceholderImage(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/WebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setPlaceholderImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    sget-object v0, Lcom/novioplan/pollennieuws/WebImageView;->tag:Ljava/lang/String;

    const-string v1, "setPlaceholderImage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/novioplan/pollennieuws/WebImageView;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 44
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/novioplan/pollennieuws/WebImageView;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    return-void
.end method
