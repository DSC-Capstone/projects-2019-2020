.class public Lcom/robocatapps/thermo/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fonts/Neutradt.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/d;->a:Landroid/graphics/Typeface;

    const-string v0, "fonts/NeutraText-DemiItalicAlt.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/d;->b:Landroid/graphics/Typeface;

    return-void
.end method
