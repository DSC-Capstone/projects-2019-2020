.class public Lbe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lbg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 176
    new-instance v0, Lbk;

    invoke-direct {v0}, Lbk;-><init>()V

    sput-object v0, Lbe;->a:Lbg;

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 178
    new-instance v0, Lbj;

    invoke-direct {v0}, Lbj;-><init>()V

    sput-object v0, Lbe;->a:Lbg;

    goto :goto_0

    .line 179
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 180
    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    sput-object v0, Lbe;->a:Lbg;

    goto :goto_0

    .line 181
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 182
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    sput-object v0, Lbe;->a:Lbg;

    goto :goto_0

    .line 184
    :cond_3
    new-instance v0, Lbf;

    invoke-direct {v0}, Lbf;-><init>()V

    sput-object v0, Lbe;->a:Lbg;

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0}, Lbg;->a(Landroid/graphics/drawable/Drawable;)V

    .line 198
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0, p1, p2}, Lbg;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 240
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0, p1}, Lbg;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    .prologue
    .line 250
    sget-object v0, Lbe;->a:Lbg;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lbg;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 251
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0, p1}, Lbg;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 271
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0, p1}, Lbg;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 281
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0, p1}, Lbg;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 214
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0}, Lbg;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lbe;->a:Lbg;

    invoke-interface {v0, p0}, Lbg;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
