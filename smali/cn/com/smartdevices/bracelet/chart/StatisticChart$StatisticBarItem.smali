.class public Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;
.super Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;


# instance fields
.field public value1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFFFF)V
    .locals 8

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->mRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V

    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFF)V
    .locals 12

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->needDraw:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, -0x4080

    cmpl-float v0, p4, v0

    if-nez v0, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v2, p7

    :goto_1
    const/high16 v4, -0x4080

    cmpl-float v4, p5, v4

    if-nez v4, :cond_6

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value1:I

    int-to-float v4, v4

    iget v5, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v2, v4

    :goto_2
    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    sub-float v1, v2, v3

    mul-float/2addr v1, p3

    add-float v10, v3, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v3, v0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->mRenderer:Lcn/com/smartdevices/bracelet/chart/base/Renderer;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/chart/base/Renderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->getParent()Lcn/com/smartdevices/bracelet/chart/base/BaseChart;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/StatisticChart;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->f(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_7

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->g(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v5

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->h(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v3

    iget v8, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value1:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value:I

    if-lez v8, :cond_2

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    :goto_3
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->k(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)F

    move-result v8

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->l(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)F

    move-result v9

    iget v7, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_3

    iget v7, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_8

    :cond_3
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->m(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v8

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->m(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v7

    const/high16 v9, -0x4080

    cmpl-float v9, p4, v9

    if-lez v9, :cond_e

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->n(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v8

    move v9, v5

    :goto_4
    const/high16 v11, -0x4080

    cmpl-float v11, p5, v11

    if-lez v11, :cond_d

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->n(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v0

    :goto_5
    invoke-static {v9, v5, p3}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->colorToColor(IIF)I

    move-result v3

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->mRenderer:Lcn/com/smartdevices/bracelet/chart/base/Renderer;

    iget-object v5, v5, Lcn/com/smartdevices/bracelet/chart/base/Renderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v6, :cond_4

    invoke-static {v8, v0, p3}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->colorToColor(IIF)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    :goto_6
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->mRenderer:Lcn/com/smartdevices/bracelet/chart/base/Renderer;

    iget-object v5, v0, Lcn/com/smartdevices/bracelet/chart/base/Renderer;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v10

    move-object v0, p1

    move v3, v1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value1:I

    int-to-float v2, v2

    iget v3, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    move/from16 v1, p4

    move/from16 v3, p6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value1:I

    int-to-float v4, v4

    iget v5, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->value:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    goto/16 :goto_2

    :cond_7
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->f(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->i(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v5

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->j(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v3

    goto/16 :goto_3

    :cond_8
    const/4 v7, 0x0

    iget v11, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v11, v11, v8

    if-gez v11, :cond_a

    iget v7, p2, Landroid/graphics/RectF;->left:F

    sub-float v7, v8, v7

    :cond_9
    :goto_7
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    cmpl-float v9, v7, v8

    if-ltz v9, :cond_b

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->m(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v0

    :goto_8
    iget-object v5, p0, Lcn/com/smartdevices/bracelet/chart/StatisticChart$StatisticBarItem;->mRenderer:Lcn/com/smartdevices/bracelet/chart/base/Renderer;

    iget-object v5, v5, Lcn/com/smartdevices/bracelet/chart/base/Renderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_a
    iget v8, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v9

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-nez v9, :cond_c

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->n(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v0

    move v3, v5

    goto :goto_8

    :cond_c
    div-float/2addr v7, v8

    invoke-static {v5, v3, v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->colorToColor(IIF)I

    move-result v3

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->n(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v5

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/StatisticChart;->m(Lcn/com/smartdevices/bracelet/chart/StatisticChart;)I

    move-result v0

    invoke-static {v5, v0, v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->colorToColor(IIF)I

    move-result v0

    goto :goto_8

    :cond_d
    move v0, v7

    move v5, v3

    goto/16 :goto_5

    :cond_e
    move v9, v3

    goto/16 :goto_4
.end method
