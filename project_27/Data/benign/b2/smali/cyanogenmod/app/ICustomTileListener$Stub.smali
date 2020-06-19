.class public abstract Lcyanogenmod/app/ICustomTileListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcyanogenmod/app/ICustomTileListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ICustomTileListener"

.field static final TRANSACTION_onCustomTilePosted_1:I = 0x2

.field static final TRANSACTION_onCustomTileRemoved:I = 0x3

.field static final TRANSACTION_onListenerConnected_0:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "cyanogenmod.app.ICustomTileListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/ICustomTileListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcyanogenmod/app/ICustomTileListener;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onListenerConnected()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lbrm;->a(Landroid/os/IBinder;)Lbrl;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lcyanogenmod/app/ICustomTileListener$Stub;->onCustomTilePosted(Lbrl;)V

    goto :goto_0

    .line 62
    :sswitch_3
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lbrm;->a(Landroid/os/IBinder;)Lbrl;

    move-result-object v1

    .line 65
    invoke-virtual {p0, v1}, Lcyanogenmod/app/ICustomTileListener$Stub;->onCustomTileRemoved(Lbrl;)V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
