.class public Lcom/robocatapps/thermo/model/Observation;
.super Ljava/lang/Object;


# instance fields
.field public final location:Lcom/robocatapps/thermo/model/Location;

.field public final observationTime:J

.field public final temperature:Lcom/robocatapps/thermo/model/Temperature;


# direct methods
.method public constructor <init>(Lcom/robocatapps/thermo/model/Location;Lcom/robocatapps/thermo/model/Temperature;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/robocatapps/thermo/model/Observation;->location:Lcom/robocatapps/thermo/model/Location;

    iput-wide p3, p0, Lcom/robocatapps/thermo/model/Observation;->observationTime:J

    iput-object p2, p0, Lcom/robocatapps/thermo/model/Observation;->temperature:Lcom/robocatapps/thermo/model/Temperature;

    return-void
.end method


# virtual methods
.method public getReadableDate()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-wide v2, p0, Lcom/robocatapps/thermo/model/Observation;->observationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Observation;->getReadableDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/model/Observation;->temperature:Lcom/robocatapps/thermo/model/Temperature;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Temperature;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
