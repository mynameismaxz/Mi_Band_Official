.class public Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyleExtractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;-><init>()V

    sput-object v0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->a:Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->c:Ljava/util/HashSet;

    return-void
.end method

.method public static addTextStyleExtractor(Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyleExtractor;)V
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->a:Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->a:Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;

    return-object v0
.end method


# virtual methods
.method public applyTypeface(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    aput v1, v0, v2

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->applyTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public applyTypeface(Landroid/widget/TextView;Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->getTypeface(Landroid/content/Context;Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public applyTypeface(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public getTypeface(Landroid/content/Context;Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    move-object v1, v0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-interface {p2}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyleExtractor;

    invoke-virtual {v0, p2}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyleExtractor;->getTextStyle(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager;->getTypeface(Landroid/content/Context;Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
