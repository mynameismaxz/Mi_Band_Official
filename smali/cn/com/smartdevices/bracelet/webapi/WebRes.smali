.class public Lcn/com/smartdevices/bracelet/webapi/WebRes;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lcn/com/smartdevices/bracelet/webapi/WebStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WebRes"

    sput-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b:Landroid/content/Context;

    new-instance v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    sput-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c:Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/ShareSportData;
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/model/ShareSportData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/ShareSportData;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcn/com/smartdevices/bracelet/model/ShareSportData;->fromString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/UploadData;
    .locals 3

    new-instance v0, Lcn/com/smartdevices/bracelet/model/UploadData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/UploadData;-><init>()V

    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UploadData;->date:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UploadData;->summary:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    :cond_0
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;-><init>()V

    const-string v1, "steps"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->steps:Ljava/lang/String;

    const-string v1, "distance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->distance:Ljava/lang/String;

    const-string v1, "calories"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->calories:Ljava/lang/String;

    const-string v1, "averagesteps"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->averageSteps:Ljava/lang/String;

    const-string v1, "totalwearingdays"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->totalwearingdays:Ljava/lang/String;

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->totalSportData:Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    :cond_0
    const-string v1, "username"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    :cond_1
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    :cond_2
    const-string v1, "weight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "weight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "weight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    :cond_3
    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    const-string v1, "birthday"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->birthday:Ljava/lang/String;

    iget-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->birthday:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v3, v1, v4

    if-eqz v3, :cond_4

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    :cond_4
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/UserLocationData;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/UserLocationData;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->location:Lcn/com/smartdevices/bracelet/model/UserLocationData;

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->source:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->state:I

    :cond_5
    const-string v1, "gid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "gid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "gid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gid:I

    :cond_6
    const-string v1, "signature"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->personSignature:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUserInfo dataObj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    const-string v1, "parseUserInfo dataObj is null"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    :cond_1
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getNeedSyncServer()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    const-string v1, "\n Person info not synced to server, so we skip parse from server! \n"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    :cond_3
    const-string v0, "weight"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "weight"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "weight"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    :cond_4
    const-string v0, "gender"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gender"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "gender"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    :cond_5
    const-string v0, "last_login_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->lastLoginTime:Ljava/lang/String;

    const-string v0, "creat_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->createTime:Ljava/lang/String;

    const-string v0, "birthday"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->birthday:Ljava/lang/String;

    const-string v0, "avatar"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/model/UserLocationData;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/UserLocationData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/UserLocationData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->location:Lcn/com/smartdevices/bracelet/model/UserLocationData;

    :cond_6
    const-string v0, "config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Utils;->URLDecodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/MiliConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setMiliConfig(Lcn/com/smartdevices/bracelet/model/MiliConfig;)V

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miliConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "alarm_clock"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Utils;->URLDecodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->parseAlarmClockItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->alarmClockItems:Ljava/util/ArrayList;

    :cond_8
    const-string v0, "age"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    const-string v0, "signature"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->personSignature:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWebStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    const-string v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->message:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->isAuthInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c:Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b:Landroid/content/Context;

    const-class v3, Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sput-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c:Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    iput v2, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/MicroBlogItem;
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMicroBlog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;-><init>()V

    const-string v0, "postid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->postid:J

    const-string v0, "visible"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "visible"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->visible:I

    :cond_0
    const-string v0, "issystem"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "issystem"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->systemFlag:I

    :cond_1
    const-string v0, "web_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "web_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->webUrl:Ljava/lang/String;

    :cond_2
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->info:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v0, v3}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    iget-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->shareContent:Lcn/com/smartdevices/bracelet/model/ShareContent;

    const-string v3, "message"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/com/smartdevices/bracelet/model/ShareContent;->message:Ljava/lang/String;

    iget-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->shareContent:Lcn/com/smartdevices/bracelet/model/ShareContent;

    const-string v3, "share_type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcn/com/smartdevices/bracelet/model/ShareContent;->shareType:I

    iget-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->shareContent:Lcn/com/smartdevices/bracelet/model/ShareContent;

    iget v0, v0, Lcn/com/smartdevices/bracelet/model/ShareContent;->shareType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    const-string v0, "share_sport_data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "share_sport_data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->shareContent:Lcn/com/smartdevices/bracelet/model/ShareContent;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/ShareSportData;

    move-result-object v0

    iput-object v0, v3, Lcn/com/smartdevices/bracelet/model/ShareContent;->shareSportData:Lcn/com/smartdevices/bracelet/model/ShareSportData;

    :cond_3
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_4

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/UploadData;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->data:Lcn/com/smartdevices/bracelet/model/UploadData;

    :cond_4
    const-string v0, "source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->source:Ljava/lang/String;

    const-string v0, "create_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->createTime:Ljava/lang/String;

    const-string v0, "likenum"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->likeNum:I

    const-string v0, "commentsnum"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->commentsNum:I

    const-string v0, "comments"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->e(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/CommentItem;

    move-result-object v4

    iget-object v5, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->comments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->shareContent:Lcn/com/smartdevices/bracelet/model/ShareContent;

    iget v0, v0, Lcn/com/smartdevices/bracelet/model/ShareContent;->shareType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const-string v0, "picurl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcn/com/smartdevices/bracelet/model/PicUrl;

    invoke-direct {v5}, Lcn/com/smartdevices/bracelet/model/PicUrl;-><init>()V

    const-string v6, "original_pic"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/com/smartdevices/bracelet/model/PicUrl;->originUrl:Ljava/lang/String;

    const-string v6, "thumb_pic"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/com/smartdevices/bracelet/model/PicUrl;->thumbUrl:Ljava/lang/String;

    iget-object v4, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->shareContent:Lcn/com/smartdevices/bracelet/model/ShareContent;

    iget-object v4, v4, Lcn/com/smartdevices/bracelet/model/ShareContent;->pics:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "likeuserlist"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->likePersons:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->likePersons:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    new-instance v3, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v3}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    iget-object v4, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->likePersons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add like relation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " like "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->info:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget-object v5, v5, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lcn/com/smartdevices/bracelet/model/MicroBlogItem;->likePersons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_8
    return-object v2
