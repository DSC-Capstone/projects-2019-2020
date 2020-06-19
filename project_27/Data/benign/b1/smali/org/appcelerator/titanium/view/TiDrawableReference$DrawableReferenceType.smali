.class public final enum Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
.super Ljava/lang/Enum;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiDrawableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawableReferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field public static final enum BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field public static final enum FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field public static final enum NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field public static final enum RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field public static final enum URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    const-string v1, "RESOURCE_ID"

    invoke-direct {v0, v1, v4}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    const-string v1, "BLOB"

    invoke-direct {v0, v1, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->$VALUES:[Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    return-object v0
.end method

.method public static values()[Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->$VALUES:[Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-virtual {v0}, [Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    return-object v0
.end method
