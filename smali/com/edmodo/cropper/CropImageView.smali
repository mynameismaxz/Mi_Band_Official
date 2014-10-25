.class public Lcom/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final DEFAULT_ASPECT_RATIO_X:I = 0x1

.field public static final DEFAULT_ASPECT_RATIO_Y:I = 0x1

.field public static final DEFAULT_FIXED_ASPECT_RATIO:Z = false

.field public static final DEFAULT_GUIDELINES:I = 0x1

.field private static final a:Landroid/graphics/Rect;

.field private static final b:I = 0x0

.field private static final c:Ljava/lang/String; = "DEGREES_ROTATED"

.field private static final d:Ljava/lang/String; = "CropImageView"


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

.field private g:Landroid/graphics/Bitmap;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/edmodo/cropper/CropImageView;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->k:I

    iput-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->l:Z

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->m:I

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->n:I

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->o:I

    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->k:I

    iput-boolean v1, p0, Lcom/edmodo/cropper/CropImageView;->l:Z

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->m:I

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->n:I

    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->o:I

    sget-object v0, Lcom/xiaomi/hm/health/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->k:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->l:Z

    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->m:I

    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->n:I

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->a(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static a(III)I
    .locals 1

    const/high16 v0, 0x40000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0700c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->e:Landroid/widget/ImageView;

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->o:I

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageResource(I)V

    const v0, 0x7f0700c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->k:I

    iget-boolean v2, p0, Lcom/edmodo/cropper/CropImageView;->l:Z

    iget v3, p0, Lcom/edmodo/cropper/CropImageView;->m:I

    iget v4, p0, Lcom/edmodo/cropper/CropImageView;->n:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setInitialAttributeValues(IZII)V

    return-void
.end method


# virtual methods
.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v4

    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v5

    mul-float/2addr v3, v1

    mul-float/2addr v0, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v4, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public getCroppedImage(II)Landroid/graphics/Bitmap;
    .locals 10

    const/high16 v8, 0x42c80000

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v4

    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v5

    mul-float/2addr v3, v1

    mul-float v6, v0, v2

    mul-float/2addr v4, v1

    mul-float v7, v5, v2

    const-string v0, "CropImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", actualCropWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actualCropHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmpg-float v0, v4, v8

    if-ltz v0, :cond_1

    cmpg-float v0, v7, v8

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_3

    int-to-float v0, p2

    cmpg-float v0, v0, v7

    if-gez v0, :cond_4

    :cond_3
    int-to-float v0, p1

    div-float/2addr v0, v4

    int-to-float v1, p2

    div-float/2addr v1, v7

    const-string v2, "CropImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scaleWidth = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", scaleHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    float-to-int v1, v3

    float-to-int v2, v6

    float-to-int v3, v4

    float-to-int v4, v7

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getImageResource()I
    .locals 1

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->o:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->i:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->j:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const-wide/high16 v3, 0x7ff0000000000000L

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v5, v1, :cond_6

    int-to-double v1, v5

    iget-object v6, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v1, v6

    :goto_0
    iget-object v6, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v0, v6, :cond_5

    int-to-double v6, v0

    iget-object v10, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v6, v10

    :goto_1
    cmpl-double v10, v1, v3

    if-nez v10, :cond_1

    cmpl-double v3, v6, v3

    if-eqz v3, :cond_3

    :cond_1
    cmpg-double v3, v1, v6

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    move v2, v5

    :goto_2
    invoke-static {v8, v5, v2}, Lcom/edmodo/cropper/CropImageView;->a(III)I

    move-result v2

    invoke-static {v9, v0, v1}, Lcom/edmodo/cropper/CropImageView;->a(III)I

    move-result v0

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->i:I

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->j:I

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->i:I

    iget v3, p0, Lcom/edmodo/cropper/CropImageView;->j:I

    invoke-static {v0, v1, v2, v3}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->i:I

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    :goto_3
    return-void

    :cond_2
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object v2, Lcom/edmodo/cropper/CropImageView;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v0}, Lcom/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_5
    move-wide v6, v3

    goto :goto_1

    :cond_6
    move-wide v1, v3

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "DEGREES_ROTATED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    invoke-virtual {p0, v1}, Lcom/edmodo/cropper/CropImageView;->rotateImage(I)V

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    :cond_0
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object v1, Lcom/edmodo/cropper/CropImageView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public rotateImage(I)V
    .locals 7

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/edmodo/cropper/CropImageView;->h:I

    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2

    iput p1, p0, Lcom/edmodo/cropper/CropImageView;->m:I

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->m:I

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioX(I)V

    iput p2, p0, Lcom/edmodo/cropper/CropImageView;->n:I

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->n:I

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioY(I)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setGuidelines(I)V
    .locals 1

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->setGuidelines(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->f:Lcom/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/CropOverlayView;->resetCropOverlayView()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const-string v0, "Orientation"

    invoke-virtual {p2, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10e

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImageResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
