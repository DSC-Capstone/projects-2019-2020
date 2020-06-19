.class public Lti/admob/View;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "View.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field private static final LCAT:Ljava/lang/String; = "AdMobView"


# instance fields
.field adView:Lcom/google/ads/AdView;

.field prop_color_bg:Ljava/lang/String;

.field prop_color_bg_top:Ljava/lang/String;

.field prop_color_border:Ljava/lang/String;

.field prop_color_link:Ljava/lang/String;

.field prop_color_text:Ljava/lang/String;

.field prop_color_url:Ljava/lang/String;

.field prop_left:I

.field prop_right:I

.field prop_top:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 39
    const-string v0, "AdMobView"

    const-string v1, "Creating an adMob ad view"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdmobModule.PUBLISHER_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PUBLISHER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method private convertColorProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 178
    const-string v0, "white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string p1, "FFFFFF"

    .line 180
    :cond_0
    const-string v0, "red"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string p1, "FF0000"

    .line 182
    :cond_1
    const-string v0, "blue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const-string p1, "0000FF"

    .line 184
    :cond_2
    const-string v0, "green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const-string p1, "008000"

    .line 186
    :cond_3
    const-string v0, "yellow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    const-string p1, "FFFF00"

    .line 188
    :cond_4
    const-string v0, "black"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    const-string p1, "000000"

    .line 190
    :cond_5
    return-object p1
.end method

.method private createAdRequestProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lti/admob/View;->prop_color_bg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "AdMobView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color_bg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/admob/View;->prop_color_bg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v1, "color_bg"

    iget-object v2, p0, Lti/admob/View;->prop_color_bg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    iget-object v1, p0, Lti/admob/View;->prop_color_bg_top:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 163
    const-string v1, "color_bg_top"

    iget-object v2, p0, Lti/admob/View;->prop_color_bg_top:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    iget-object v1, p0, Lti/admob/View;->prop_color_border:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 165
    const-string v1, "color_border"

    iget-object v2, p0, Lti/admob/View;->prop_color_border:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    iget-object v1, p0, Lti/admob/View;->prop_color_text:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 167
    const-string v1, "color_text"

    iget-object v2, p0, Lti/admob/View;->prop_color_text:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_3
    iget-object v1, p0, Lti/admob/View;->prop_color_link:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 169
    const-string v1, "color_link"

    iget-object v2, p0, Lti/admob/View;->prop_color_link:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_4
    iget-object v1, p0, Lti/admob/View;->prop_color_url:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 171
    const-string v1, "color_url"

    iget-object v2, p0, Lti/admob/View;->prop_color_url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_5
    return-object v0
.end method

.method private createAdView()V
    .locals 5

    .prologue
    .line 45
    const-string v0, "AdMobView"

    const-string v1, "createAdView()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Lti/admob/View;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    sget-object v3, Lti/admob/AdmobModule;->PUBLISHER_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lti/admob/View;->adView:Lcom/google/ads/AdView;

    .line 48
    sget-object v0, Lti/admob/AdmobModule;->TESTING:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lti/admob/View;->loadAd(Ljava/lang/Boolean;)V

    .line 50
    iget-object v0, p0, Lti/admob/View;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 51
    iget-object v0, p0, Lti/admob/View;->adView:Lcom/google/ads/AdView;

    iget v1, p0, Lti/admob/View;->prop_left:I

    iget v2, p0, Lti/admob/View;->prop_top:I

    iget v3, p0, Lti/admob/View;->prop_right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/AdView;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lti/admob/View;->adView:Lcom/google/ads/AdView;

    invoke-virtual {p0, v0}, Lti/admob/View;->setNativeView(Landroid/view/View;)V

    .line 56
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lti/admob/View;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 125
    return-void
.end method

.method public loadAd(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "testing"    # Ljava/lang/Boolean;

    .prologue
    .line 60
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 61
    .local v0, "adRequest":Lcom/google/ads/AdRequest;
    const-string v2, "AdMobView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAd(Boolean testing) -- testing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/ads/AdRequest;->setTesting(Z)V

    .line 63
    invoke-direct {p0}, Lti/admob/View;->createAdRequestProperties()Ljava/util/Map;

    move-result-object v1

    .line 64
    .local v1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    const-string v2, "AdMobView"

    const-string v3, "extras.size() > 0 -- set ad properties"

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setExtras(Ljava/util/Map;)V

    .line 68
    :cond_0
    iget-object v2, p0, Lti/admob/View;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 69
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 203
    const-string v0, "AdMobView"

    const-string v1, "onDismissScreen()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "e"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 147
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToReceiveAd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lti/admob/View;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "ad_not_received"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 195
    const-string v0, "AdMobView"

    const-string v1, "onLeaveApplication()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 199
    const-string v0, "AdMobView"

    const-string v1, "onPresentScreen()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 142
    const-string v0, "AdMobView"

    const-string v1, "onReceiveAd()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lti/admob/View;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "ad_received"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 74
    const-string v0, "AdMobView"

    const-string v1, "process properties"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has publisherId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "publisherId"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lti/admob/AdmobModule;->PUBLISHER_ID:Ljava/lang/String;

    .line 79
    :cond_0
    const-string v0, "testing"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has testing param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "testing"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "testing"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lti/admob/AdmobModule;->TESTING:Ljava/lang/Boolean;

    .line 83
    :cond_1
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_BG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_bg:Ljava/lang/String;

    .line 87
    :cond_2
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG_TOP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_BG_TOP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG_TOP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BG_TOP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_bg_top:Ljava/lang/String;

    .line 91
    :cond_3
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BORDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_BORDER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_BORDER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_BORDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_border:Ljava/lang/String;

    .line 95
    :cond_4
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_TEXT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_text:Ljava/lang/String;

    .line 99
    :cond_5
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_LINK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_link:Ljava/lang/String;

    .line 103
    :cond_6
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_URL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_url:Ljava/lang/String;

    .line 109
    :cond_7
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT_DEPRECATED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 110
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_TEXT_DEPRECATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT_DEPRECATED:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_TEXT_DEPRECATED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_text:Ljava/lang/String;

    .line 113
    :cond_8
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK_DEPRECATED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    const-string v0, "AdMobView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has PROPERTY_COLOR_LINK_DEPRECATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK_DEPRECATED:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lti/admob/AdmobModule;->PROPERTY_COLOR_LINK_DEPRECATED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/admob/View;->convertColorProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/admob/View;->prop_color_link:Ljava/lang/String;

    .line 119
    :cond_9
    invoke-direct {p0}, Lti/admob/View;->createAdView()V

    .line 120
    return-void
.end method

.method public requestAd()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "AdMobView"

    const-string v1, "requestAd()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v0, Lti/admob/AdmobModule;->TESTING:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lti/admob/View;->loadAd(Ljava/lang/Boolean;)V

    .line 132
    return-void
.end method

.method public requestTestAd()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "AdMobView"

    const-string v1, "requestTestAd()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/admob/View;->loadAd(Ljava/lang/Boolean;)V

    .line 138
    return-void
.end method
