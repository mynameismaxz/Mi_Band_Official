.class Lcn/com/smartdevices/bracelet/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/ae;

.field private final synthetic b:Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/ae;Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/af;->a:Lcn/com/smartdevices/bracelet/ui/ae;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/ui/af;->b:Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/af;->b:Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/af;->a:Lcn/com/smartdevices/bracelet/ui/ae;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/af;->b:Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/ae;->a(Lcn/com/smartdevices/bracelet/ui/ae;Lcn/com/smartdevices/bracelet/ui/DynamicListFragment$DynamicItem;)V

    :cond_0
    return-void
.end method
