.class final Lcn/com/smartdevices/bracelet/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/r;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/r;)Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/r;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/r;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->a(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/r;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/s;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/s;-><init>(Lcn/com/smartdevices/bracelet/ui/r;)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
