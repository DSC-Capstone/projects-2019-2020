.class public final Lcyanogenmod/profiles/RingModeSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/RingModeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lbot;

    invoke-direct {v0}, Lbot;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "normal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/RingModeSettings;->a(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    .line 85
    iput-boolean p2, p0, Lcyanogenmod/profiles/RingModeSettings;->b:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->c:Z

    .line 87
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/RingModeSettings;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 146
    new-instance v1, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v1}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    .line 147
    :goto_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ringModeDescriptor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 149
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    .line 159
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 153
    :cond_3
    const-string v2, "override"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcyanogenmod/profiles/RingModeSettings;->b:Z

    goto :goto_1

    .line 156
    :cond_4
    if-ne v0, v4, :cond_2

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of file while parsing ring mode settings"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_5
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x2

    .line 132
    iget-object v1, p0, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    const-string v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 138
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 140
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    const-string v2, "vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 214
    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->b:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcyanogenmod/profiles/RingModeSettings;->c:Z

    .line 220
    :cond_0
    add-int v0, v4, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 221
    return-void

    :cond_1
    move v0, v2

    .line 215
    goto :goto_0

    :cond_2
    move v1, v2

    .line 217
    goto :goto_1
.end method

.method public a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 166
    const-string v0, "<ringModeDescriptor>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->b:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "</override>\n</ringModeDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 188
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 192
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->c:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int/2addr v0, v4

    .line 198
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 192
    goto :goto_0

    :cond_1
    move v1, v2

    .line 194
    goto :goto_1
.end method
