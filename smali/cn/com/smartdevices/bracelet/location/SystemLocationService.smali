.class public Lcn/com/smartdevices/bracelet/location/SystemLocationService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcn/com/smartdevices/bracelet/location/LocationService;


# static fields
.field private static final a:Ljava/lang/String; = "SystemLocationService"


# instance fields
.field private b:Landroid/location/LocationManager;

.field private c:Lcn/com/smartdevices/bracelet/location/LocationListener;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->b:Landroid/location/LocationManager;

    const-string v0, "SystemLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provider : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->b:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const-string v0, "SystemLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Latitude : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Longitude : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->c:Lcn/com/smartdevices/bracelet/location/LocationListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/location/Location;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/location/Location;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/location/Location;->setLongitude(D)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->c:Lcn/com/smartdevices/bracelet/location/LocationListener;

    invoke-interface {v1, v0}, Lcn/com/smartdevices/bracelet/location/LocationListener;->onReceiveLocation(Lcn/com/smartdevices/bracelet/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public optionLocationService(Lcn/com/smartdevices/bracelet/location/LocationOption;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->HighAccuracy:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/location/LocationOption;->getMode()Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-string v0, "gps"

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->d:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->BatterySave:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/location/LocationOption;->getMode()Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "network"

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->GpsOnly:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/location/LocationOption;->getMode()Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "gps"

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public registerLocationListener(Lcn/com/smartdevices/bracelet/location/LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->c:Lcn/com/smartdevices/bracelet/location/LocationListener;

    return-void
.end method

.method public startLocation()V
    .locals 6

    const-string v0, "SystemLocationService"

    const-string v1, "Start Location!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->d:Ljava/lang/String;

    iget v2, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->e:I

    int-to-long v2, v2

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "SystemLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Last Loc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->b:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopLocation()V
    .locals 2

    const-string v0, "SystemLocationService"

    const-string v1, "Stop Location!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/location/SystemLocationService;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
