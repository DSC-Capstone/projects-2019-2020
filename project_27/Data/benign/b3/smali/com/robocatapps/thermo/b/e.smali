.class Lcom/robocatapps/thermo/b/e;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:[I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/robocatapps/thermo/b/d;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/b/d;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/b/e;->c:Lcom/robocatapps/thermo/b/d;

    iput-object p2, p0, Lcom/robocatapps/thermo/b/e;->a:[I

    iput-object p3, p0, Lcom/robocatapps/thermo/b/e;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private a()I
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/robocatapps/thermo/b/e;->d:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "temp_c"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->a:[I

    invoke-direct {p0}, Lcom/robocatapps/thermo/b/e;->a()I

    move-result v1

    aput v1, v0, v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "temp_f"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->a:[I

    invoke-direct {p0}, Lcom/robocatapps/thermo/b/e;->a()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_2
    const-string v0, "wind_mph"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->a:[I

    invoke-direct {p0}, Lcom/robocatapps/thermo/b/e;->a()I

    move-result v1

    aput v1, v0, v4

    goto :goto_0

    :cond_3
    const-string v0, "state_name"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/robocatapps/thermo/b/e;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_4
    const-string v0, "city"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/robocatapps/thermo/b/e;->d:Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_0

    :cond_5
    const-string v0, "country_iso3166"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/b/e;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/robocatapps/thermo/b/e;->d:Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_0
.end method
