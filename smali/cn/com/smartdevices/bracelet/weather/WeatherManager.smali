.class public Lcn/com/smartdevices/bracelet/weather/WeatherManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherManager"

.field public static final URL_REQUEST_CITY:Ljava/lang/String; = "http://weatherapi.market.xiaomi.com/wtr-v2/city/positioning?longitude=%s&latitude=%s"

.field public static final URL_REQUEST_CITY_CODE:Ljava/lang/String; = "http://weatherapi.market.xiaomi.com/wtr-v2/city/datasource?cityNames=%s"

.field public static final URL_REQUEST_WEATHER:Ljava/lang/String; = "http://weatherapi.market.xiaomi.com/wtr-v2/weather?cityId=%s"

.field public static final URL_WEATHER_BASE:Ljava/lang/String; = "http://weatherapi.market.xiaomi.com/wtr-v2"

.field private static sManager:Lcn/com/smartdevices/bracelet/weather/WeatherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWeatherListener:Lcn/com/smartdevices/bracelet/weather/WeatherListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Lcn/com/smartdevices/bracelet/weather/WeatherListener;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mWeatherListener:Lcn/com/smartdevices/bracelet/weather/WeatherListener;

    return-object v0
.end method

.method public static getManager(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/weather/WeatherManager;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->sManager:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->sManager:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    :cond_0
    sget-object v0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->sManager:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    return-object v0
.end method


# virtual methods
.method public registerLocationChanged()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.hm.health.LocationReceived"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/weather/WeatherManager$1;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager$1;-><init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerWeatherListener(Lcn/com/smartdevices/bracelet/weather/WeatherListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mWeatherListener:Lcn/com/smartdevices/bracelet/weather/WeatherListener;

    return-void
.end method

.method public requestCityByLocation(Lcn/com/smartdevices/bracelet/location/Location;)V
    .locals 5

    const-string v0, "WeatherManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request City : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "http://weatherapi.market.xiaomi.com/wtr-v2/city/positioning?longitude=%s&latitude=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/BraceletHttpClient;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v2, Lcn/com/smartdevices/bracelet/weather/WeatherManager$2;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager$2;-><init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public requestCityCode(Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$CityInfo;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$CityInfo;->getNames()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WeatherManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Request City Code : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "http://weatherapi.market.xiaomi.com/wtr-v2/city/datasource?cityNames=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";,"

    invoke-static {v3, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/BraceletHttpClient;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v2, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;-><init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$Name;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$Name;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$Name;->getAffiliation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$Name;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalCityInfos$Name;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v0

    goto/16 :goto_0
.end method

.method protected requestWeather(Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;)V
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;->TYPE_XIAOMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;->getCityCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request Weather : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "http://weatherapi.market.xiaomi.com/wtr-v2/weather?cityId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/BraceletHttpClient;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v2, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;-><init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method
