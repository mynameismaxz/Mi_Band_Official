.class final Lcn/com/smartdevices/bracelet/lab/ui/P;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;

.field private b:[Ljava/lang/String;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->c:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/P;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/Q;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;

    invoke-direct {v1, v0, v3}, Lcn/com/smartdevices/bracelet/lab/ui/Q;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFactoryMainActivity;Lcn/com/smartdevices/bracelet/lab/ui/Q;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030008

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/lab/ui/Q;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/P;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "Situps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/lab/ui/Q;->a:Landroid/widget/TextView;

    const v1, 0x7f0c0208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/ui/Q;

    goto :goto_0

    :cond_2
    const-string v2, "RopeSkipping"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/lab/ui/Q;->a:Landroid/widget/TextView;

    const v1, 0x7f0c0209

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const-string v2, "Other"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/lab/ui/Q;->a:Landroid/widget/TextView;

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const-string v2, "MoreSportFavorite"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/lab/ui/Q;->a:Landroid/widget/TextView;

    const v1, 0x7f0c021f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
