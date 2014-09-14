.class public Lcn/com/smartdevices/bracelet/lua/LuaEvent;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "LuaEvent"

.field private static __instance:Lcn/com/smartdevices/bracelet/lua/LuaEvent;


# instance fields
.field private cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

.field private context:Landroid/content/Context;

.field private lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lua/LuaEvent;
    .locals 2

    sget-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/lua/LuaEvent;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->getInstance()Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    iget-object v1, v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v1, p0}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setLuaAction(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    sput-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    sget-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->setLocale(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    return-object v0
.end method


# virtual methods
.method public getConfigDynamicDataInfo()Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    return-object v0
.end method

.method public getLuaEventMsg()Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    return-object v0
.end method

.method public getLuaVersion()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v2

    sget-object v3, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "getLuaVersion"

    invoke-virtual {v2, v3, v4}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v2, v3}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    :try_start_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->getLuaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v1, "LuaEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lua version ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->getLuaVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetLuaState()V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->resetLuaState()V

    return-void
.end method

.method public setContinueReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowContinue(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setContinueReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->luaEventAchievementMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowContinue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setDefaultMsgs()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->setDefaultMsgs(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setDefaultMsgs(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBinded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setIsBind(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Utils;->isSupportUnlockScreenByBracelet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Utils;->isUseUnlockByBracelet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowUnlockInfo(Ljava/lang/Boolean;)V

    :goto_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->save()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setForceRefresh(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->luaEventDefaultMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowUnlockInfo(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public setGoal()V
    .locals 5

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    invoke-static {}, Lcn/com/smartdevices/bracelet/DaoManager;->getInstance()Lcn/com/smartdevices/bracelet/DaoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/DaoManager;->getLuaListDao()Lde/greenrobot/daobracelet/LuaListDao;

    move-result-object v2

    sget-object v3, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "dayComplete"

    invoke-virtual {v1, v3, v4}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "setLocale"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public setMonthReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowMonthReport(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setMonthReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->luaEventAchievementMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowMonthReport(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setRecord(Lcn/com/smartdevices/bracelet/model/ReportData;)V
    .locals 5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setNewRecordReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    invoke-static {}, Lcn/com/smartdevices/bracelet/DaoManager;->getInstance()Lcn/com/smartdevices/bracelet/DaoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/DaoManager;->getLuaListDao()Lde/greenrobot/daobracelet/LuaListDao;

    move-result-object v2

    sget-object v3, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "newRecord"

    invoke-virtual {v1, v3, v4}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public setSleep(Lcn/com/smartdevices/bracelet/analysis/SleepInfo;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setSleepInfo(Lcn/com/smartdevices/bracelet/analysis/SleepInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setSleepAverageDeepTime(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setSleepPercent(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowSleep(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->luaEventSleepMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowSleep(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setStep(Lcn/com/smartdevices/bracelet/analysis/ActiveItem;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Lcn/com/smartdevices/bracelet/analysis/ActiveItem;->mode:I

    if-nez v0, :cond_0

    const-string v0, "\u6d3b\u52a8"

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setActiveItem(Lcn/com/smartdevices/bracelet/analysis/ActiveItem;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowActivity(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->luaEventActivityMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowActivity(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    iget v0, p1, Lcn/com/smartdevices/bracelet/analysis/ActiveItem;->mode:I

    if-ne v0, v1, :cond_1

    const-string v0, "\u8d70\u8def"

    goto :goto_0

    :cond_1
    const-string v0, "\u8dd1\u6b65"

    goto :goto_0
.end method

.method public setWeekReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowWeekReport(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setWeekReport(Lcn/com/smartdevices/bracelet/model/ReportData;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->luaEventAchievementMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;->setShowWeekReport(Ljava/lang/Boolean;)V

    return-void
.end method

.method public testAction()V
    .locals 6

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/LuaAction;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lua/LuaAction;

    move-result-object v2

    invoke-static {}, Lcn/com/smartdevices/bracelet/DaoManager;->getInstance()Lcn/com/smartdevices/bracelet/DaoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/DaoManager;->getLuaListDao()Lde/greenrobot/daobracelet/LuaListDao;

    move-result-object v3

    sget-object v4, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "doAction2"

    invoke-virtual {v1, v4, v5}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public testConfig()V
    .locals 0

    return-void
.end method

.method public testLuaImp(I)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->lEventMsgs:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->cInfo:Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;

    invoke-virtual {v0, p1, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->testLuaImp(ILcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V

    return-void
.end method
