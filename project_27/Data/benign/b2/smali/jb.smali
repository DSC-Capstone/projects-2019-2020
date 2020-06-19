.class public Ljb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Ljd;

    invoke-direct {v0}, Ljd;-><init>()V

    sput-object v0, Ljb;->a:Ljf;

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Ljc;

    invoke-direct {v0}, Ljc;-><init>()V

    sput-object v0, Ljb;->a:Ljf;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    sput-object v0, Ljb;->a:Ljf;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Lke;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lke;

    invoke-direct {v0, p0}, Lke;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
