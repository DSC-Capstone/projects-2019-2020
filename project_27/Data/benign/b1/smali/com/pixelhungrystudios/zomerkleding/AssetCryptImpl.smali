.class public Lcom/pixelhungrystudios/zomerkleding/AssetCryptImpl;
.super Ljava/lang/Object;
.source "AssetCryptImpl.java"

# interfaces
.implements Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;


# static fields
.field private static assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/pixelhungrystudios/zomerkleding/AssetCryptImpl;->initAssets()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/pixelhungrystudios/zomerkleding/AssetCryptImpl;->assets:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initAssets()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    const-string v1, "ui/AdMob.js"

    const-string v2, "ZnVuY3Rpb24gQWRNb2IoKXtUaS5pbmNsdWRlKCIvZ2xvYmFsLmpzIik7dmFyIGM9VGkuVUkuY3JlYXRlVmlldyh7d2lkdGg6IjMyMGRwIixoZWlnaHQ6IjUwZHAiLGJvdHRvbTowLHpJbmRleDo5OTk5fSksYT1yZXF1aXJlKCJ0aS5hZG1vYiIpLGI9IiIsYT1hLmNyZWF0ZVZpZXcoe3B1Ymxpc2hlcklkOmlzaVBhZD8iYTE0ZjcyZDk5ZGFhYjdmIjppc0lPUz8iYTE0ZjcyZDkxN2U1OGQwIjoiYTE0ZjcwODAwNGM5MGQyIix0ZXN0aW5nOiExLGJvdHRvbTowfSksYj1UaS5VSS5jcmVhdGVWaWV3KHt3aWR0aDoiMzIwZHAiLGhlaWdodDoiNTBkcCIsYm90dG9tOjB9KTtiLmFkZChhKTtjLmFkZChiKTtyZXR1cm4gY31tb2R1bGUuZXhwb3J0cz1BZE1vYjsK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "ui/ApplicationWindow.js"

    const-string v2, "ZnVuY3Rpb24gQXBwbGljYXRpb25XaW5kb3coKXtUaS5pbmNsdWRlKCIvZ2xvYmFsLmpzIik7dmFyIGI9cmVxdWlyZSgidWkvQWRNb2IiKSxkPXJlcXVpcmUoInVpL01haW5WaWV3IiksYT1UaS5VSS5jcmVhdGVXaW5kb3coe2JhY2tncm91bmRDb2xvcjoiIzNhYTdmYSIsbmF2QmFySGlkZGVuOiEwLGV4aXRPbkNsb3NlOiEwfSk7YS5vcmllbnRhdGlvbk1vZGVzPVtUaXRhbml1bS5VSS5QT1JUUkFJVF07dmFyIGM9bmV3IGQ7YS5hZGQoYyk7Yj1uZXcgYjthLmFkZChiKTthLmFkZEV2ZW50TGlzdGVuZXIoImZvY3VzIixmdW5jdGlvbigpe2MucmVmcmVzaCgpfSk7cmV0dXJuIGF9bW9kdWxlLmV4cG9ydHM9QXBwbGljYXRpb25XaW5kb3c7Cg=="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "global.js"

    const-string v2, "aWYodHlwZW9mIEdMT0JBTF9ERUZJTkVEPT0idW5kZWZpbmVkIil7R0xPQkFMX0RFRklORUQ9ITA7YXBwTmFtZT0iWm9tZXIiO2lzaVBhZD1UaXRhbml1bS5QbGF0Zm9ybS5vc25hbWUuaW5kZXhPZigiaXBhZCIpIT0tMTtpc0lPUz1UaXRhbml1bS5QbGF0Zm9ybS5vc25hbWU9PSJpcGFkInx8VGl0YW5pdW0uUGxhdGZvcm0ub3NuYW1lPT0iaXBob25lIjtuZWVkc2lPU01lbnU9VGl0YW5pdW0uUGxhdGZvcm0ub3NuYW1lPT0iaXBhZCJ8fFRpdGFuaXVtLlBsYXRmb3JtLm9zbmFtZT09ImlwaG9uZSI7dmVyc2lvbj0idGVzdCI7bGFuZz0oIiIrVGkuTG9jYWxlLmN1cnJlbnRMYW5ndWFnZSkudG9Mb3dlckNhc2UoKTt0ZW1wRGlyZWN0b3J5PWlzSU9TP1RpdGFuaXVtLkZpbGVzeXN0ZW0uYXBwbGljYXRpb25EYXRhRGlyZWN0b3J5KyJ0ZW1wLyI6VGl0YW5pdW0uRmlsZXN5c3RlbS5leHRlcm5hbFN0b3JhZ2VEaXJlY3RvcnkrIi90ZW1wLyI7d2lkdGg9VGl0YW5pdW0uUGxhdGZvcm0uZGlzcGxheUNhcHMucGxhdGZvcm1XaWR0aDsKaGVpZ2h0PVRpdGFuaXVtLlBsYXRmb3JtLmRpc3BsYXlDYXBzLnBsYXRmb3JtSGVpZ2h0O2RlbnNpdHk9VGl0YW5pdW0uUGxhdGZvcm0uZGlzcGxheUNhcHMuZHBpLzE2MDtxdWFsaXR5U2l6ZT0iIjt2YXIgZGVidWc9ZnVuY3Rpb24oYSl7dmVyc2lvbj09InRlc3QiJiZUaS5BUEkuaW5mbygiWyIrYXBwTmFtZSsiXSAiK2EpfTtjdXN0b21Gb250PSJBcmlhbCI7VGkuUGxhdGZvcm0ub3NuYW1lPT0iYW5kcm9pZCImJihjdXN0b21Gb250PSJhcmlhbCIpO3ZhciByZWFkU2V0dGluZ3M9ZnVuY3Rpb24oKXt9O3JlYWRTZXR0aW5ncygpO2RlYnVnKCJMYW5ndWFnZTogIitsYW5nKTtUaS5GaWxlc3lzdGVtLmdldEZpbGUodGVtcERpcmVjdG9yeSkuZXhpc3RzKCl8fChUaS5GaWxlc3lzdGVtLmdldEZpbGUodGVtcERpcmVjdG9yeSkuY3JlYXRlRGlyZWN0b3J5KCksZGVidWcoIlRlbXAgRGlyZWN0b3J5IG1hZGUhIikpO3ZhciBnZXQ9ZnVuY3Rpb24oYSxiKXtkZWJ1ZygiR2V0dGluZyAiK2EpOwp4aHI9VGl0YW5pdW0uTmV0d29yay5jcmVhdGVIVFRQQ2xpZW50KHtlbmFibGVLZWVwQWxpdmU6ITF9KTt4aHIub3BlbigiR0VUIixhLCExKTt4aHIuc2V0UmVxdWVzdEhlYWRlcigiVXNlci1BZ2VudCIsIk1vemlsbGEvNS4wIChYMTE7IExpbnV4IHg4Nl82NCkgQXBwbGVXZWJLaXQvNTM0LjMwIChLSFRNTCwgbGlrZSBHZWNrbykgVWJ1bnR1LzExLjA0IENocm9taXVtLzEyLjAuNzQyLjExMiBDaHJvbWUvMTIuMC43NDIuMTEyIFNhZmFyaS81MzQuMzAiKTt4aHIub25lcnJvcj1mdW5jdGlvbigpe307eGhyLm9ubG9hZD1mdW5jdGlvbigpe2IodGhpcy5yZXNwb25zZVRleHQpfTt4aHIuc2VuZCgpfTtTdHJpbmcucHJvdG90eXBlLmI2ND1mdW5jdGlvbigpe3JldHVybigiIitUaXRhbml1bS5VdGlscy5iYXNlNjRlbmNvZGUoIiIrdGhpcykpLnJlcGxhY2UoLyhcclxufFxufFxyKS9nbSwiIil9O1N0cmluZy5wcm90b3R5cGUuYjY0RGVjPWZ1bmN0aW9uKCl7ZGVidWcoImI2NERlYygpIE5vcm1hbCBTdHJpbmc6IisKdGhpcyk7cmV0dXJuIFRpLlV0aWxzLmJhc2U2NGRlY29kZSh0aGlzKyIiKX07U3RyaW5nLnByb3RvdHlwZS51bmNvbW1hPWZ1bmN0aW9uKCl7cmV0dXJuIHRoaXMucmVwbGFjZSgiLjAiLCIiKX19Owo="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "app.js"

    const-string v2, "aWYoVGkudmVyc2lvbjwxLjgpYWxlcnQoIlNvcnJ5IC0gdGhpcyBhcHBsaWNhdGlvbiB0ZW1wbGF0ZSByZXF1aXJlcyBUaXRhbml1bSBNb2JpbGUgU0RLIDEuOCBvciBsYXRlciIpO2Vsc2UgaWYoVGkuUGxhdGZvcm0ub3NuYW1lPT09Im1vYmlsZXdlYiIpYWxlcnQoIk1vYmlsZSB3ZWIgaXMgbm90IHlldCBzdXBwb3J0ZWQgYnkgdGhpcyB0ZW1wbGF0ZSIpO2Vsc2V7dmFyIEFwcGxpY2F0aW9uV2luZG93PXJlcXVpcmUoInVpL0FwcGxpY2F0aW9uV2luZG93Iik7KG5ldyBBcHBsaWNhdGlvbldpbmRvdykub3BlbigpfTsK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "ui/MainView.js"

    const-string v2, "ZnVuY3Rpb24gTWFpblZpZXcoKXtUaS5pbmNsdWRlKCIvZ2xvYmFsLmpzIik7dmFyIGM9VGkuVUkuY3JlYXRlVmlldyh7YmFja2dyb3VuZENvbG9yOiIjM2FhN2ZhIix6SW5kZXg6MX0pO2MuYWRkKHRpdGxlPVRpLlVJLmNyZWF0ZVZpZXcoe3RvcDoiNWRwIixoZWlnaHQ6IjM4LjAwZHAiLGJhY2tncm91bmRDb2xvcjoiI2ZmZiJ9KSk7dmFyIGE9bmV3IERhdGUsYT1hLmdldERhdGUoKSsiIC8gIisoYS5nZXRNb250aCgpKzEpLGE9VGkuVUkuY3JlYXRlTGFiZWwoe3RleHQ6IlZvb3J1aXR6aWNodCBWYW5kYWFnOiAiK2EsY29sb3I6IiMzYWE3ZmEiLGZvbnQ6e2ZvbnRTaXplOiIyMGRwIixmb250RmFtaWx5OmN1c3RvbUZvbnQsZm9udFdlaWdodDoiYm9sZCJ9LHRleHRBbGlnbjoibGVmdCJ9KTt0aXRsZS5hZGQoYSk7Yy5hZGQobG9nbz1UaS5VSS5jcmVhdGVWaWV3KHt0b3A6IjE2Ni42N2RwIixoZWlnaHQ6IjI4LjY3ZHAiLGJhY2tncm91bmRDb2xvcjoiIzNmOTZkYiJ9KSk7YT1UaS5VSS5jcmVhdGVMYWJlbCh7dGV4dDoiS2FuIGlrIHpvbWVya2xlZGluZyBhYW4/ISIsCmNvbG9yOiIjZWZkNTQwIixmb250Ontmb250U2l6ZToiMjBkcCIsZm9udEZhbWlseTpjdXN0b21Gb250LGZvbnRXZWlnaHQ6ImJvbGQifSx0ZXh0QWxpZ246ImxlZnQifSk7bG9nby5hZGQoYSk7Yy5hZGQoZGV0YWlscz1UaS5VSS5jcmVhdGVWaWV3KHt3aWR0aDoiMzAyLjAwZHAiLGhlaWdodDoiMTA2LjY3ZHAiLHRvcDoiNTBkcCIsYmFja2dyb3VuZEltYWdlOiIvZGV0YWlscy5wbmcifSkpO2E9VGkuVUkuY3JlYXRlVmlldyh7dG9wOiIyMDBkcCJ9KTtoZWlnaHQ8NDgwP2EuYWRkKHpvbWVya2xlZGluZz1UaS5VSS5jcmVhdGVWaWV3KHt3aWR0aDoiMjA4LjAwZHAiLGhlaWdodDoiMjYwLjAwZHAiLGJvdHRvbToiMTVkcCIsdG9wOiIyMDBkcCIsYmFja2dyb3VuZEltYWdlOiIvem9tZXJrbGVkaW5nLnBuZyJ9KSk6YS5hZGQoem9tZXJrbGVkaW5nPVRpLlVJLmNyZWF0ZVZpZXcoe3dpZHRoOiIyMDguMDBkcCIsaGVpZ2h0OiIyNjAuMDBkcCIsYmFja2dyb3VuZEltYWdlOiIvem9tZXJrbGVkaW5nLnBuZyJ9KSk7CmMuYWRkKGEpO1RpdGFuaXVtLkdlb2xvY2F0aW9uLnB1cnBvc2U9IlJlY2lldmUgVXNlciBMb2NhdGlvbiI7VGl0YW5pdW0uR2VvbG9jYXRpb24uYWNjdXJhY3k9VGl0YW5pdW0uR2VvbG9jYXRpb24uQUNDVVJBQ1lfQkVTVDtUaXRhbml1bS5HZW9sb2NhdGlvbi5kaXN0YW5jZUZpbHRlcj0xMDt2YXIgZj1UaS5VSS5jcmVhdGVMYWJlbCh7dGV4dDoiIixjb2xvcjoiI2ZmZiIsZm9udDp7Zm9udFNpemU6IjI1ZHAiLGZvbnRGYW1pbHk6Y3VzdG9tRm9udCxmb250V2VpZ2h0OiJib2xkIn0saGVpZ2h0OiIzMC4wMGRwIix3aWR0aDoiNDYuNjdkcCIsbGVmdDoiOS4wMGRwIix0b3A6IjUyLjAwZHAiLHRleHRBbGlnbjpUaS5VSS5URVhUX0FMSUdOTUVOVF9SSUdIVH0pO2RldGFpbHMuYWRkKGYpO3ZhciBnPVRpLlVJLmNyZWF0ZUxhYmVsKHt0ZXh0OiIiLGNvbG9yOiIjZmZmIixmb250Ontmb250U2l6ZToiMjBkcCIsZm9udEZhbWlseTpjdXN0b21Gb250LGZvbnRXZWlnaHQ6ImJvbGQifSxoZWlnaHQ6IjQzLjMzZHAiLAp3aWR0aDoiNzMuMzNkcCIsbGVmdDoiMTExLjAwZHAiLHRvcDoiNDQuMDBkcCIsdGV4dEFsaWduOiJjZW50ZXIifSk7ZGV0YWlscy5hZGQoZyk7dmFyIGU9VGkuVUkuY3JlYXRlTGFiZWwoe3RleHQ6IiIsY29sb3I6IiNmZmYiLGZvbnQ6e2ZvbnRTaXplOiIzNWRwIixmb250RmFtaWx5OmN1c3RvbUZvbnQsZm9udFdlaWdodDoiYm9sZCJ9LGhlaWdodDoiYXV0byIsd2lkdGg6ImF1dG8iLGxlZnQ6IjIzMC42N2RwIix0b3A6IjQwLjAwZHAiLHRleHRBbGlnbjoiY2VudGVyIn0pO2RldGFpbHMuYWRkKGUpO3ZhciBoPVRpLlVJLmNyZWF0ZUxhYmVsKHt0ZXh0OiIiLGNvbG9yOiIjZmZmIixmb250Ontmb250U2l6ZToiMzBkcCIsZm9udEZhbWlseTpjdXN0b21Gb250LGZvbnRXZWlnaHQ6ImJvbGQifSxoZWlnaHQ6Ijc0LjY3ZHAiLHdpZHRoOiI5MC42N2RwIixsZWZ0OiI2MS4zM2RwIix0b3A6IjQxLjMzZHAiLHRleHRBbGlnbjoiY2VudGVyIn0pO3pvbWVya2xlZGluZy5hZGQoaCk7Yy5yZWZyZXNoPQpmdW5jdGlvbigpe1RpdGFuaXVtLk5ldHdvcmsub25saW5lfHxUaXRhbml1bS5VSS5jcmVhdGVBbGVydERpYWxvZyh7dGl0bGU6IkludGVybmV0IHZlcmVpc3QiLG1lc3NhZ2U6IkplIHRvZXN0ZWwgbW9ldCBvbmxpbmUgemlqbiBvbSBoZXQgd2VlciB0ZSBvbnR2YW5nZW4hIixidXR0b25OYW1lczpbIk9LIl19KS5zaG93KCk7VGl0YW5pdW0uR2VvbG9jYXRpb24uZ2V0Q3VycmVudFBvc2l0aW9uKGZ1bmN0aW9uKGEpe2EuZXJyb3I/YWxlcnQoIkVycm9yOiAiK2EuZXJyb3IubWVzc2FnZSk6Z2V0KCJodHRwOi8vZnJlZS53b3JsZHdlYXRoZXJvbmxpbmUuY29tL2ZlZWQvd2VhdGhlci5hc2h4P3E9IitbYS5jb29yZHMubGF0aXR1ZGUsYS5jb29yZHMubG9uZ2l0dWRlXS5qb2luKCIsIikrIiZmb3JtYXQ9anNvbiZrZXk9IisoaXNJT1M/IjgxODUwY2JiODkwNzAxNDcxMjI4MDMiOiJlMjBjMjVkZTE5MDgzNzQ1MTIyODAzIiksZnVuY3Rpb24oYSl7ZGVidWcoIkRhdGE6ICIrYSk7dmFyIGE9CkpTT04ucGFyc2UoYSksYj1hLmRhdGEud2VhdGhlclswXS50ZW1wTWF4QyxhPWEuZGF0YS5jdXJyZW50X2NvbmRpdGlvblswXTtmLnRleHQ9cGFyc2VJbnQoYS5jbG91ZGNvdmVyKSsiIjtpZihhLnRlbXBfQz5iKXZhciBiPWEudGVtcF9DLTIsZD1hLnRlbXBfQztlbHNlIGQ9YixiPWEudGVtcF9DLTI7Zy50ZXh0PWIrIiAtICIrZDthOntmb3IodmFyIGI9cGFyc2VJbnQoYS53aW5kc3BlZWRLbXBoKSxkPVswLDUsMTEsMTksMjgsMzgsNDksNjEsNzQsODgsMTAyLDExNyw5OTk5XSxjPTA7YzxkLmxlbmd0aDtjKyspaWYoYj49ZFtjXSYmYjw9ZFtjKzE8ZC5sZW5ndGg/YysxOmQubGVuZ3RoXSl7Yj1jO2JyZWFrIGF9Yj12b2lkIDB9ZS50ZXh0PSIiK2I7Yj1iPDQmJmEudGVtcF9DPjEyJiZhLmNsb3VkY292ZXI8NDA7ZGVidWcoIlRoZUJpZ1F1ZXN0aW9uOiB3IDwgNDogIisoZTw0KSsiIHdlYXRoZXIudGVtcF9DID4gMTI6ICIrKGEudGVtcF9DPjEyKSsiIHdlYXRoZXIuY2xvdWRjb3ZlciA8IDQwOiIrCihhLmNsb3VkY292ZXI8NDApKTtoLnRleHQ9Yj8iSkEiOiJORUUifSl9KX07cmV0dXJuIGN9bW9kdWxlLmV4cG9ydHM9TWFpblZpZXc7Cg=="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/pixelhungrystudios/zomerkleding/AssetCryptImpl;->assets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0
.end method
