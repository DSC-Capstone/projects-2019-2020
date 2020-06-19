.class Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;
.super Lcyanogenmod/app/ICustomTileListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcyanogenmod/app/CustomTileListenerService;


# direct methods
.method private constructor <init>(Lcyanogenmod/app/CustomTileListenerService;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-direct {p0}, Lcyanogenmod/app/ICustomTileListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTileListenerService;Lcyanogenmod/app/CustomTileListenerService$1;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lcyanogenmod/app/CustomTileListenerService;)V

    return-void
.end method


# virtual methods
.method public onCustomTilePosted(Lbrl;)V
    .locals 4

    .prologue
    .line 137
    :try_start_0
    invoke-interface {p1}, Lbrl;->a()Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->access$100(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v1

    monitor-enter v1

    .line 144
    :try_start_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v2, v0}, Lcyanogenmod/app/CustomTileListenerService;->onCustomTilePosted(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->access$200(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCustomTilePosted: Error receiving StatusBarPanelCustomTile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 145
    :catch_1
    move-exception v0

    .line 146
    :try_start_3
    iget-object v2, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v2}, Lcyanogenmod/app/CustomTileListenerService;->access$200(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error running onCustomTilePosted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onCustomTileRemoved(Lbrl;)V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    invoke-interface {p1}, Lbrl;->a()Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->access$100(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v1

    monitor-enter v1

    .line 161
    :try_start_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v2, v0}, Lcyanogenmod/app/CustomTileListenerService;->onCustomTileRemoved(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :goto_1
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->access$200(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCustomTileRemoved: Error receiving StatusBarPanelCustomTile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    :try_start_3
    iget-object v2, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v2}, Lcyanogenmod/app/CustomTileListenerService;->access$200(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error running onCustomTileRemoved"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onListenerConnected()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v0}, Lcyanogenmod/app/CustomTileListenerService;->access$100(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v0}, Lcyanogenmod/app/CustomTileListenerService;->onListenerConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    iget-object v2, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v2}, Lcyanogenmod/app/CustomTileListenerService;->access$200(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error running onListenerConnected"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
