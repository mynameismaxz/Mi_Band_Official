.class Lcom/xiaomi/hm/bleservice/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hm/bleservice/BLEService;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/hm/bleservice/BLEService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/c;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    iput-boolean p2, p0, Lcom/xiaomi/hm/bleservice/c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/hm/bleservice/DynamicManager;->getInstance()Lcom/xiaomi/hm/bleservice/DynamicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/c;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    iget-boolean v2, p0, Lcom/xiaomi/hm/bleservice/c;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/hm/bleservice/DynamicManager;->analysisDynamic(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/c;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->notifyDynamicStatusChanged()V
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$22(Lcom/xiaomi/hm/bleservice/BLEService;)V

    return-void
.end method
