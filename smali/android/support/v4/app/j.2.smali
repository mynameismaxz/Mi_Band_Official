.class final Landroid/support/v4/app/j;
.super Landroid/support/v4/app/ActivityOptionsCompat;


# instance fields
.field private final a:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/j;->a:Landroid/support/v4/app/i;

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/app/j;

    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/support/v4/app/i;

    iget-object v1, p1, Landroid/support/v4/app/j;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->a(Landroid/support/v4/app/i;)V

    :cond_0
    return-void
.end method
