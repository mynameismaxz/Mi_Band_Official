.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;


# static fields
.field private static final a:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final b:[C

.field private static final c:[I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->b:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->c:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->d:I

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static a(I)C
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->c:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->b:[C

    aget-char v0, v1, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static a([I)I
    .locals 8

    const/4 v2, 0x0

    array-length v7, p0

    move v0, v2

    move v6, v2

    :goto_0
    if-ge v0, v7, :cond_0

    aget v1, p0, v0

    add-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    move v5, v2

    move v0, v2

    :goto_1
    if-ge v5, v7, :cond_2

    aget v1, p0, v5

    shl-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x9

    div-int v3, v1, v6

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    move v4, v1

    :goto_2
    if-lez v4, :cond_1

    const/4 v1, 0x4

    if-le v4, v1, :cond_3

    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0

    :cond_3
    and-int/lit8 v1, v5, 0x1

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_5

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_3

    :cond_4
    shl-int/2addr v0, v4

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_6
    move v4, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x61

    if-lt v0, v5, :cond_6

    const/16 v5, 0x64

    if-gt v0, v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :pswitch_0
    if-lt v5, v6, :cond_0

    if-gt v5, v7, :cond_0

    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_1
    if-lt v5, v6, :cond_1

    if-gt v5, v7, :cond_1

    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_2
    if-lt v5, v6, :cond_2

    const/16 v0, 0x45

    if-gt v5, v0, :cond_2

    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x46

    if-lt v5, v0, :cond_3

    const/16 v0, 0x57

    if-gt v5, v0, :cond_3

    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_3
    if-lt v5, v6, :cond_4

    const/16 v0, 0x4f

    if-gt v5, v0, :cond_4

    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_1

    :cond_4
    if-ne v5, v7, :cond_5

    const/16 v0, 0x3a

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/CharSequence;II)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    move v4, v1

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    if-ltz v2, :cond_1

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    add-int/lit8 v0, v4, 0x1

    if-le v0, p2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sget-object v2, Lcom/google/zxing/oned/Code93Reader;->b:[C

    rem-int/lit8 v0, v0, 0x2f

    aget-char v0, v2, v0

    if-eq v1, v0, :cond_2

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_2
    return-void
.end method

.method private static a(Lcom/google/zxing/common/BitArray;)[I
    .locals 12

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    const/4 v1, 0x6

    new-array v7, v1, [I

    array-length v8, v7

    move v2, v4

    move v1, v4

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_0

    aget v9, v7, v1

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v8, -0x1

    if-ne v1, v9, :cond_2

    invoke-static {v7}, Lcom/google/zxing/oned/Code93Reader;->a([I)I

    move-result v9

    sget v10, Lcom/google/zxing/oned/Code93Reader;->d:I

    if-ne v9, v10, :cond_1

    new-array v1, v11, [I

    aput v0, v1, v4

    aput v5, v1, v3

    return-object v1

    :cond_1
    aget v9, v7, v4

    aget v10, v7, v3

    add-int/2addr v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v9, v8, -0x2

    invoke-static {v7, v11, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v8, -0x2

    aput v4, v7, v9

    add-int/lit8 v9, v8, -0x1

    aput v4, v7, v9

    add-int/lit8 v1, v1, -0x1

    :goto_2
    aput v3, v7, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static b(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->a(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/Code93Reader;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v5, v2, [I

    const/4 v2, 0x0

    array-length v6, v5

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-virtual {p2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_0

    aget v7, v5, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v6, -0x1

    if-ne v1, v7, :cond_2

    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->a([I)I

    move-result v7

    sget v8, Lcom/google/zxing/oned/Code93Reader;->d:I

    if-ne v7, v8, :cond_1

    const/4 v1, 0x2

    new-array v4, v1, [I

    const/4 v1, 0x0

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v3, v4, v0

    const/4 v0, 0x1

    aget v0, v4, v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x6

    new-array v6, v1, [I

    :goto_2
    invoke-static {p2, v0, v6}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->a([I)I

    move-result v1

    if-gez v1, :cond_5

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x2

    invoke-static {v5, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v6, -0x2

    const/4 v8, 0x0

    aput v8, v5, v7

    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x0

    aput v8, v5, v7

    add-int/lit8 v1, v1, -0x1

    :goto_3
    const/4 v7, 0x1

    aput v7, v5, v1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {v1}, Lcom/google/zxing/oned/Code93Reader;->a(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v6

    const/4 v1, 0x0

    move v2, v0

    :goto_4
    if-ge v1, v8, :cond_6

    aget v9, v6, v1

    add-int/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    const/16 v2, 0x2a

    if-ne v7, v2, :cond_a

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eq v1, v3, :cond_7

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x2

    const/16 v6, 0x14

    invoke-static {v5, v3, v6}, Lcom/google/zxing/oned/Code93Reader;->a(Ljava/lang/CharSequence;II)V

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xf

    invoke-static {v5, v2, v3}, Lcom/google/zxing/oned/Code93Reader;->a(Ljava/lang/CharSequence;II)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    new-instance v1, Lcom/google/zxing/Result;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p1

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v3, 0x1

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v3

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method
