.class public Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcn/com/smartdevices/bracelet/lab/ui/V;

.field private b:Landroid/widget/GridView;

.field private final c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a:Lcn/com/smartdevices/bracelet/lab/ui/V;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b:Landroid/widget/GridView;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/R;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/lab/ui/R;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->c:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b:Landroid/widget/GridView;

    return-object v0
.end method

.method private a()V
    .locals 5

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c022e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030027

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0700cc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v3, 0x7f0700c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcn/com/smartdevices/bracelet/lab/ui/S;

    invoke-direct {v4, p0, v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/S;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700ca

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcn/com/smartdevices/bracelet/lab/ui/T;

    invoke-direct {v2, p0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/T;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0c0230

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Lcn/com/smartdevices/bracelet/lab/ui/V;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a:Lcn/com/smartdevices/bracelet/lab/ui/V;

    return-object v0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->setContentView(I)V

    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b:Landroid/widget/GridView;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/V;

    invoke-static {}, Lcn/com/smartdevices/bracelet/lab/ui/FavoriteSportItemCreator;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/V;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a:Lcn/com/smartdevices/bracelet/lab/ui/V;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setChoiceMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a:Lcn/com/smartdevices/bracelet/lab/ui/V;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a:Lcn/com/smartdevices/bracelet/lab/ui/V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a:Lcn/com/smartdevices/bracelet/lab/ui/V;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/V;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
