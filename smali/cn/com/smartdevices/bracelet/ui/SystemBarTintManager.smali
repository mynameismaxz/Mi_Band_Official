.class public Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "qemu.hw.mainkeys"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v5, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x400

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    :cond_0
    const/high16 v2, 0x800

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    :cond_1
    new-instance v1, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    iget-boolean v3, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v5, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    :cond_2
    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_3
    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :array_0
    .array-data 0x4
        0xeft 0x3t 0x1t 0x1t
        0xf0t 0x3t 0x1t 0x1t
    .end array-data
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    const/high16 v1, -0x6700

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    const/high16 v1, -0x6700

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method


# virtual methods
.method public getConfig()Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->b:Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->f:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->e:Z

    return v0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 2

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->f:Z

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(F)V
    .locals 2

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->e:Z

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setStatusBarTintResource(I)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTintAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setStatusBarAlpha(F)V

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setNavigationBarAlpha(F)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setStatusBarTintColor(I)V

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setNavigationBarTintColor(I)V

    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTintResource(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setStatusBarTintResource(I)V

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintManager;->setNavigationBarTintResource(I)V

    return-void
.end method
