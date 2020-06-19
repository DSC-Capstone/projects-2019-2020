.class public interface abstract Lcyanogenmod/app/ICMStatusBarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V
.end method

.method public abstract registerListener(Lcyanogenmod/app/ICustomTileListener;Landroid/content/ComponentName;I)V
.end method

.method public abstract removeCustomTileFromListener(Lcyanogenmod/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract unregisterListener(Lcyanogenmod/app/ICustomTileListener;I)V
.end method
