.class public final enum Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BatterySave:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

.field public static final enum GpsOnly:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

.field public static final enum HighAccuracy:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

.field private static final synthetic a:[Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    const-string v1, "HighAccuracy"

    invoke-direct {v0, v1, v2}, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->HighAccuracy:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    new-instance v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    const-string v1, "BatterySave"

    invoke-direct {v0, v1, v3}, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->BatterySave:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    new-instance v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    const-string v1, "GpsOnly"

    invoke-direct {v0, v1, v4}, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->GpsOnly:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    sget-object v1, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->HighAccuracy:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->BatterySave:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->GpsOnly:Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->a:[Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;
    .locals 1

    const-class v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    return-object v0
.end method

.method public static values()[Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;->a:[Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    array-length v1, v0

    new-array v2, v1, [Lcn/com/smartdevices/bracelet/location/LocationOption$LocationMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
