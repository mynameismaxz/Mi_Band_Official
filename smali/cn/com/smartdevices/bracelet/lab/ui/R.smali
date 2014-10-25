.class Lcn/com/smartdevices/bracelet/lab/ui/R;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Lcn/com/smartdevices/bracelet/lab/ui/V;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Lcn/com/smartdevices/bracelet/lab/ui/V;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/com/smartdevices/bracelet/lab/ui/V;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->c(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Lcn/com/smartdevices/bracelet/lab/ui/V;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/com/smartdevices/bracelet/lab/ui/V;->a(I)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "sportSelected"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Lcn/com/smartdevices/bracelet/lab/ui/V;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Lcn/com/smartdevices/bracelet/lab/ui/V;->a(IZ)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Landroid/widget/GridView;->setItemChecked(IZ)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    const-string v3, "sportNameResId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/R;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
