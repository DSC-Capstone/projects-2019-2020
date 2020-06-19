.class Lorg/jaxen/saxpath/base/TokenTypes;
.super Ljava/lang/Object;
.source "TokenTypes.java"


# static fields
.field static final AND:I = 0x1b

.field static final AT:I = 0x11

.field static final COLON:I = 0x13

.field static final COMMA:I = 0x1e

.field static final DIV:I = 0xb

.field static final DOLLAR:I = 0x19

.field static final DOT:I = 0xe

.field static final DOT_DOT:I = 0xf

.field static final DOUBLE:I = 0x1d

.field static final DOUBLE_COLON:I = 0x14

.field static final DOUBLE_SLASH:I = 0xd

.field static final EOF:I = -0x1

.field static final EQUALS:I = 0x1

.field static final ERROR:I = -0x3

.field static final GREATER_THAN_OR_EQUALS_SIGN:I = 0x6

.field static final GREATER_THAN_SIGN:I = 0x5

.field static final IDENTIFIER:I = 0x10

.field static final LEFT_BRACKET:I = 0x15

.field static final LEFT_PAREN:I = 0x17

.field static final LESS_THAN_OR_EQUALS_SIGN:I = 0x4

.field static final LESS_THAN_SIGN:I = 0x3

.field static final LITERAL:I = 0x1a

.field static final MINUS:I = 0x8

.field static final MOD:I = 0xa

.field static final NOT_EQUALS:I = 0x2

.field static final OR:I = 0x1c

.field static final PIPE:I = 0x12

.field static final PLUS:I = 0x7

.field static final RIGHT_BRACKET:I = 0x16

.field static final RIGHT_PAREN:I = 0x18

.field static final SKIP:I = -0x2

.field static final SLASH:I = 0xc

.field static final STAR:I = 0x9


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTokenText(I)Ljava/lang/String;
    .locals 2
    .param p0, "tokenType"    # I

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    const-string v0, "(error)"

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "(skip)"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "(eof)"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "Unrecognized token type: 0"

    goto :goto_0

    .line 113
    :pswitch_4
    const-string v0, "="

    goto :goto_0

    .line 115
    :pswitch_5
    const-string v0, "!="

    goto :goto_0

    .line 117
    :pswitch_6
    const-string v0, "<"

    goto :goto_0

    .line 119
    :pswitch_7
    const-string v0, "<="

    goto :goto_0

    .line 121
    :pswitch_8
    const-string v0, ">"

    goto :goto_0

    .line 123
    :pswitch_9
    const-string v0, ">="

    goto :goto_0

    .line 125
    :pswitch_a
    const-string v0, "+"

    goto :goto_0

    .line 127
    :pswitch_b
    const-string v0, "-"

    goto :goto_0

    .line 129
    :pswitch_c
    const-string v0, "*"

    goto :goto_0

    .line 131
    :pswitch_d
    const-string v0, "div"

    goto :goto_0

    .line 133
    :pswitch_e
    const-string v0, "mod"

    goto :goto_0

    .line 135
    :pswitch_f
    const-string v0, "/"

    goto :goto_0

    .line 137
    :pswitch_10
    const-string v0, "//"

    goto :goto_0

    .line 139
    :pswitch_11
    const-string v0, "."

    goto :goto_0

    .line 141
    :pswitch_12
    const-string v0, ".."

    goto :goto_0

    .line 143
    :pswitch_13
    const-string v0, "(identifier)"

    goto :goto_0

    .line 145
    :pswitch_14
    const-string v0, "@"

    goto :goto_0

    .line 147
    :pswitch_15
    const-string v0, "|"

    goto :goto_0

    .line 149
    :pswitch_16
    const-string v0, ":"

    goto :goto_0

    .line 151
    :pswitch_17
    const-string v0, "::"

    goto :goto_0

    .line 153
    :pswitch_18
    const-string v0, "["

    goto :goto_0

    .line 155
    :pswitch_19
    const-string v0, "]"

    goto :goto_0

    .line 157
    :pswitch_1a
    const-string v0, "("

    goto :goto_0

    .line 159
    :pswitch_1b
    const-string v0, ")"

    goto :goto_0

    .line 161
    :pswitch_1c
    const-string v0, "$"

    goto :goto_0

    .line 163
    :pswitch_1d
    const-string v0, "(literal)"

    goto :goto_0

    .line 165
    :pswitch_1e
    const-string v0, "and"

    goto :goto_0

    .line 167
    :pswitch_1f
    const-string v0, "or"

    goto :goto_0

    .line 169
    :pswitch_20
    const-string v0, "(double)"

    goto :goto_0

    .line 171
    :pswitch_21
    const-string v0, ","

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x3
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
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
