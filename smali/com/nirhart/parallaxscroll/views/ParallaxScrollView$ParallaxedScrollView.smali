.class public Lcom/nirhart/parallaxscroll/views/ParallaxScrollView$ParallaxedScrollView;
.super Lcom/nirhart/parallaxscroll/views/ParallaxedView;


# instance fields
.field private synthetic a:Lcom/nirhart/parallaxscroll/views/ParallaxScrollView;


# direct methods
.method public constructor <init>(Lcom/nirhart/parallaxscroll/views/ParallaxScrollView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/nirhart/parallaxscroll/views/ParallaxedView;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected translatePreICS(Landroid/view/View;F)V
    .locals 2

    float-to-int v0, p2

    iget v1, p0, Lcom/nirhart/parallaxscroll/views/ParallaxScrollView$ParallaxedScrollView;->lastOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    float-to-int v0, p2

    iput v0, p0, Lcom/nirhart/parallaxscroll/views/ParallaxScrollView$ParallaxedScrollView;->lastOffset:I

    return-void
.end method
