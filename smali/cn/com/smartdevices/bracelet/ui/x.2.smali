.class final Lcn/com/smartdevices/bracelet/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;II)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/x;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    iput p2, p0, Lcn/com/smartdevices/bracelet/ui/x;->b:I

    iput p3, p0, Lcn/com/smartdevices/bracelet/ui/x;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/x;->b:I

    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/x;->c:I

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/DataManager;->load(II)V

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/x;->b:I

    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/x;->c:I

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/x;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->n(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/x;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->n(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
