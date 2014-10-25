.class Lcn/com/smartdevices/bracelet/lab/ui/T;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/T;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/lab/ui/T;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/T;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/T;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/T;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportFavoriteVoteGridActivity;Landroid/content/Context;)V

    return-void
.end method
