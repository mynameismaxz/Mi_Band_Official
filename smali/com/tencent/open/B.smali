.class final Lcom/tencent/open/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/tencent/open/TaskGuide;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TaskGuide;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/B;->b:Lcom/tencent/open/TaskGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tencent/open/B;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/open/B;->b:Lcom/tencent/open/TaskGuide;

    iget v1, p0, Lcom/tencent/open/B;->a:I

    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;I)Lcom/tencent/open/z;

    move-result-object v0

    sget-object v1, Lcom/tencent/open/z;->d:Lcom/tencent/open/z;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/open/B;->b:Lcom/tencent/open/TaskGuide;

    iget v1, p0, Lcom/tencent/open/B;->a:I

    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->b(Lcom/tencent/open/TaskGuide;I)V

    iget-object v0, p0, Lcom/tencent/open/B;->b:Lcom/tencent/open/TaskGuide;

    iget v1, p0, Lcom/tencent/open/B;->a:I

    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->c(Lcom/tencent/open/TaskGuide;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/B;->b:Lcom/tencent/open/TaskGuide;

    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->e(Lcom/tencent/open/TaskGuide;)V

    return-void
.end method
