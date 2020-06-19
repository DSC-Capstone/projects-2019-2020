.class Lio/senseai/kelvinsdk/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private collection_rate:I

.field private master_switch:Z

.field private post_diagnostic_data:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/Configuration;->master_switch:Z

    .line 9
    const/16 v0, 0xf

    iput v0, p0, Lio/senseai/kelvinsdk/Configuration;->collection_rate:I

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/Configuration;->post_diagnostic_data:Z

    return-void
.end method


# virtual methods
.method public getCollection_rate()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lio/senseai/kelvinsdk/Configuration;->collection_rate:I

    return v0
.end method

.method public isMaster_switch()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/Configuration;->master_switch:Z

    return v0
.end method

.method public isPost_diagnostic_data()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/Configuration;->post_diagnostic_data:Z

    return v0
.end method

.method public setCollection_rate(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lio/senseai/kelvinsdk/Configuration;->collection_rate:I

    .line 26
    return-void
.end method

.method public setMaster_switch(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lio/senseai/kelvinsdk/Configuration;->master_switch:Z

    .line 18
    return-void
.end method

.method public setPost_diagnostic_data(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lio/senseai/kelvinsdk/Configuration;->post_diagnostic_data:Z

    .line 34
    return-void
.end method
