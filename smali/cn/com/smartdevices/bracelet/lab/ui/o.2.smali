.class Lcn/com/smartdevices/bracelet/lab/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/n;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/n;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/o;->a:Lcn/com/smartdevices/bracelet/lab/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/o;->a:Lcn/com/smartdevices/bracelet/lab/ui/n;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/n;->a(Lcn/com/smartdevices/bracelet/lab/ui/n;)Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryTestActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryTestActivity;->e(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
