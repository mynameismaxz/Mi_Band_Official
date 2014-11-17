.class public Lcn/com/smartdevices/bracelet/tencent/QQLogin;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_APP_ID:Ljava/lang/String; = "1103177325"

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final KEY_COUSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_OPEN_ID:Ljava/lang/String; = "openid"

.field public static final KEY_RESULT:Ljava/lang/String; = "ret"

.field public static final KEY_USER_AVATAR:Ljava/lang/String; = "figureurl_qq_2"

.field public static final KEY_USER_INFO:Ljava/lang/String; = "UserInfo"

.field public static final KEY_USER_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PERMISSION_ALL:Ljava/lang/String; = "all"

.field public static final PERMISSION_HEALTH:Ljava/lang/String; = "get_user_info,health"

.field private static final a:Ljava/lang/String; = "QQ.Login"

.field private static b:Lcn/com/smartdevices/bracelet/tencent/QQLogin;


# instance fields
.field private c:Lcom/tencent/tauth/Tencent;

.field private d:Lcom/tencent/tauth/IUiListener;

.field private e:Lcom/tencent/tauth/IUiListener;

.field private f:Lcom/tencent/connect/UserInfo;

.field private g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

.field private h:Landroid/content/Context;

.field private i:Landroid/content/SharedPreferences;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v0, "QQ.Login"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    const-string v0, "1103177325"

    const-string v1, "QQ.Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create Tencent Instance : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->restoreOAuthInfo()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->restoreQQUserInfo()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/tencent/QQLogin;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->d:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method

.method private a(Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;)V
    .locals 4

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQ.Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save User Info : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/tencent/QQLogin;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    const-string v2, "ret"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QQ.Login"

    const-string v3, "Request User Info Success!"

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;-><init>()V

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    const-string v3, "nickname"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;->setNickName(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    const-string v3, "figureurl_qq_2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    invoke-direct {p0, v1}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->a(Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v2, "QQ_Request_UserInfo_Success"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v2, "QQ_Request_UserInfo_Fail"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/tencent/QQLogin;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/tencent/QQLogin;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->e:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method

.method public static getInstance()Lcn/com/smartdevices/bracelet/tencent/QQLogin;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->b:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/tencent/QQLogin;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->b:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->b:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    :cond_0
    sget-object v0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->b:Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    return-object v0
.end method


# virtual methods
.method public getLaunchActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public getOAuthInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "openid"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pf"

    const-string v2, "qzone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getQQUserInfo()Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    return-object v0
.end method

.method public getTencent()Lcom/tencent/tauth/Tencent;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method public isLoginValid()Z
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLoginIn()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->j:Z

    return v0
.end method

.method public isNeedSwitchLoginIn()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->k:Z

    return v0
.end method

.method public login(Landroid/app/Activity;)V
    .locals 3

    const-string v1, "QQ.Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Login : "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "all"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    new-instance v2, Lcn/com/smartdevices/bracelet/tencent/a;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/tencent/a;-><init>(Lcn/com/smartdevices/bracelet/tencent/QQLogin;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    const-string v0, "QQ.Login"

    const-string v1, "Logout"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onLoginCancel()V
    .locals 2

    const-string v0, "QQ.Login"

    const-string v1, "Login Cancel!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v1, "QQ_Login_Cancel"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onLoginComplete(Ljava/lang/Object;)V
    .locals 4

    const-string v1, "QQ.Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login Complete : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    const-string v2, "ret"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v2, "QQ_Login_Success"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v2, "QQ_Login_Fail"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->exception(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onLoginError(Lcom/tencent/tauth/UiError;)V
    .locals 3

    const-string v0, "QQ.Login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login Error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v2, "QQ_Login_Error"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v1, "QQ_Login_Error"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public requestUserInfo()V
    .locals 3

    const-string v0, "QQ.Login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request User Info : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/connect/UserInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/connect/UserInfo;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->f:Lcom/tencent/connect/UserInfo;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->f:Lcom/tencent/connect/UserInfo;

    new-instance v1, Lcn/com/smartdevices/bracelet/tencent/b;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/tencent/b;-><init>(Lcn/com/smartdevices/bracelet/tencent/QQLogin;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/UserInfo;->getUserInfo(Lcom/tencent/tauth/IUiListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->h:Landroid/content/Context;

    const-string v1, "QQ_Request_UserInfo"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public restoreOAuthInfo()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    const-string v1, "openid"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1, v0}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    const-string v2, "access_token"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    const-string v3, "expires_in"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QQ.Login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Read : OpenId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " , AccessToken = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " , ExpiresIn = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public restoreQQUserInfo()V
    .locals 4

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    const-string v1, "UserInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQ.Login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read User Info : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->g:Lcn/com/smartdevices/bracelet/tencent/QQLogin$QQUserInfo;

    :cond_0
    return-void
.end method

.method public saveOAuthInfo()V
    .locals 7

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->getExpiresIn()J

    move-result-wide v2

    const-string v4, "QQ.Login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Save : OpenId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , AccessToken = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , ExpiresIn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->i:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "openid"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "access_token"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "expires_in"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setLaunchActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->l:Ljava/lang/Class;

    return-void
.end method

.method public setLoginListener(Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->d:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method public setNeedLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->j:Z

    return-void
.end method

.method public setNeedSwitchLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->k:Z

    return-void
.end method

.method public setUserInfoListener(Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->e:Lcom/tencent/tauth/IUiListener;

    return-void
.end method
