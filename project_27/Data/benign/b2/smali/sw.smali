.class public Lsw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/graphics/Rect;

.field private C:Z

.field private D:I

.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/ListAdapter;

.field private f:Lta;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View;

.field private p:I

.field private q:Landroid/database/DataSetObserver;

.field private r:Landroid/view/View;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/widget/AdapterView$OnItemClickListener;

.field private u:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final v:Lti;

.field private final w:Lth;

.field private final x:Ltg;

.field private final y:Lte;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lsw;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    sget v1, Lnb;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Lsw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lsw;->g:I

    .line 93
    iput v0, p0, Lsw;->h:I

    .line 98
    iput v2, p0, Lsw;->l:I

    .line 100
    iput-boolean v2, p0, Lsw;->m:Z

    .line 101
    iput-boolean v2, p0, Lsw;->n:Z

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Lsw;->b:I

    .line 105
    iput v2, p0, Lsw;->p:I

    .line 116
    new-instance v0, Lti;

    invoke-direct {v0, p0, v1}, Lti;-><init>(Lsw;Lsx;)V

    iput-object v0, p0, Lsw;->v:Lti;

    .line 117
    new-instance v0, Lth;

    invoke-direct {v0, p0, v1}, Lth;-><init>(Lsw;Lsx;)V

    iput-object v0, p0, Lsw;->w:Lth;

    .line 118
    new-instance v0, Ltg;

    invoke-direct {v0, p0, v1}, Ltg;-><init>(Lsw;Lsx;)V

    iput-object v0, p0, Lsw;->x:Ltg;

    .line 119
    new-instance v0, Lte;

    invoke-direct {v0, p0, v1}, Lte;-><init>(Lsw;Lsx;)V

    iput-object v0, p0, Lsw;->y:Lte;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsw;->A:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lsw;->B:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Lsw;->c:Landroid/content/Context;

    .line 230
    sget-object v0, Lnl;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Lnl;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lsw;->i:I

    .line 234
    sget v1, Lnl;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lsw;->j:I

    .line 236
    iget v1, p0, Lsw;->j:I

    if-eqz v1, :cond_0

    .line 237
    iput-boolean v3, p0, Lsw;->k:Z

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v0, Lqj;

    invoke-direct {v0, p1, p2, p3}, Lqj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    .line 242
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v0, p0, Lsw;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-static {v0}, Lcx;->a(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lsw;->D:I

    .line 247
    return-void
.end method

.method static synthetic a(Lsw;)Lta;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lsw;->f:Lta;

    return-object v0
.end method

.method static synthetic b(Lsw;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    .line 1771
    sget-object v0, Lsw;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1773
    :try_start_0
    sget-object v0, Lsw;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lsw;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lsw;)Lti;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lsw;->v:Lti;

    return-object v0
.end method

.method static synthetic d(Lsw;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lsw;->A:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lsw;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lsw;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 690
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 691
    check-cast v0, Landroid/view/ViewGroup;

    .line 692
    iget-object v1, p0, Lsw;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_0
    return-void
.end method

.method private i()I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1049
    .line 1051
    iget-object v0, p0, Lsw;->f:Lta;

    if-nez v0, :cond_5

    .line 1052
    iget-object v5, p0, Lsw;->c:Landroid/content/Context;

    .line 1060
    new-instance v0, Lsy;

    invoke-direct {v0, p0}, Lsy;-><init>(Lsw;)V

    iput-object v0, p0, Lsw;->z:Ljava/lang/Runnable;

    .line 1070
    new-instance v4, Lta;

    iget-boolean v0, p0, Lsw;->C:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {v4, v5, v0}, Lta;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lsw;->f:Lta;

    .line 1071
    iget-object v0, p0, Lsw;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lsw;->f:Lta;

    iget-object v4, p0, Lsw;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lta;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lsw;->f:Lta;

    iget-object v4, p0, Lsw;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Lta;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1075
    iget-object v0, p0, Lsw;->f:Lta;

    iget-object v4, p0, Lsw;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Lta;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1076
    iget-object v0, p0, Lsw;->f:Lta;

    invoke-virtual {v0, v1}, Lta;->setFocusable(Z)V

    .line 1077
    iget-object v0, p0, Lsw;->f:Lta;

    invoke-virtual {v0, v1}, Lta;->setFocusableInTouchMode(Z)V

    .line 1078
    iget-object v0, p0, Lsw;->f:Lta;

    new-instance v4, Lsz;

    invoke-direct {v4, p0}, Lsz;-><init>(Lsw;)V

    invoke-virtual {v0, v4}, Lta;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1094
    iget-object v0, p0, Lsw;->f:Lta;

    iget-object v4, p0, Lsw;->x:Ltg;

    invoke-virtual {v0, v4}, Lta;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1096
    iget-object v0, p0, Lsw;->u:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lsw;->f:Lta;

    iget-object v4, p0, Lsw;->u:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Lta;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1100
    :cond_1
    iget-object v0, p0, Lsw;->f:Lta;

    .line 1102
    iget-object v6, p0, Lsw;->o:Landroid/view/View;

    .line 1103
    if-eqz v6, :cond_b

    .line 1106
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1109
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1113
    iget v5, p0, Lsw;->p:I

    packed-switch v5, :pswitch_data_0

    .line 1125
    const-string v0, "ListPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lsw;->p:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_1
    iget v0, p0, Lsw;->h:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1133
    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1135
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    move-object v1, v4

    .line 1142
    :goto_2
    iget-object v4, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    .line 1157
    :goto_3
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1158
    if-eqz v0, :cond_6

    .line 1159
    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1160
    iget-object v0, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 1164
    iget-boolean v1, p0, Lsw;->k:Z

    if-nez v1, :cond_9

    .line 1165
    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, p0, Lsw;->j:I

    move v7, v0

    .line 1172
    :goto_4
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1174
    :cond_2
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lsw;->d()Landroid/view/View;

    move-result-object v1

    iget v4, p0, Lsw;->j:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    .line 1177
    iget-boolean v0, p0, Lsw;->m:Z

    if-nez v0, :cond_3

    iget v0, p0, Lsw;->g:I

    if-ne v0, v3, :cond_7

    .line 1178
    :cond_3
    add-int v0, v4, v7

    .line 1206
    :goto_5
    return v0

    :cond_4
    move v0, v2

    .line 1070
    goto/16 :goto_0

    .line 1115
    :pswitch_0
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1120
    :pswitch_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1121
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1144
    :cond_5
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1145
    iget-object v1, p0, Lsw;->o:Landroid/view/View;

    .line 1146
    if-eqz v1, :cond_a

    .line 1147
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    move v6, v0

    goto :goto_3

    .line 1168
    :cond_6
    iget-object v0, p0, Lsw;->B:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    goto :goto_4

    .line 1182
    :cond_7
    iget v0, p0, Lsw;->h:I

    packed-switch v0, :pswitch_data_1

    .line 1196
    iget v0, p0, Lsw;->h:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1200
    :goto_6
    iget-object v0, p0, Lsw;->f:Lta;

    sub-int/2addr v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lta;->a(IIIII)I

    move-result v0

    .line 1204
    if-lez v0, :cond_8

    add-int/2addr v6, v7

    .line 1206
    :cond_8
    add-int/2addr v0, v6

    goto :goto_5

    .line 1184
    :pswitch_2
    iget-object v0, p0, Lsw;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 1190
    :pswitch_3
    iget-object v0, p0, Lsw;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    :cond_9
    move v7, v0

    goto/16 :goto_4

    :cond_a
    move v6, v2

    goto/16 :goto_3

    :cond_b
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1182
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 672
    invoke-direct {p0}, Lsw;->h()V

    .line 673
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    iput-object v1, p0, Lsw;->f:Lta;

    .line 675
    iget-object v0, p0, Lsw;->A:Landroid/os/Handler;

    iget-object v1, p0, Lsw;->v:Lti;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 281
    iput p1, p0, Lsw;->p:I

    .line 282
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lsw;->r:Landroid/view/View;

    .line 436
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lsw;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 542
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lsw;->q:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Ltf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltf;-><init>(Lsw;Lsx;)V

    iput-object v0, p0, Lsw;->q:Landroid/database/DataSetObserver;

    .line 261
    :cond_0
    :goto_0
    iput-object p1, p0, Lsw;->e:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Lsw;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lsw;->q:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_1
    iget-object v0, p0, Lsw;->f:Lta;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lsw;->f:Lta;

    iget-object v1, p0, Lsw;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lta;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Lsw;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lsw;->e:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lsw;->q:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 304
    iput-boolean p1, p0, Lsw;->C:Z

    .line 305
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 481
    iput p1, p0, Lsw;->l:I

    .line 482
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 584
    invoke-direct {p0}, Lsw;->i()I

    move-result v5

    .line 589
    invoke-virtual {p0}, Lsw;->f()Z

    move-result v2

    .line 591
    iget-object v4, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 592
    iget v4, p0, Lsw;->h:I

    if-ne v4, v0, :cond_3

    move v4, v0

    .line 602
    :goto_0
    iget v6, p0, Lsw;->g:I

    if-ne v6, v0, :cond_9

    .line 605
    if-eqz v2, :cond_5

    .line 606
    :goto_1
    if-eqz v2, :cond_7

    .line 607
    iget-object v2, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget v6, p0, Lsw;->h:I

    if-ne v6, v0, :cond_6

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 622
    :cond_0
    :goto_3
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lsw;->n:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lsw;->m:Z

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lsw;->d()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lsw;->i:I

    iget v3, p0, Lsw;->j:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 665
    :cond_2
    :goto_4
    return-void

    .line 596
    :cond_3
    iget v4, p0, Lsw;->h:I

    if-ne v4, v7, :cond_4

    .line 597
    invoke-virtual {p0}, Lsw;->d()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 599
    :cond_4
    iget v4, p0, Lsw;->h:I

    goto :goto_0

    :cond_5
    move v5, v0

    .line 605
    goto :goto_1

    :cond_6
    move v0, v1

    .line 607
    goto :goto_2

    .line 611
    :cond_7
    iget-object v6, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget v2, p0, Lsw;->h:I

    if-ne v2, v0, :cond_8

    move v2, v0

    :goto_5
    invoke-virtual {v6, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_5

    .line 616
    :cond_9
    iget v0, p0, Lsw;->g:I

    if-eq v0, v7, :cond_0

    .line 619
    iget v5, p0, Lsw;->g:I

    goto :goto_3

    .line 627
    :cond_a
    iget v2, p0, Lsw;->h:I

    if-ne v2, v0, :cond_d

    move v2, v0

    .line 637
    :goto_6
    iget v4, p0, Lsw;->g:I

    if-ne v4, v0, :cond_f

    move v4, v0

    .line 647
    :goto_7
    iget-object v5, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 648
    invoke-direct {p0, v3}, Lsw;->b(Z)V

    .line 652
    iget-object v2, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Lsw;->n:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lsw;->m:Z

    if-nez v4, :cond_11

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v1, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lsw;->w:Lth;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v1, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lsw;->d()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lsw;->i:I

    iget v4, p0, Lsw;->j:I

    iget v5, p0, Lsw;->l:I

    invoke-static {v1, v2, v3, v4, v5}, Llp;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v1, p0, Lsw;->f:Lta;

    invoke-virtual {v1, v0}, Lta;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Lsw;->C:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsw;->f:Lta;

    invoke-virtual {v0}, Lta;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 659
    :cond_b
    invoke-virtual {p0}, Lsw;->e()V

    .line 661
    :cond_c
    iget-boolean v0, p0, Lsw;->C:Z

    if-nez v0, :cond_2

    .line 662
    iget-object v0, p0, Lsw;->A:Landroid/os/Handler;

    iget-object v1, p0, Lsw;->y:Lte;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 630
    :cond_d
    iget v2, p0, Lsw;->h:I

    if-ne v2, v7, :cond_e

    .line 631
    iget-object v2, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lsw;->d()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_6

    .line 633
    :cond_e
    iget-object v2, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget v4, p0, Lsw;->h:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_6

    .line 640
    :cond_f
    iget v4, p0, Lsw;->g:I

    if-ne v4, v7, :cond_10

    .line 641
    iget-object v4, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_7

    .line 643
    :cond_10
    iget-object v4, p0, Lsw;->d:Landroid/widget/PopupWindow;

    iget v5, p0, Lsw;->g:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_7

    :cond_11
    move v3, v1

    .line 652
    goto :goto_8
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 498
    iput p1, p0, Lsw;->h:I

    .line 499
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lsw;->r:Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lsw;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lsw;->h:I

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0, p1}, Lsw;->c(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lsw;->f:Lta;

    .line 748
    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lta;->a(Lta;Z)Z

    .line 752
    invoke-virtual {v0}, Lta;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 711
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lsw;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lsw;->f:Lta;

    return-object v0
.end method
