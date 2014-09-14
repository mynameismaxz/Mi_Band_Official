.class final Lcn/com/smartdevices/bracelet/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    iput-boolean p2, p0, Lcn/com/smartdevices/bracelet/ui/u;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/u;)Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/u;->b:Z

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->c(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/u;->b:Z

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->d(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->generateSleepReport()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->o(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->p(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/u;->b:Z

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->a(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/v;

    iget-boolean v2, p0, Lcn/com/smartdevices/bracelet/ui/u;->b:Z

    invoke-direct {v1, p0, v2}, Lcn/com/smartdevices/bracelet/ui/v;-><init>(Lcn/com/smartdevices/bracelet/ui/u;Z)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
