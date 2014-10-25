.class public Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcn/com/smartdevices/bracelet/lab/ui/P;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->a:Landroid/widget/ListView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/P;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;)Lcn/com/smartdevices/bracelet/lab/ui/P;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/P;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->setContentView(I)V

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/N;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/lab/ui/N;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/P;

    invoke-static {}, Lcn/com/smartdevices/bracelet/lab/SportFactory;->getSportsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/P;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/P;

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/P;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/O;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/lab/ui/O;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/P;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/P;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
