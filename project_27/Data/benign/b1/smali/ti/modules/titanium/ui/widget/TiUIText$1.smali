.class Lti/modules/titanium/ui/widget/TiUIText$1;
.super Landroid/text/method/NumberKeyListener;
.source "TiUIText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIText;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIText;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIText$1;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 393
    const/16 v0, 0x2b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
        0x2ds
        0x2bs
        0x5fs
        0x2as
        0x2ds
        0x21s
        0x40s
        0x23s
        0x24s
        0x25s
        0x5es
        0x26s
        0x2as
        0x28s
        0x29s
        0x3ds
        0x7bs
        0x7ds
        0x5bs
        0x5ds
        0x7cs
        0x5cs
        0x3cs
        0x3es
        0x2cs
        0x3fs
        0x2fs
        0x3as
        0x3bs
        0x27s
        0x22s
        0x7es
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x2

    return v0
.end method
