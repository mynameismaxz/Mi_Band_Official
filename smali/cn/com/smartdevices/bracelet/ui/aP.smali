.class Lcn/com/smartdevices/bracelet/ui/aP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/aO;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/aO;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/aP;->a:Lcn/com/smartdevices/bracelet/ui/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/aP;->a:Lcn/com/smartdevices/bracelet/ui/aO;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/aO;->a(Lcn/com/smartdevices/bracelet/ui/aO;)Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->updateDynamicList(Z)V

    return-void
.end method
