.class public Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String; = "MainMenuFragment"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->e:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->h:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->i:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->m:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->n:Z

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->p:Landroid/view/View;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->q:Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;

    return-void
.end method

.method private a(IJ)Landroid/view/animation/Animation;
    .locals 6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040009

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;
    .locals 3

    const/high16 v2, 0x4040

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/at;

    invoke-direct {v0, p0, p5, p1}, Lcn/com/smartdevices/bracelet/ui/at;-><init>(Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;Ljava/lang/Boolean;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_0
.end method

.method private a()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->n:Z

    const-string v0, "MainMenuFragment"

    const-string v1, "in onMenuPredraw"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const-string v2, "MainMenuFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MainMenuFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "myBackgroundImg w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",myBackgroundImg h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-static {v2, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "MainMenuFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scaleBmp w="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",scaleBmp h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v3, v2, v4}, Lcn/com/smartdevices/bracelet/Blur;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "MainMenuFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "outBmp w="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",outBmp h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    div-int/2addr v4, v0

    invoke-static {v3, v8, v8, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "MainMenuFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cropBmp w="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cropBmp h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v2, v0, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    const-string v0, "MainMenuFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "myGaussianBlurImg w="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",myGaussianBlurImg h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "MainMenuFragment"

    const-string v1, "out onMenuPredraw"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0701ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Utils;->isSupportUnlockScreenByBracelet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0701df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->menuEnterAnimation()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->n:Z

    if-nez v0, :cond_0

    iput-boolean v7, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->n:Z

    const-string v0, "MainMenuFragment"

    const-string v1, "in onMenuPredraw"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const-string v2, "MainMenuFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "MainMenuFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "myBackgroundImg w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",myBackgroundImg h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-static {v2, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "MainMenuFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scaleBmp w="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",scaleBmp h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v3, v2, v4}, Lcn/com/smartdevices/bracelet/Blur;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "MainMenuFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "outBmp w="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",outBmp h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    div-int/2addr v4, v0

    invoke-static {v3, v8, v8, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "MainMenuFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cropBmp w="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cropBmp h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v2, v0, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    const-string v0, "MainMenuFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "myGaussianBlurImg w="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",myGaussianBlurImg h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "MainMenuFragment"

    const-string v1, "out onMenuPredraw"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(IJ)V
    .locals 7

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040009

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private c(IJ)Landroid/view/animation/Animation;
    .locals 6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f04000a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private d(IJ)V
    .locals 7

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f04000a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public menuEnterAnimation()V
    .locals 6

    const-wide/16 v3, 0x0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    const v2, 0x7f040009

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0701ef

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701ee

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701ed

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701ec

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701eb

    const-wide/16 v1, 0x32

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e8

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e7

    const-wide/16 v1, 0x96

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e6

    const-wide/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e5

    const-wide/16 v1, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e4

    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e3

    const-wide/16 v1, 0x15e

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e2

    const-wide/16 v1, 0x190

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    const v0, 0x7f0701e1

    const-wide/16 v1, 0x1c2

    invoke-direct {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b(IJ)V

    return-void
.end method

.method public menuExitAnimation()V
    .locals 9

    const v2, 0x7f04000a

    const/4 v8, 0x0

    const-wide/16 v6, 0x1f4

    const v0, 0x7f0701e1

    const-wide/16 v3, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701e2

    const-wide/16 v3, 0x32

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701e3

    const-wide/16 v3, 0x64

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701e4

    const-wide/16 v3, 0x96

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701e5

    const-wide/16 v3, 0xc8

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701e6

    const-wide/16 v3, 0xfa

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v3, Lcn/com/smartdevices/bracelet/ui/au;

    invoke-direct {v3, p0}, Lcn/com/smartdevices/bracelet/ui/au;-><init>(Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0701e8

    const-wide/16 v3, 0x15e

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701eb

    const-wide/16 v3, 0x190

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701ec

    const-wide/16 v3, 0x1c2

    invoke-direct {p0, v0, v3, v4}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701ed

    invoke-direct {p0, v0, v6, v7}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701ee

    invoke-direct {p0, v0, v6, v7}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    const v0, 0x7f0701ef

    invoke-direct {p0, v0, v6, v7}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d(IJ)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-wide v3, v6

    invoke-direct/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->a(Landroid/view/View;IJLjava/lang/Boolean;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ClickMainMenuItem"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcn/com/smartdevices/bracelet/ui/SettingAboutActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->dismiss()V

    const-string v0, "MenuAbout"

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->menuExitAnimation()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcn/com/smartdevices/bracelet/ui/SettingActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->dismiss()V

    const-string v0, "MenuBracelet"

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcn/com/smartdevices/bracelet/ui/PersonInfoActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->dismiss()V

    const-string v0, "MenuPerson"

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->dismiss()V

    const-string v0, "MenuAlarm"

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcn/com/smartdevices/bracelet/ui/UnlockScreenHelperActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->dismiss()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Utils;->saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcn/com/smartdevices/bracelet/ui/ShareActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "pic_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->dismiss()V

    const-string v0, "MenuShare"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0701e1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f0e0009

    invoke-virtual {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0701e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    const v0, 0x7f0701de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->m:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/ar;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/ar;-><init>(Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const v0, 0x7f0701ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Utils;->isSupportUnlockScreenByBracelet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0701df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->menuEnterAnimation()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f070098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->p:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->p:Landroid/view/View;

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/as;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/as;-><init>(Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->k:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->q:Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->q:Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;

    invoke-interface {v0}, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->j:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setListener(Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/MainMenuFragment;->q:Lcn/com/smartdevices/bracelet/ui/MainMenuFragment$MenuListener;

    return-void
.end method
