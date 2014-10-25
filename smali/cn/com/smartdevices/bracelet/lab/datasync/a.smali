.class Lcn/com/smartdevices/bracelet/lab/datasync/a;
.super Lcn/com/smartdevices/bracelet/lab/datasync/AbstractSyncTask;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 1

    invoke-direct {p0, p2}, Lcn/com/smartdevices/bracelet/lab/datasync/AbstractSyncTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(IZ)V
    .locals 2

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->readInfoFromPref(I)Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->setState(I)V

    :goto_0
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->saveInfo()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->restState()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 9

    const-wide/16 v4, 0x3

    invoke-static {p2}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->readInfoFromPref(I)Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDataSynced true return, may be syncing, type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SyncServerDataInfo;->isSucceededToSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDataSavedToDB true return, type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readLoginData()Lcn/com/smartdevices/bracelet/model/LoginData;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v8, Lcn/com/smartdevices/bracelet/lab/datasync/b;

    invoke-direct {v8, p0, p2, p1}, Lcn/com/smartdevices/bracelet/lab/datasync/b;-><init>(Lcn/com/smartdevices/bracelet/lab/datasync/a;ILandroid/content/Context;)V

    move v2, p2

    move-wide v6, v4

    invoke-static/range {v0 .. v8}, Lcn/com/smartdevices/bracelet/webapi/WebAPI;->syncFromServerBeyondDays(Lcn/com/smartdevices/bracelet/model/LoginData;Ljava/lang/String;IIJJLcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/datasync/a;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a(IZ)V

    return-void
.end method


# virtual methods
.method public doWork(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/lab/datasync/a;->a(Landroid/content/Context;I)V

    return-void
.end method
