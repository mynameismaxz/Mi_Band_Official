.class public Lcom/tencent/stat/common/Env;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/stat/common/a;

.field private static d:Lorg/json/JSONObject;


# instance fields
.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/common/Env;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/stat/common/Env;->c:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/stat/common/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/stat/common/a;-><init>(Landroid/content/Context;B)V

    sput-object v0, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/StatCommonHelper;->getTelephonyNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/common/Env;->b:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/stat/common/StatCommonHelper;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/common/Env;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/tencent/stat/common/a;
    .locals 3

    sget-object v0, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/stat/common/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/stat/common/a;-><init>(Landroid/content/Context;B)V

    sput-object v0, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    :cond_0
    sget-object v0, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    return-object v0
.end method

.method public static appendEnvAttr(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public encode(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/stat/common/Env;->a:Lcom/tencent/stat/common/a;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/a;->a(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "cn"

    iget-object v2, p0, Lcom/tencent/stat/common/Env;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/stat/common/StatCommonHelper;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/stat/common/Env;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "tn"

    iget-object v2, p0, Lcom/tencent/stat/common/Env;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "ev"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "eva"

    sget-object v1, Lcom/tencent/stat/common/Env;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method
