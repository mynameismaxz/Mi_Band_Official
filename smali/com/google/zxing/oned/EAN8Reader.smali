.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->a:[I

    return-void
.end method


# virtual methods
.method final a()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method protected final decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/zxing/oned/EAN8Reader;->a:[I

    aput v1, v5, v1

    aput v1, v5, v8

    const/4 v0, 0x2

    aput v1, v5, v0

    const/4 v0, 0x3

    aput v1, v5, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    aget v0, p2, v8

    move v3, v1

    :goto_0
    if-ge v3, v9, :cond_1

    if-ge v0, v6, :cond_1

    sget-object v2, Lcom/google/zxing/oned/EAN8Reader;->d:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/oned/EAN8Reader;->a(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v5

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget v7, v5, v0

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/zxing/oned/EAN8Reader;->c:[I

    invoke-static {p1, v0, v8, v2}, Lcom/google/zxing/oned/EAN8Reader;->a(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    aget v0, v0, v8

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_3

    if-ge v2, v6, :cond_3

    sget-object v3, Lcom/google/zxing/oned/EAN8Reader;->d:[[I

    invoke-static {p1, v5, v2, v3}, Lcom/google/zxing/oned/EAN8Reader;->a(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v7, v5

    move v3, v1

    :goto_3
    if-ge v3, v7, :cond_2

    aget v4, v5, v3

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method
