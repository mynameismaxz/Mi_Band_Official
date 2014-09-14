.class Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    const-string v0, "WeatherManager"

    const-string v1, "Request CityCodes Failed!!"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5

    const-string v0, "WeatherManager"

    const-string v1, "Request CityCodes Successed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$3;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->requestWeather(Lcn/com/smartdevices/bracelet/weather/OriginalCityCodes;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "WeatherManager"

    const-string v3, "Parse CityCodes Error!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method
