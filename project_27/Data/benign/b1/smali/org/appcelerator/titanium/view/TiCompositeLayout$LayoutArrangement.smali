.class public final enum Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
.super Ljava/lang/Enum;
.source "TiCompositeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiCompositeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutArrangement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field public static final enum DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field public static final enum HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field public static final enum VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    aput-object v1, v0, v2

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    aput-object v1, v0, v3

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    aput-object v1, v0, v4

    sput-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->$VALUES:[Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    return-object v0
.end method

.method public static values()[Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->$VALUES:[Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-virtual {v0}, [Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    return-object v0
.end method
