.class public Lcom/xiaomi/channel/sdk/MLImgObj;
.super Ljava/lang/Object;


# static fields
.field private static b:I = 0x200000


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field public filePath:Ljava/lang/String;

.field public mImgSize:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->mImgSize:J

    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCompressBmp()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->mImgSize:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->mImgSize:J

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    int-to-double v5, v0

    div-double/2addr v5, v2

    double-to-int v0, v5

    int-to-double v5, v1

    div-double v1, v5, v2

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v2}, Lcom/xiaomi/channel/sdk/ShareUtils;->compressBitmapWithNoDistortion(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getImgBmp()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
