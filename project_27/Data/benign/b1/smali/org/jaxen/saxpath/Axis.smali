.class public Lorg/jaxen/saxpath/Axis;
.super Ljava/lang/Object;
.source "Axis.java"


# static fields
.field public static final ANCESTOR:I = 0x4

.field public static final ANCESTOR_OR_SELF:I = 0xd

.field public static final ATTRIBUTE:I = 0x9

.field public static final CHILD:I = 0x1

.field public static final DESCENDANT:I = 0x2

.field public static final DESCENDANT_OR_SELF:I = 0xc

.field public static final FOLLOWING:I = 0x7

.field public static final FOLLOWING_SIBLING:I = 0x5

.field public static final INVALID_AXIS:I = 0x0

.field public static final NAMESPACE:I = 0xa

.field public static final PARENT:I = 0x3

.field public static final PRECEDING:I = 0x8

.field public static final PRECEDING_SIBLING:I = 0x6

.field public static final SELF:I = 0xb


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)I
    .locals 1
    .param p0, "axisName"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "child"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    .line 185
    :cond_0
    const-string v0, "descendant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x2

    goto :goto_0

    .line 190
    :cond_1
    const-string v0, "parent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    const/4 v0, 0x3

    goto :goto_0

    .line 195
    :cond_2
    const-string v0, "ancestor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    const/4 v0, 0x4

    goto :goto_0

    .line 200
    :cond_3
    const-string v0, "following-sibling"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    const/4 v0, 0x5

    goto :goto_0

    .line 205
    :cond_4
    const-string v0, "preceding-sibling"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    const/4 v0, 0x6

    goto :goto_0

    .line 210
    :cond_5
    const-string v0, "following"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    const/4 v0, 0x7

    goto :goto_0

    .line 215
    :cond_6
    const-string v0, "preceding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    const/16 v0, 0x8

    goto :goto_0

    .line 220
    :cond_7
    const-string v0, "attribute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    const/16 v0, 0x9

    goto :goto_0

    .line 225
    :cond_8
    const-string v0, "namespace"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 227
    const/16 v0, 0xa

    goto :goto_0

    .line 230
    :cond_9
    const-string v0, "self"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 232
    const/16 v0, 0xb

    goto :goto_0

    .line 235
    :cond_a
    const-string v0, "descendant-or-self"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 237
    const/16 v0, 0xc

    goto :goto_0

    .line 240
    :cond_b
    const-string v0, "ancestor-or-self"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 242
    const/16 v0, 0xd

    goto :goto_0

    .line 245
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookup(I)Ljava/lang/String;
    .locals 2
    .param p0, "axisNum"    # I

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 164
    new-instance v0, Lorg/jaxen/JaxenRuntimeException;

    const-string v1, "Illegal Axis Number"

    invoke-direct {v0, v1}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    const-string v0, "child"

    .line 161
    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    const-string v0, "descendant"

    goto :goto_0

    .line 131
    :pswitch_2
    const-string v0, "parent"

    goto :goto_0

    .line 134
    :pswitch_3
    const-string v0, "ancestor"

    goto :goto_0

    .line 137
    :pswitch_4
    const-string v0, "following-sibling"

    goto :goto_0

    .line 140
    :pswitch_5
    const-string v0, "preceding-sibling"

    goto :goto_0

    .line 143
    :pswitch_6
    const-string v0, "following"

    goto :goto_0

    .line 146
    :pswitch_7
    const-string v0, "preceding"

    goto :goto_0

    .line 149
    :pswitch_8
    const-string v0, "attribute"

    goto :goto_0

    .line 152
    :pswitch_9
    const-string v0, "namespace"

    goto :goto_0

    .line 155
    :pswitch_a
    const-string v0, "self"

    goto :goto_0

    .line 158
    :pswitch_b
    const-string v0, "descendant-or-self"

    goto :goto_0

    .line 161
    :pswitch_c
    const-string v0, "ancestor-or-self"

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
