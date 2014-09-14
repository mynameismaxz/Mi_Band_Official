.class final Lcn/com/smartdevices/bracelet/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/ui/r;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/r;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/s;->a:Lcn/com/smartdevices/bracelet/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/s;->a:Lcn/com/smartdevices/bracelet/ui/r;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/ui/r;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->updateDynamicList(Z)V

    return-void
.end method
