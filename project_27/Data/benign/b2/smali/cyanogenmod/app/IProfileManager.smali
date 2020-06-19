.class public interface abstract Lcyanogenmod/app/IProfileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addNotificationGroup(Landroid/app/NotificationGroup;)V
.end method

.method public abstract addProfile(Lcyanogenmod/app/Profile;)Z
.end method

.method public abstract getActiveProfile()Lcyanogenmod/app/Profile;
.end method

.method public abstract getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
.end method

.method public abstract getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
.end method

.method public abstract getNotificationGroups()[Landroid/app/NotificationGroup;
.end method

.method public abstract getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;
.end method

.method public abstract getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;
.end method

.method public abstract getProfiles()[Lcyanogenmod/app/Profile;
.end method

.method public abstract notificationGroupExistsByName(Ljava/lang/String;)Z
.end method

.method public abstract profileExists(Landroid/os/ParcelUuid;)Z
.end method

.method public abstract profileExistsByName(Ljava/lang/String;)Z
.end method

.method public abstract removeNotificationGroup(Landroid/app/NotificationGroup;)V
.end method

.method public abstract removeProfile(Lcyanogenmod/app/Profile;)Z
.end method

.method public abstract resetAll()V
.end method

.method public abstract setActiveProfile(Landroid/os/ParcelUuid;)Z
.end method

.method public abstract setActiveProfileByName(Ljava/lang/String;)Z
.end method

.method public abstract updateNotificationGroup(Landroid/app/NotificationGroup;)V
.end method

.method public abstract updateProfile(Lcyanogenmod/app/Profile;)V
.end method
