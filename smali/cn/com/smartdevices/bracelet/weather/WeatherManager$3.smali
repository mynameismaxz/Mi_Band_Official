.class Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

.field private final synthetic val$finalLoc:Lcn/com/smartdevices/bracelet/location/Location;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;Lcn/com/smartdevices/bracelet/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->val$finalLoc:Lcn/com/smartdevices/bracelet/location/Location;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    const-string v0, "WeatherManager"

    const-string v1, "Request CityCodes Failed!!"

    invoke-static {v0, v1, p4}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4

    const-string v0, "WeatherManager"

    const-string v1, "Request CityCodes Successed!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Respone : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CityCodes : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;->TYPE_XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;->getCityCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request Weather : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WeatherManager"

    const-string v2, "Parse CityCodes Error!!"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    #getter for: Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->access$1(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->val$finalLoc:Lcn/com/smartdevices/bracelet/location/Location;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/location/Location;->getAddress()Lcn/com/smartdevices/bracelet/location/Location$Address;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->val$finalLoc:Lcn/com/smartdevices/bracelet/location/Location;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/location/Location;->getAddress()Lcn/com/smartdevices/bracelet/location/Location$Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    invoke-virtual {v2, v1, v0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->saveCityCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    #calls: Lcn/com/smartdevices/bracelet/weather/WeatherManager;->readOrRequestWeather(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->access$2(Lcn/com/smartdevices/bracelet/weather/WeatherManager;Ljava/lang/String;)V

    goto :goto_1
.end method
