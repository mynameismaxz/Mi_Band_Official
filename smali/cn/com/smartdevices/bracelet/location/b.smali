.class Lcn/com/smartdevices/bracelet/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/location/LocationListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/location/LocationManager;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/location/b;->a:Lcn/com/smartdevices/bracelet/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcn/com/smartdevices/bracelet/location/Location;)V
    .locals 3

    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location Received : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.hm.health.LocationReceived"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/location/b;->a:Lcn/com/smartdevices/bracelet/location/LocationManager;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/location/LocationManager;->a(Lcn/com/smartdevices/bracelet/location/LocationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
