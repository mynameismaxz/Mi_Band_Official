.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/i;
.super Lcom/google/zxing/oned/rss/expanded/decoders/h;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/h;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method protected abstract a(Ljava/lang/StringBuilder;I)V
.end method

.method protected final b(Ljava/lang/StringBuilder;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/i;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/s;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/i;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/i;->a(I)I

    move-result v2

    const v1, 0x186a0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    div-int v3, v2, v1

    if-nez v3, :cond_0

    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
