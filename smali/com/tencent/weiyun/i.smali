.class final Lcom/tencent/weiyun/i;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/weiyun/f;


# direct methods
.method constructor <init>(Lcom/tencent/weiyun/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v1, 0x0

    const/4 v10, -0x2

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x3a98

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x4e20

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v2, "TX_QQF_ANDROID"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const/high16 v0, 0x2

    new-array v4, v0, [B

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v0}, Lcom/tencent/weiyun/f;->c(Lcom/tencent/weiyun/f;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    int-to-long v6, v0

    iget-object v2, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v2}, Lcom/tencent/weiyun/f;->f(Lcom/tencent/weiyun/f;)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_0

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    iget-object v6, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v6, v4, v2, v0}, Lcom/tencent/weiyun/f;->a(Lcom/tencent/weiyun/f;[BII)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    add-int/2addr v0, v2

    if-eqz v6, :cond_0

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v8}, Lcom/tencent/weiyun/f;->j(Lcom/tencent/weiyun/f;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/ftn_handler/?bmd5="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v8}, Lcom/tencent/weiyun/f;->e(Lcom/tencent/weiyun/f;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v7, "Accept-Encoding"

    const-string v8, "*/*"

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Pragma"

    const-string v8, "no-cache"

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_2
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v2

    :goto_1
    const/16 v6, 0xc8

    if-ne v2, v6, :cond_2

    int-to-long v6, v0

    iget-object v2, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v2}, Lcom/tencent/weiyun/f;->f(Lcom/tencent/weiyun/f;)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    int-to-long v6, v0

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-object v2, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v2}, Lcom/tencent/weiyun/f;->f(Lcom/tencent/weiyun/f;)J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v2, v6

    iget-object v6, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v6}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const/4 v7, 0x1

    iput v7, v6, Landroid/os/Message;->what:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v2}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v0}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v10, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v1}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v0}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v10, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v1}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v1}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v10, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v0}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :catch_3
    move-exception v2

    iget-object v2, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v2}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v10, v2, Landroid/os/Message;->what:I

    const-string v6, ""

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v6}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v2, v1

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v2}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v6, 0x2

    iput v6, v2, Landroid/os/Message;->what:I

    const-string v6, ""

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v6}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v0}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, -0x9

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/weiyun/i;->a:Lcom/tencent/weiyun/f;

    invoke-static {v1}, Lcom/tencent/weiyun/f;->i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3
.end method
