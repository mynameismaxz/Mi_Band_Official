.class Lcn/com/smartdevices/bracelet/lab/ui/S;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/S;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/content/Context;)V

    return-void
.end method
