.class public Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;
.super Ljava/lang/Object;


# instance fields
.field private accu_cc:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AccuCC;

.field private accu_f5:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AccuF5;

.field private alert:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aqi:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;

.field private forecast:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Forecast;

.field private index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Index;",
            ">;"
        }
    .end annotation
.end field

.field private realtime:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;

.field private today:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Today;

.field private yestoday:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Yestoday;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;->aqi:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;

    return-object v0
.end method

.method public getRealtime()Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;->realtime:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;

    return-object v0
.end method

.method public setAqi(Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;->aqi:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;

    return-void
.end method

.method public setRealtime(Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;->realtime:Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;

    return-void
.end method
