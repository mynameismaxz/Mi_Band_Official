.class public final Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private final b:Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private final c:Lcom/google/zxing/qrcode/detector/FinderPattern;


# direct methods
.method public constructor <init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->a:Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->b:Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->c:Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-void
.end method


# virtual methods
.method public final getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->a:Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0
.end method

.method public final getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->b:Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0
.end method

.method public final getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->c:Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0
.end method
