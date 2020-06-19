.class public Lcom/robocatapps/thermo/App;
.super Landroid/app/Application;


# static fields
.field private static final a:Landroid/media/SoundPool;

.field private static final b:Landroid/util/SparseIntArray;

.field private static c:Landroid/content/SharedPreferences;

.field private static d:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private static e:Lcom/robocatapps/thermo/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/robocatapps/thermo/App;->a:Landroid/media/SoundPool;

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/robocatapps/thermo/App;->b:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/robocatapps/thermo/c;

    invoke-direct {v0}, Lcom/robocatapps/thermo/c;-><init>()V

    sput-object v0, Lcom/robocatapps/thermo/App;->d:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Lcom/robocatapps/thermo/d;
    .locals 2

    sget-object v0, Lcom/robocatapps/thermo/App;->e:Lcom/robocatapps/thermo/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "App.getFonts() called prior to App creation."

    invoke-static {v0, v1}, Lcom/google/a/a/j;->b(ZLjava/lang/Object;)V

    sget-object v0, Lcom/robocatapps/thermo/App;->e:Lcom/robocatapps/thermo/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {}, Lcom/robocatapps/thermo/App;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/robocatapps/thermo/App;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_1

    sget-object v0, Lcom/robocatapps/thermo/App;->a:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sget-object v1, Lcom/robocatapps/thermo/App;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/robocatapps/thermo/App;->a:Landroid/media/SoundPool;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcom/robocatapps/thermo/App;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "App.getPreferences() called prior to App creation"

    invoke-static {v0, v1}, Lcom/google/a/a/j;->b(ZLjava/lang/Object;)V

    sget-object v0, Lcom/robocatapps/thermo/App;->c:Landroid/content/SharedPreferences;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.robocat.thermo.settings.play_sounds"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/robocatapps/thermo/d;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/robocatapps/thermo/d;-><init>(Landroid/content/res/AssetManager;)V

    sput-object v0, Lcom/robocatapps/thermo/App;->e:Lcom/robocatapps/thermo/d;

    sget-object v0, Lcom/robocatapps/thermo/App;->a:Landroid/media/SoundPool;

    sget-object v1, Lcom/robocatapps/thermo/App;->d:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const-string v0, "com.robocat.thermo.settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/robocatapps/thermo/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/App;->c:Landroid/content/SharedPreferences;

    return-void
.end method
