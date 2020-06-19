.class public Lno;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lno;->a:[Ljava/lang/Class;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lno;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lno;->d:[Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lno;->c:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 112
    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lno;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 118
    iget-object v0, p0, Lno;->d:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 120
    const/4 v0, -0x1

    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 122
    const-string v0, "android.widget."

    invoke-direct {p0, p2, v0}, Lno;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    iget-object v2, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 133
    iget-object v2, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v2, v4

    :goto_0
    return-object v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p2, v0}, Lno;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 132
    iget-object v2, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 133
    iget-object v2, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v2, v4

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 132
    iget-object v0, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 133
    iget-object v0, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v0, v4

    move-object v0, v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 133
    iget-object v2, p0, Lno;->d:[Ljava/lang/Object;

    aput-object v1, v2, v4

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lno;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 142
    if-nez v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lno;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    sget-object v1, Lno;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 148
    sget-object v1, Lno;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 151
    iget-object v1, p0, Lno;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    .line 144
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 155
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 66
    .line 70
    if-eqz p5, :cond_3

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    :goto_0
    if-eqz p6, :cond_0

    .line 75
    invoke-static {v0, p4, v2, v2}, Lrr;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v0

    .line 79
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 102
    if-eq p3, v0, :cond_2

    .line 105
    invoke-direct {p0, v0, p2, p4}, Lno;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 108
    :goto_2
    return-object v0

    .line 79
    :sswitch_0
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    .line 81
    :pswitch_0
    new-instance v1, Lso;

    invoke-direct {v1, v0, p4}, Lso;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto :goto_2

    .line 83
    :pswitch_1
    new-instance v1, Lss;

    invoke-direct {v1, v0, p4}, Lss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto :goto_2

    .line 85
    :pswitch_2
    new-instance v1, Lsm;

    invoke-direct {v1, v0, p4}, Lsm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto :goto_2

    .line 87
    :pswitch_3
    new-instance v1, Lsq;

    invoke-direct {v1, v0, p4}, Lsq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 89
    :pswitch_4
    new-instance v1, Lsn;

    invoke-direct {v1, v0, p4}, Lsn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 91
    :pswitch_5
    new-instance v1, Lsk;

    invoke-direct {v1, v0, p4}, Lsk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 93
    :pswitch_6
    new-instance v1, Lsp;

    invoke-direct {v1, v0, p4}, Lsp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 95
    :pswitch_7
    new-instance v1, Lsr;

    invoke-direct {v1, v0, p4}, Lsr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 97
    :pswitch_8
    new-instance v1, Lsl;

    invoke-direct {v1, v0, p4}, Lsl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 99
    :pswitch_9
    new-instance v1, Lst;

    invoke-direct {v1, v0, p4}, Lst;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 108
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    move-object v0, p3

    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_7
        -0x56c015e7 -> :sswitch_4
        -0x503aa7ad -> :sswitch_6
        -0x37f7066e -> :sswitch_9
        -0x1440b607 -> :sswitch_1
        0x2e46a6ed -> :sswitch_3
        0x5445f9ba -> :sswitch_5
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_0
        0x77471352 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
