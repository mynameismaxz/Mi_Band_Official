.class public Lcn/com/smartdevices/bracelet/Keeper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Keeper"

.field private static final b:Ljava/lang/String; = "REF_MORING_ALARMS"

.field private static c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KeepLastMonthReportDate(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastMonthReportDate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static KeepLastWeekReportDate(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastWeekReportDate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static clearPersonInfo()V
    .locals 3

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "person_info_mili_config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_total_sport_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getSharedPref()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "keeper"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static keepAlarms(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/AlarmClockItem;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Keeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarmStr ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v2, "alarms"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepApkVersion(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APKVersion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepBraceletBtInfo(Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;)V
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bracelet_bt_name"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "bracelet_mac_address"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepBraceletStatisticTime(J)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bracelet_statistic_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepCheckUpdateApkDate()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "UPDATE_DATE_REF"

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepConfigDynamicDataInfo(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "configDynamicDataInfo"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepContinueReachGoalRi(Lcn/com/smartdevices/bracelet/model/ReportInfo;)V
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "continue_reach_goal"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/ReportInfo;->date:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "continue_reach_report_date"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/ReportInfo;->reportDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepDebugFlag(Z)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_debug_log"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepDeviceId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepDownloadApkId(J)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DOWNLOAD_ID_REF"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepFileDebugFlag(Z)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_file_debug_log"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepGameFailed(Z)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REF_GAME_FAILED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepIsPlayEnterAnimation(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isPlayEnterAnimation"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepLatestDBLuaVersion(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "latestDBLuaVersion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepLocaleStr()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepLoginData(JLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "security"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepMorningAlarms(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REF_MORING_ALARMS"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepNeedBind(I)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bind_state"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepNetInfo(Lcn/com/smartdevices/bracelet/model/NetDataInfo;)V
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "net_data_state"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->dataState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "net_start_day"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->startDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "net_stop_day"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->stopDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "person_info_nickname"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_avatar_url"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_avatar_path"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_age"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_gender"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_height"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_weight"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_uid"

    iget-wide v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_signature"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->personSignature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_sh"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->sh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "device_id"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "person_info_need_sync_server"

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getNeedSyncServer()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "person_info_mili_config"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->location:Lcn/com/smartdevices/bracelet/model/UserLocationData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->location:Lcn/com/smartdevices/bracelet/model/UserLocationData;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/UserLocationData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "person_info_location"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->location:Lcn/com/smartdevices/bracelet/model/UserLocationData;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/UserLocationData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->totalSportData:Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->totalSportData:Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "person_info_total_sport_data"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->totalSportData:Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->alarmClockItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepAlarms(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static keepPlayEnterAnimationType(I)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PlayEnterAnimationType"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepPushAlias(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_alias"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepRealtimeSteps(I)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dynamic_realtime_steps"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepShareBgItem(Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;)V
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reached_bg_url"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;->reachedBgUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "unreached_bg_url"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;->unReachedBgUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepSwitchOperator(Lcn/com/smartdevices/bracelet/model/SwitchOperator;)V
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "switch_type"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->type:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_clear_data"

    iget-boolean v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->enableClearData:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_write_realtime_steps"

    iget-boolean v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->enableSteps:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "realtime_steps"

    iget v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->steps:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_uid"

    iget-wide v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->lastUid:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_mac_address"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->lastMacAddress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "switch_date"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->date:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepSyncBraceletTime(J)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_bracelet_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepSyncRealStepTime(J)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_real_step_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepSyncTime(J)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static keepUUID(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_uuid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static readAlarms()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/AlarmClockItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "alarms"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->parseAlarmClockItems(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readApkVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "APKVersion"

    const-string v2, "85:1.0.20140625.2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readBraceletBtInfo()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;
    .locals 4

    new-instance v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "bracelet_bt_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->name:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "bracelet_mac_address"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public static readBraceletStatisticTime()J
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "bracelet_statistic_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readConfigDynamicDataInfo()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "configDynamicDataInfo"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readContinueReachGoalRi()Lcn/com/smartdevices/bracelet/model/ReportInfo;
    .locals 4

    new-instance v0, Lcn/com/smartdevices/bracelet/model/ReportInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/ReportInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "continue_reach_goal"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ReportInfo;->date:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "continue_reach_report_date"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ReportInfo;->reportDate:Ljava/lang/String;

    return-object v0
.end method

.method public static readDebugFlag()Z
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "enable_debug_log"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readDeviceId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readDownloadApkId()J
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "DOWNLOAD_ID_REF"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readFileDebugFlag()Z
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "enable_file_debug_log"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readGameFailed()Z
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "REF_GAME_FAILED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readIsPlayEnterAnimation()Ljava/lang/Boolean;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "isPlayEnterAnimation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static readLastCheckUpdateDate()Ljava/util/Calendar;
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "UPDATE_DATE_REF"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last calendar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public static readLastMonthReportDate()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "LastMonthReportDate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLastWeekReportDate()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "LastWeekReportDate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLatestDBLuaVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "latestDBLuaVersion"

    const-string v2, "20990101001"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLocaleStr()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "Locale"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLoginData()Lcn/com/smartdevices/bracelet/model/LoginData;
    .locals 5

    new-instance v0, Lcn/com/smartdevices/bracelet/model/LoginData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/LoginData;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "uid"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/LoginData;->uid:J

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "security"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/LoginData;->security:Ljava/lang/String;

    return-object v0
.end method

.method public static readMorningAlarms()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "REF_MORING_ALARMS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcn/com/smartdevices/bracelet/c;

    invoke-direct {v3}, Lcn/com/smartdevices/bracelet/c;-><init>()V

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/c;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static readNeedBind()I
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "bind_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readNetInfo()Lcn/com/smartdevices/bracelet/model/NetDataInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/NetDataInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "net_data_state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->dataState:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "net_start_day"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->startDate:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "net_stop_day"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/NetDataInfo;->stopDate:Ljava/lang/String;

    return-object v0
.end method

.method public static readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 5

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_nickname"

    iget-object v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_avatar_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_avatar_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarPath:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_age"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_gender"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_height"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_weight"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_uid"

    iget-wide v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_signature"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->personSignature:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_sh"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->sh:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/UserLocationData;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/UserLocationData;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->location:Lcn/com/smartdevices/bracelet/model/UserLocationData;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_total_sport_data"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/UserTotalSportData;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->totalSportData:Lcn/com/smartdevices/bracelet/model/UserTotalSportData;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "device_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->deviceId:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_need_sync_server"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setNeedSyncServer(I)V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_mili_config"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/MiliConfig;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readAlarms()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->alarmClockItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static readPersonInfoBase()Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 5

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_uid"

    iget-wide v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_gender"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_height"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_weight"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_age"

    iget v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_mili_config"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/MiliConfig;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    return-object v0
.end method

.method public static readPersonInfoBaseConfig()Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 4

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_mili_config"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/model/MiliConfig;->fromJsonStr(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/MiliConfig;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->miliConfig:Lcn/com/smartdevices/bracelet/model/MiliConfig;

    return-object v0
.end method

.method public static readPersonInfoBaseNeedSync()Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 4

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_need_sync_server"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setNeedSyncServer(I)V

    return-object v0
.end method

.method public static readPersonInfoBaseUID()Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 5

    new-instance v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "person_info_uid"

    iget-wide v3, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    return-object v0
.end method

.method public static readPlayEnterAnimationType()I
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "PlayEnterAnimationType"

    const/16 v2, 0x63

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readPushAlias()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "push_alias"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readRealtimeSteps()I
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "dynamic_realtime_steps"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readShareBgItem()Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;
    .locals 4

    new-instance v0, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "reached_bg_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;->reachedBgUrl:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "unreached_bg_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareBackgroundItem;->unReachedBgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static readSwitchOperator()Lcn/com/smartdevices/bracelet/model/SwitchOperator;
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/SwitchOperator;-><init>()V

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "switch_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->type:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "enable_clear_data"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->enableClearData:Z

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "enable_write_realtime_steps"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->enableSteps:Z

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "realtime_steps"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->steps:I

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "last_uid"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->lastUid:J

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "last_mac_address"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->lastMacAddress:Ljava/lang/String;

    sget-object v1, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v2, "switch_date"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/SwitchOperator;->date:Ljava/lang/String;

    return-object v0
.end method

.method public static readSyncBraceletTime()J
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "sync_bracelet_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readSyncRealStepTime()J
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "sync_real_step_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readSyncTime()J
    .locals 4

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "sync_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readUUID()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "push_uuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readUserName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/com/smartdevices/bracelet/Keeper;->c:Landroid/content/SharedPreferences;

    const-string v1, "person_info_nickname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
