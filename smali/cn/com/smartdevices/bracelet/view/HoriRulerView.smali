.class public Lcn/com/smartdevices/bracelet/view/HoriRulerView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final a:Ljava/lang/String; = "HoriRulerView"


# instance fields
.field private b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/LayoutInflater;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x32

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->f:I

    const/16 v0, 0x50

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x32

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->f:I

    const/16 v0, 0x50

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->g:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->d:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030055

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f070187

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    const v0, 0x7f070188

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->c:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->setIndicatorView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x32

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->f:I

    const/16 v0, 0x50

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->g:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getCurValue()F
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->getCurValue()F

    move-result v0

    return v0
.end method

.method public getScrollLeft()I
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->getScrollLeft()I

    move-result v0

    return v0
.end method

.method public initRuler(IIILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->f:I

    iput p2, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->g:I

    :goto_0
    if-lt p1, p2, :cond_0

    const-string v0, "HoriRulerView"

    const-string v1, "initRuler"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    iget v1, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->f:I

    iget v2, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->g:I

    invoke-virtual {v0, v1, v2, p4}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->setStartEnd(IILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f07018c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->addView(Landroid/view/View;)V

    add-int/2addr p1, p3

    goto :goto_0
.end method

.method public setScroll(I)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/HoriRulerView;->b:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->setScroll(I)V

    return-void
.end method
