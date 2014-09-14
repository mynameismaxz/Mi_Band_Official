.class final Lcn/com/smartdevices/bracelet/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/ui/u;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/u;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/v;->a:Lcn/com/smartdevices/bracelet/ui/u;

    iput-boolean p2, p0, Lcn/com/smartdevices/bracelet/ui/v;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/v;->a:Lcn/com/smartdevices/bracelet/ui/u;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/ui/u;->a:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/v;->b:Z

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->updateDynamicList(Z)V

    return-void
.end method
