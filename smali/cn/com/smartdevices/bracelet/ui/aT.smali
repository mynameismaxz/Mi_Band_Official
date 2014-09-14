.class final Lcn/com/smartdevices/bracelet/ui/aT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/ui/aS;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/aS;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/aT;->a:Lcn/com/smartdevices/bracelet/ui/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/aT;->a:Lcn/com/smartdevices/bracelet/ui/aS;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/ui/aS;->a:Lcn/com/smartdevices/bracelet/ui/PersonInfoFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoFragment;->b(Lcn/com/smartdevices/bracelet/ui/PersonInfoFragment;)V

    return-void
.end method
