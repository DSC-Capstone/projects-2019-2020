.class public Lcom/robocatapps/thermo/model/Temperature;
.super Ljava/lang/Object;


# instance fields
.field public final celsius:I

.field public final feelsCelsius:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    iput p2, p0, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    return-void
.end method

.method public static celsiusToFahrenheit(I)I
    .locals 2

    int-to-float v0, p0

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static fahrenheitToCelsius(I)I
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x42000000    # 32.0f

    sub-float/2addr v0, v1

    const v1, 0x3fe66666    # 1.8f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getFeelslikeCelsius(II)I
    .locals 1

    invoke-static {p0}, Lcom/robocatapps/thermo/model/Temperature;->celsiusToFahrenheit(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/robocatapps/thermo/model/Temperature;->getFeelslikeFahrenheit(II)I

    move-result v0

    invoke-static {v0}, Lcom/robocatapps/thermo/model/Temperature;->fahrenheitToCelsius(I)I

    move-result v0

    return v0
.end method

.method public static getFeelslikeFahrenheit(II)I
    .locals 9

    const-wide v7, 0x3fc47ae147ae147bL    # 0.16

    const/16 v0, 0x6d

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-wide v1, 0x4041deb851eb851fL    # 35.74

    const-wide v3, 0x3fe3e353f7ced917L    # 0.6215

    int-to-double v5, p0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide v3, 0x4041e00000000000L    # 35.75

    int-to-double v5, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    const-wide v3, 0x3fdb5c28f5c28f5cL    # 0.4275

    int-to-double v5, p0

    mul-double/2addr v3, v5

    int-to-double v5, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getFahrenheit()I
    .locals 1

    iget v0, p0, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    invoke-static {v0}, Lcom/robocatapps/thermo/model/Temperature;->celsiusToFahrenheit(I)I

    move-result v0

    return v0
.end method

.method public getFahrenheitFeels()I
    .locals 1

    iget v0, p0, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    invoke-static {v0}, Lcom/robocatapps/thermo/model/Temperature;->celsiusToFahrenheit(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Feelslike: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
