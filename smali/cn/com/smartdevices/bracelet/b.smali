.class final Lcn/com/smartdevices/bracelet/b;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/DataManager;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/DataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3

    invoke-static {p3}, Lcn/com/smartdevices/bracelet/Utils;->getStringFromBytes([B)Ljava/lang/String;

    const-string v0, "DataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadNetData onFailure:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/webapi/WebRes;->parseDownload(Ljava/lang/String;Ljava/util/ArrayList;)Lcn/com/smartdevices/bracelet/webapi/WebStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcn/com/smartdevices/bracelet/DataManager;->insertDatas(Ljava/util/ArrayList;I)V

    :cond_0
    const-string v0, "DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadNetData onSuccess:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcn/com/smartdevices/bracelet/webapi/WebStatus;->code:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
