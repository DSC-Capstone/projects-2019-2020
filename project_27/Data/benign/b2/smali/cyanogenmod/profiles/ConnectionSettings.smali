.class public final Lcyanogenmod/profiles/ConnectionSettings;
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
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lbor;

    invoke-direct {v0}, Lbor;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 163
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->a:I

    .line 174
    iput p2, p0, Lcyanogenmod/profiles/ConnectionSettings;->b:I

    .line 175
    iput-boolean p3, p0, Lcyanogenmod/profiles/ConnectionSettings;->c:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->d:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->a(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 4

    .prologue
    .line 355
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 356
    new-instance v1, Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 357
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connectionDescriptor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 358
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 359
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v2, "connectionId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcyanogenmod/profiles/ConnectionSettings;->a:I

    .line 370
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 362
    :cond_2
    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcyanogenmod/profiles/ConnectionSettings;->b:I

    goto :goto_1

    .line 364
    :cond_3
    const-string v2, "override"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcyanogenmod/profiles/ConnectionSettings;->c:Z

    goto :goto_1

    .line 367
    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 368
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of file while parsing connection settings"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_5
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->a:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 229
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 230
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 231
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 235
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcyanogenmod/profiles/ConnectionSettings;->b()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    .line 243
    :goto_1
    invoke-virtual {p0}, Lcyanogenmod/profiles/ConnectionSettings;->a()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 350
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 236
    :catch_0
    move-exception v3

    move-object v3, v4

    goto :goto_0

    :cond_1
    move v5, v7

    .line 240
    goto :goto_1

    .line 245
    :pswitch_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 246
    if-eq v5, v0, :cond_0

    .line 247
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move v1, v7

    .line 248
    :goto_3
    if-ge v1, v3, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile_data"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_2

    move v0, v6

    :goto_4
    invoke-static {v4, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 252
    aget v0, v0, v7

    invoke-virtual {v2, v0, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 248
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    move v0, v7

    .line 249
    goto :goto_4

    .line 257
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcyanogenmod/profiles/ConnectionSettings;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 260
    :pswitch_3
    const-string v1, "networkMode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 263
    :pswitch_4
    const-string v1, "networkMode"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 266
    :pswitch_5
    const-string v1, "networkMode"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 269
    :pswitch_6
    const-string v1, "networkMode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 272
    :pswitch_7
    const-string v1, "networkMode"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 281
    :pswitch_8
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 282
    if-eqz v5, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 284
    :cond_3
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_2

    .line 285
    :cond_4
    if-nez v5, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 287
    :cond_5
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_2

    .line 291
    :pswitch_9
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 292
    if-eq v0, v5, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 298
    :pswitch_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 299
    if-eq v5, v0, :cond_0

    .line 300
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_2

    .line 304
    :pswitch_b
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 305
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 306
    if-eq v2, v5, :cond_0

    .line 308
    if-eqz v5, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_7

    :cond_6
    const/16 v2, 0xd

    if-ne v0, v2, :cond_8

    .line 310
    :cond_7
    invoke-virtual {v1, v4, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 312
    :cond_8
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 316
    :pswitch_c
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 317
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    .line 318
    if-eq v2, v5, :cond_0

    .line 320
    if-eqz v5, :cond_9

    if-eq v0, v10, :cond_a

    :cond_9
    if-ne v0, v11, :cond_b

    .line 322
    :cond_a
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 324
    :cond_b
    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_2

    .line 328
    :pswitch_d
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 330
    if-eq v0, v5, :cond_0

    .line 331
    invoke-static {p1, v5}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 336
    :pswitch_e
    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 338
    if-eq v0, v11, :cond_c

    if-ne v0, v10, :cond_d

    :cond_c
    move v7, v6

    .line 340
    :cond_d
    if-eq v7, v5, :cond_0

    .line 341
    if-eqz v5, :cond_e

    .line 342
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 343
    :cond_e
    if-nez v5, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 344
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 428
    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->a:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->c:Z

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->b:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->d:Z

    .line 435
    :cond_0
    add-int v0, v4, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 436
    return-void

    :cond_1
    move v0, v2

    .line 430
    goto :goto_0

    :cond_2
    move v1, v2

    .line 432
    goto :goto_1
.end method

.method public a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 377
    const-string v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 383
    const-string v0, "</override>\n</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 401
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 405
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->d:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int/2addr v0, v4

    .line 412
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 415
    return-void

    :cond_0
    move v0, v2

    .line 406
    goto :goto_0

    :cond_1
    move v1, v2

    .line 408
    goto :goto_1
.end method
