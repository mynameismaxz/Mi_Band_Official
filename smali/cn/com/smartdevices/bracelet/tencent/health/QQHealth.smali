.class public Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;
.super Ljava/lang/Object;


# static fields
.field public static final URL_HEALTH_BASE:Ljava/lang/String; = "https://openmobile.qq.com/v3/health/"

.field public static final URL_POST_SLEEP:Ljava/lang/String; = "https://openmobile.qq.com/v3/health/report_sleep"

.field public static final URL_POST_STEPS:Ljava/lang/String; = "https://openmobile.qq.com/v3/health/report_steps"

.field private static final a:Ljava/lang/String; = "QQ.Health"

.field private static final b:Ljava/lang/String; = "NeedSyncDays"

.field private static final c:Ljava/lang/String; = "HaveSyncedSleepData"

.field private static d:Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

.field private g:Landroid/content/SharedPreferences;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/model/SportDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    const-string v0, "QQ.Health"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->g:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->readNeedSyncDays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/analysis/SleepInfo;)Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;
    .locals 7

    new-instance v0, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStopDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setStartTime(I)V

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setEndTime(I)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getSleepCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setTotalTime(I)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getNonRemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setDeepTime(I)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getRemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setLightTime(I)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getAwakeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setAwakeTime(I)V

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setGoal(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lcn/com/smartdevices/bracelet/model/SportDay;Lcn/com/smartdevices/bracelet/analysis/StepsInfo;)Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;
    .locals 5

    new-instance v0, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setTime(I)V

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setSteps(I)V

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setDistance(I)V

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getCalories()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setCalories(I)V

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getActMinutes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setDuration(I)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfoBaseConfig()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getDaySportGoalSteps()I

    move-result v1

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setAchieve(I)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->setTarget(I)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/16 v3, 0x3b

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/16 v3, 0x3b

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->saveNeedSyncDays(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/com/smartdevices/bracelet/DataManager;->load(Lcn/com/smartdevices/bracelet/model/SportDay;)I

    invoke-virtual {v2, p1}, Lcn/com/smartdevices/bracelet/DataManager;->get(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getStepsInfo()Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    move-result-object v1

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getSleepInfo()Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, p1, v1}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->a(Lcn/com/smartdevices/bracelet/model/SportDay;Lcn/com/smartdevices/bracelet/analysis/StepsInfo;)Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "QQ.Health"

    const-string v4, "Sync Step Data To QQ Health!!"

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->postStep(Lcn/com/smartdevices/bracelet/model/SportDay;Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getSleepCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->a(Lcn/com/smartdevices/bracelet/analysis/SleepInfo;)Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v2, p1, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->loadChartData(Lcn/com/smartdevices/bracelet/DataManager;Lcn/com/smartdevices/bracelet/model/SportDay;I)Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;

    move-result-object v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->getStartTime()I

    move-result v2

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->wrapSleepDetailInfoToHealth(ILcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->setDetails(Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    const-string v1, "QQ.Health"

    const-string v2, "Sync Sleep Data To QQ Health!!"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->postSleep(Lcn/com/smartdevices/bracelet/model/SportDay;Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->a(Lcn/com/smartdevices/bracelet/model/SportDay;)V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ret"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->removeNeedSyncDay(Lcn/com/smartdevices/bracelet/model/SportDay;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    const-string v2, "QQ_Health_SyncData_Success"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    const-string v2, "QQ_Health_SyncData_Fail"

    invoke-static {v1, v2, p2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->a(Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HaveSyncedSleepData"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->b(Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->d:Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->d:Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->d:Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;

    :cond_0
    sget-object v0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->d:Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;

    return-object v0
.end method

.method public static wrapSleepDetailInfoToHealth(ILcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;->sleepData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$SleepDetailItem;

    if-eq v2, v3, :cond_1

    iget-object v6, p1, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;->sleepData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_2

    :cond_1
    iget v6, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$SleepDetailItem;->mode:I

    if-eq v6, v3, :cond_0

    :cond_2
    new-instance v6, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;

    invoke-direct {v6}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;-><init>()V

    mul-int/lit8 v7, v1, 0x3c

    add-int/2addr v7, p0

    invoke-virtual {v6, v7}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;->setTime(I)V

    iget v7, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$SleepDetailItem;->length:I

    add-int/2addr v1, v7

    iget v0, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$SleepDetailItem;->mode:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6, v3}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;->setState(I)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;->setState(I)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep$SleepDetail;->setState(I)V

    goto :goto_1

    :cond_3
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addNeedSyncDay(Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "QQ.Health"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Need Sync Day : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->saveNeedSyncDays(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public addNeedSyncDays(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/model/SportDay;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportDay;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const-string v1, "QQ.Health"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add Need Sync Day : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->saveNeedSyncDays(Ljava/util/List;)V

    return-void
.end method

.method public clean()V
    .locals 1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->a()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public postSleep(Lcn/com/smartdevices/bracelet/model/SportDay;Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;)V
    .locals 6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "QQ.Health"

    const-string v1, "Login is invalid!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "https://openmobile.qq.com/v3/health/report_sleep"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->getOAuthInfo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/tencent/health/HealthSleep;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, v1}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->readSyncedSleepData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "QQ.Health"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already Post Sleep : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nParams : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "QQ.Health"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post Sleep : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nParams : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/com/smartdevices/bracelet/webapi/BraceletHttpClient;->syncClient:Lcom/loopj/android/http/SyncHttpClient;

    new-instance v4, Lcn/com/smartdevices/bracelet/tencent/health/b;

    invoke-direct {v4, p0, p1, v1}, Lcn/com/smartdevices/bracelet/tencent/health/b;-><init>(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/model/SportDay;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2, v4}, Lcom/loopj/android/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    const-string v1, "QQ_Health_SyncData"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public postStep(Lcn/com/smartdevices/bracelet/model/SportDay;Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;)V
    .locals 5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "QQ.Health"

    const-string v1, "Login is invalid!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "https://openmobile.qq.com/v3/health/report_steps"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->getOAuthInfo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/tencent/health/HealthStep;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, v1}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const-string v1, "QQ.Health"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post Step : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nParams : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/com/smartdevices/bracelet/webapi/BraceletHttpClient;->syncClient:Lcom/loopj/android/http/SyncHttpClient;

    new-instance v3, Lcn/com/smartdevices/bracelet/tencent/health/a;

    invoke-direct {v3, p0, p1}, Lcn/com/smartdevices/bracelet/tencent/health/a;-><init>(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/model/SportDay;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/loopj/android/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    const-string v1, "QQ_Health_SyncData"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readNeedSyncDays()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/model/SportDay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->g:Landroid/content/SharedPreferences;

    const-string v1, "NeedSyncDays"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQ.Health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Days Json : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/model/SportDay;->fromString(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    :cond_0
    const-string v0, "QQ.Health"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Need Sync Days : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public readSyncedSleepData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->g:Landroid/content/SharedPreferences;

    const-string v1, "HaveSyncedSleepData"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeNeedSyncDay(Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "QQ.Health"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Need Sync Day : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->saveNeedSyncDays(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method public saveNeedSyncDays(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/model/SportDay;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "QQ.Health"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Need Sync Days : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "QQ.Health"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Days Json : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NeedSyncDays"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "NeedSyncDays"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public syncDataAsync()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->syncDataAsync(Ljava/util/List;)V

    return-void
.end method

.method public syncDataAsync(Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "QQ.Health"

    const-string v1, "Login is invalid!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/com/smartdevices/bracelet/tencent/health/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/c;-><init>(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/tencent/health/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/com/smartdevices/bracelet/model/SportDay;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public syncDataAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/model/SportDay;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;->f:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "QQ.Health"

    const-string v1, "Login is invalid!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcn/com/smartdevices/bracelet/model/SportDay;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportDay;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcn/com/smartdevices/bracelet/tencent/health/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/smartdevices/bracelet/tencent/health/c;-><init>(Lcn/com/smartdevices/bracelet/tencent/health/QQHealth;Lcn/com/smartdevices/bracelet/tencent/health/a;)V

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/tencent/health/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
