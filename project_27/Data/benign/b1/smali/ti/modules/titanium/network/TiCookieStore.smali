.class public Lti/modules/titanium/network/TiCookieStore;
.super Ljava/lang/Object;
.source "TiCookieStore.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# static fields
.field private static final COOKIE_PREFERENCES:Ljava/lang/String; = "TiCookiePreferences"

.field private static final COOKIE_PREFIX:Ljava/lang/String; = "ti_cookie_"

.field private static final LCAT:Ljava/lang/String; = "TiCookieStore"

.field private static _instance:Lti/modules/titanium/network/TiCookieStore;


# instance fields
.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field private final pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v6, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v6, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 51
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    const-string v7, "TiCookiePreferences"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/TiApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/network/TiCookieStore;->pref:Landroid/content/SharedPreferences;

    .line 53
    iget-object v7, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    monitor-enter v7

    .line 55
    :try_start_0
    iget-object v6, p0, Lti/modules/titanium/network/TiCookieStore;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 56
    .local v0, "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 58
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 59
    .local v4, "key":Ljava/lang/String;
    const-string v6, "ti_cookie_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "encodedCookie":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 62
    invoke-direct {p0, v2}, Lti/modules/titanium/network/TiCookieStore;->decodeCookie(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    .line 63
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    if-eqz v1, :cond_0

    .line 64
    iget-object v6, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v6, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 70
    .end local v0    # "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v2    # "encodedCookie":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "allPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    return-void
.end method

.method private decodeCookie(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 10
    .param p1, "cookieString"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lti/modules/titanium/network/TiCookieStore;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 149
    .local v2, "cookieBytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 150
    .local v4, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v0, 0x0

    .line 152
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :try_start_0
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 153
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 154
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 155
    .local v7, "value":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v1, v5, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .local v1, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 159
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 160
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 161
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 168
    .end local v1    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v7    # "value":Ljava/lang/String;
    .restart local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const-string v8, "TiCookieStore"

    const-string v9, "Failed to decode cookie"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    .end local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .restart local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    goto :goto_1
.end method

.method private encodeCookie(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 174
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    .local v1, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 179
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 180
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 181
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 182
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 183
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 184
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 185
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .end local v1    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TiCookieStore"

    const-string v4, "Failed to encode cookie"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCookieNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v4, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "cookieNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 140
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_0
    return-object v1
.end method

.method public static getInstance()Lti/modules/titanium/network/TiCookieStore;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lti/modules/titanium/network/TiCookieStore;->_instance:Lti/modules/titanium/network/TiCookieStore;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lti/modules/titanium/network/TiCookieStore;

    invoke-direct {v0}, Lti/modules/titanium/network/TiCookieStore;-><init>()V

    sput-object v0, Lti/modules/titanium/network/TiCookieStore;->_instance:Lti/modules/titanium/network/TiCookieStore;

    .line 45
    :cond_0
    sget-object v0, Lti/modules/titanium/network/TiCookieStore;->_instance:Lti/modules/titanium/network/TiCookieStore;

    return-object v0
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lti/modules/titanium/network/TiCookieStore;->encodeCookie(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "encodedCookie":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/network/TiCookieStore;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, "prefWriter":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    monitor-enter v3

    .line 80
    if-nez v0, :cond_0

    .line 81
    :try_start_0
    monitor-exit v3

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v2, p1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ti_cookie_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 93
    iget-object v3, p0, Lti/modules/titanium/network/TiCookieStore;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 95
    .local v2, "prefWriter":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    monitor-enter v4

    .line 96
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/network/TiCookieStore;->getCookieNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ti_cookie_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 99
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    iget-object v3, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 101
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 107
    iget-object v6, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    monitor-enter v6

    .line 108
    :try_start_0
    iget-object v5, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v5}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    iget-object v5, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v5, p1}, Lorg/apache/http/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    move-result v0

    .line 111
    .local v0, "clearedExpired":Z
    if-eqz v0, :cond_2

    .line 112
    iget-object v5, p0, Lti/modules/titanium/network/TiCookieStore;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 114
    .local v4, "prefWriter":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 115
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ti_cookie_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 123
    .end local v0    # "clearedExpired":Z
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "prefWriter":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 119
    .restart local v0    # "clearedExpired":Z
    .restart local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "prefWriter":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "prefWriter":Landroid/content/SharedPreferences$Editor;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/network/TiCookieStore;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 198
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 199
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 200
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 199
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 202
    :cond_0
    return-object v0
.end method
