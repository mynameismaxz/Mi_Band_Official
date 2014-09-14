.class public Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;
.super Ljava/lang/Object;


# static fields
.field private static __instance:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;


# instance fields
.field private context:Landroid/content/Context;

.field private listDao:Lde/greenrobot/daobracelet/LuaListDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/com/smartdevices/bracelet/DaoManager;->getInstance()Lcn/com/smartdevices/bracelet/DaoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DaoManager;->getLuaListDao()Lde/greenrobot/daobracelet/LuaListDao;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;-><init>()V

    iput-object p0, v0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->context:Landroid/content/Context;

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lua/LuaManager;

    sput-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    :cond_0
    sget-object v0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->__instance:Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;

    return-object v0
.end method


# virtual methods
.method public luaEventAchievementMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getAchievementMsgs"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public luaEventActivityMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getActivityMsgs"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public luaEventDefaultMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getDefaultMsgs"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public luaEventSleepMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getSleepMsgs"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public luaEventSysInfoMsg(Lcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getSysInfoMsgs"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method

.method public testLuaImp(ILcn/com/smartdevices/bracelet/lua/ConfigDynamicDataInfo;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getInstance()Lcn/com/smartdevices/bracelet/lua/LuaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->getLuaState()Lorg/keplerproject/luajava/LuaState;

    move-result-object v1

    sget-object v2, Lorg/keplerproject/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getEventMsgs"

    invoke-virtual {v1, v2, v3}, Lorg/keplerproject/luajava/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/LuaEventMsgs;->listDao:Lde/greenrobot/daobracelet/LuaListDao;

    invoke-virtual {v1, v2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lorg/keplerproject/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/keplerproject/luajava/LuaState;->pushInteger(I)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lua/LuaManager;->callLua(II)V

    return-void
.end method