.end method

.method private static e(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/CommentItem;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseComment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/model/CommentItem;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/CommentItem;-><init>()V

    const-string v1, "cid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/CommentItem;->cid:J

    const-string v1, "user"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, v0, Lcn/com/smartdevices/bracelet/model/CommentItem;->userInfo:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    const-string v1, "create_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/CommentItem;->createTime:J

    const-string v1, "message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/CommentItem;->message:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/CommentItem;->source:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/CommentItem;->status:I

    return-object v0
.end method

.method public static getWebStatus(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWebStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->message:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->isAuthInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c:Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b:Landroid/content/Context;

    const-class v3, Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sput-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c:Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    iput v2, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b:Landroid/content/Context;

    return-void
.end method

.method public static parseAvatar(Ljava/lang/String;Lcn/com/smartdevices/bracelet/model/PersonInfo;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 7

    const/4 v5, 0x2

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "avatar"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iput-object v1, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get avatar Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    iput v5, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :try_start_2
    iput v1, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static parseBindedUserInfo(Ljava/lang/String;Lcn/com/smartdevices/bracelet/model/PersonInfo;)Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 2

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->purgeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseDownload(Ljava/lang/String;Ljava/util/ArrayList;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/UploadData;",
            ">;)",
            "Lcn/com/smartdevices/bracelet/webapi/WebStatus;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x2

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseDownload:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "data"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "data_len"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dates"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dates"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Lcn/com/smartdevices/bracelet/model/NetDataInfo;

    invoke-direct {v5}, Lcn/com/smartdevices/bracelet/model/NetDataInfo;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    iput v6, v5, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->dataState:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->startDate:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->stopDate:Ljava/lang/String;

    :goto_1
    invoke-static {v5}, Lcn/com/smartdevices/bracelet/Keeper;->keepNetInfo(Lcn/com/smartdevices/bracelet/model/NetDataInfo;)V

    :cond_2
    const-string v4, "list"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_4

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    const-string v2, "size error!"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    iput v7, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseDownload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    :try_start_2
    iput v4, v5, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->dataState:I

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/model/NetDataInfo;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/model/NetDataInfo;-><init>()V

    if-lez v3, :cond_5

    const/4 v5, 0x2

    iput v5, v1, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->dataState:I

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->startDate:Ljava/lang/String;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->stopDate:Ljava/lang/String;

    :goto_3
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Keeper;->keepNetInfo(Lcn/com/smartdevices/bracelet/model/NetDataInfo;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/UploadData;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x1

    iput v5, v1, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->dataState:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_2
.end method

.method public static parseFriendList(Ljava/lang/String;Ljava/util/ArrayList;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/PersonInfo;",
            ">;)",
            "Lcn/com/smartdevices/bracelet/webapi/WebStatus;"
        }
    .end annotation

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFriendList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    const/4 v2, 0x2

    iput v2, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static parseMicroBlogs(Ljava/lang/String;Ljava/util/ArrayList;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/MicroBlogItem;",
            ">;)",
            "Lcn/com/smartdevices/bracelet/webapi/WebStatus;"
        }
    .end annotation

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseMicroBlogs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->d(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/MicroBlogItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    const/4 v2, 0x2

    iput v2, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static parsePushMessage(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/BasePushItem;
    .locals 5

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePushMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    new-instance v0, Lcn/com/smartdevices/bracelet/model/DataStatusPushItem;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/DataStatusPushItem;-><init>()V

    const-string v1, "dates"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/DataStatusPushItem;->dates:Lorg/json/JSONArray;

    const-string v1, "timeStamp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/com/smartdevices/bracelet/model/DataStatusPushItem;->timeStamp:J

    const-string v1, "uuid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/DataStatusPushItem;->uuid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v0, Lcn/com/smartdevices/bracelet/model/UserStatusPushItem;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/UserStatusPushItem;-><init>()V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/UserStatusPushItem;->status:I

    const-string v1, "userinfo"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, v0, Lcn/com/smartdevices/bracelet/model/UserStatusPushItem;->userInfo:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v1, v3}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    const-string v1, "content"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/UserStatusPushItem;->content:Ljava/lang/String;

    const-string v1, "timeStamp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/UserStatusPushItem;->timeStamp:J

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcn/com/smartdevices/bracelet/model/SystemStatusPushItem;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/SystemStatusPushItem;-><init>()V

    const-string v1, "microblog"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->d(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/model/MicroBlogItem;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/SystemStatusPushItem;->item:Lcn/com/smartdevices/bracelet/model/MicroBlogItem;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static parseShareBackground(Ljava/lang/String;Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseShareBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "reach"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;->reachedBgUrl:Ljava/lang/String;

    const-string v2, "unreach"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;->unReachedBgUrl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x2

    iput v2, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static parseUserInfo(Ljava/lang/String;Lcn/com/smartdevices/bracelet/model/PersonInfo;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUserInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->purgeJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->b(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x2

    iput v2, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static parseUserTotalSportData(Ljava/lang/String;Lcn/com/smartdevices/bracelet/model/PersonInfo;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    .locals 4

    new-instance v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a(Lorg/json/JSONObject;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x2

    iput v2, v0, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static parseWeixinQR(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseWeixinQR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->c(Lorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "list"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    iput v3, v2, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    sget-object v2, Lcn/com/smartdevices/bracelet/webapi/WebRes;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseXiaoMiUserPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static parseXiaoMiUserProfile(Lcn/com/smartdevices/bracelet/model/LoginInfo;Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/LoginInfo;
    .locals 4

    if-nez p0, :cond_2

    new-instance v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/LoginInfo;-><init>()V

    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "aliasNick"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->aliasNick:Ljava/lang/String;

    const-string v2, "miliaoNick"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoNick:Ljava/lang/String;

    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miid:Ljava/lang/String;

    const-string v2, "miliaoIcon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoIcon:Ljava/lang/String;

    const-string v2, "miliaoIcon_320"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoIcon_320:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method public static parseXiaoMiUserRelation(Lcn/com/smartdevices/bracelet/model/LoginInfo;Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/LoginInfo;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->friends:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
