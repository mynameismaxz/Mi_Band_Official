.class public Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;
.super Lcn/com/smartdevices/bracelet/chart/base/PieChart;


# static fields
.field private static final a:Ljava/lang/String; = "Chart.DynamicPieChart"

.field private static final b:F = 1.33f

.field private static final c:F = 14.33f

.field private static final d:F = 16.33f

.field private static final e:I = 0xc8


# instance fields
.field private f:Z

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:F

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:F

.field private p:[F

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Canvas;

.field private s:Z

.field private t:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const v3, 0x3faa3d71

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/chart/base/PieChart;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->k:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    const-string v1, "#e8edf3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->k:Landroid/graphics/Paint;

    const-string v1, "#33e8edf3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x416547ae

    iget v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->o:F

    const v0, 0x4182a3d7

    iget v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->l:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    const-string v1, "#33e8edf3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->t:Landroid/view/View;

    return-void
.end method

.method private a(FFFLandroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, p3, v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->l:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    invoke-static {p4, v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->erase(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_0
    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->k:Landroid/graphics/Paint;

    const/16 v6, 0xc8

    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;I)V
    .locals 14

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    if-nez v1, :cond_0

    const/16 v1, 0x320

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v1, p4, v1

    iget v2, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->l:F

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    sub-float v2, v1, v2

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->m:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    sub-float v1, p4, v1

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->l:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->o:F

    sub-float v3, v1, v3

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0xc8

    if-lt v1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    const/4 v2, 0x0

    shl-int/lit8 v3, p6, 0x2

    move-object/from16 v0, p5

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void

    :cond_1
    const v4, 0x3d00adfd

    int-to-float v5, v1

    mul-float/2addr v4, v5

    move/from16 v0, p2

    float-to-double v5, v0

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    move/from16 v0, p3

    float-to-double v6, v0

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v6, v6

    move/from16 v0, p2

    float-to-double v7, v0

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    float-to-double v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-float v7, v7

    move/from16 v0, p3

    float-to-double v8, v0

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    float-to-double v12, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    iget-object v8, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    shl-int/lit8 v9, v1, 0x2

    aput v5, v8, v9

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    shl-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aput v6, v5, v8

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    shl-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x2

    aput v7, v5, v6

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->p:[F

    shl-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x3

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->f:Z

    return-void
.end method

.method protected drawPie(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V
    .locals 7

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    invoke-direct {p0, p3, p4, p5, v0}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->a(FFFLandroid/graphics/Canvas;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->s:Z

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    iget v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->g:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    mul-float v0, p6, p7

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v0, 0x3f80

    :cond_1
    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->f:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mRotate:F

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v1, 0x3e99999a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const v0, 0x3e99999a

    :cond_2
    const v1, 0x3f19999a

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const v0, 0x3f19999a

    :cond_3
    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x4348

    mul-float/2addr v0, v1

    float-to-int v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-direct {p0, p3, p4, p5, p1}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->a(FFFLandroid/graphics/Canvas;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensityScale:F

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->h:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->drawBitmapCenter(Landroid/graphics/Canvas;FFFLandroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensityScale:F

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->i:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->drawBitmapCenter(Landroid/graphics/Canvas;FFFLandroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_7

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    :cond_7
    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x4348

    mul-float/2addr v0, v1

    float-to-int v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;I)V

    goto :goto_2

    :cond_8
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->j:Landroid/graphics/Paint;

    const/16 v6, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;I)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRectChanged(Landroid/graphics/RectF;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x41f8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/chart/base/PieChart;->onRectChanged(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x4178

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x4000

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->mDensity:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iput-boolean v6, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->s:Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x7

    invoke-direct {v1, v6, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iput-object v4, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->r:Landroid/graphics/Canvas;

    iput-object v4, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->t:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->g:I

    return-void
.end method

.method public showLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChart;->f:Z

    return-void
.end method