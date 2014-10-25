.class Lcn/com/smartdevices/bracelet/lab/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/c;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/c;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/d;->a:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/d;->a:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/c;->a(Lcn/com/smartdevices/bracelet/lab/c;)Lcn/com/smartdevices/bracelet/lab/b;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->startParseSensorData()V

    return-void
.end method
