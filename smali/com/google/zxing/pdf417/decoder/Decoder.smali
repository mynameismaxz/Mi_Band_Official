.class public final Lcom/google/zxing/pdf417/decoder/Decoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x3

.field private static final b:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    aget v0, p0, v2

    array-length v1, p0

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p1

    aput v0, p0, v2

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static b([II)I
    .locals 2

    array-length v0, p0

    div-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x200

    if-le p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/google/zxing/pdf417/decoder/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/decoder/a;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->a()[I

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int v2, v3, v2

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->b()[I

    move-result-object v0

    array-length v3, v0

    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_1

    if-ltz v2, :cond_1

    const/16 v3, 0x200

    if-le v2, v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2
    array-length v0, v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3
    array-length v0, v1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4
    aget v0, v1, v5

    array-length v3, v1

    if-le v0, v3, :cond_5

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_5
    if-nez v0, :cond_6

    array-length v0, v1

    if-ge v2, v0, :cond_7

    array-length v0, v1

    sub-int/2addr v0, v2

    aput v0, v1, v5

    :cond_6
    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/b;->a([I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method public final decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 6

    const/4 v1, 0x0

    array-length v3, p1

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v5, p1, v0

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
