.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method

.method private a(Lcom/google/zxing/common/reedsolomon/a;)[I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v3

    if-ne v3, v0, :cond_0

    new-array v2, v0, [I

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v0

    aput v0, v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v2, v3, [I

    :goto_1
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eq v1, v3, :cond_3

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Error locator degree does not match number of roots"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Lcom/google/zxing/common/reedsolomon/a;[IZ)[I
    .locals 9

    const/4 v3, 0x0

    array-length v5, p2

    new-array v6, v5, [I

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v7

    const/4 v1, 0x1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    if-eq v4, v2, :cond_4

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v8, p2, v2

    invoke-virtual {v0, v8, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v0

    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_0

    or-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v1, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v0

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v2

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v0

    aput v0, v6, v4

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v1, v6, v4

    invoke-virtual {v0, v1, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v0

    aput v0, v6, v4

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    return-object v6

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private a(Lcom/google/zxing/common/reedsolomon/a;Lcom/google/zxing/common/reedsolomon/a;I)[Lcom/google/zxing/common/reedsolomon/a;
    .locals 12

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v1

    if-ge v0, v1, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v3

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v0

    move-object v4, p1

    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v5

    div-int/lit8 v6, p3, 0x2

    if-lt v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "r_{i-1} was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v6

    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v8

    if-lt v7, v8, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->c()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v8

    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v9, v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v5

    invoke-virtual {v4, v7, v8}, Lcom/google/zxing/common/reedsolomon/a;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v2}, Lcom/google/zxing/common/reedsolomon/a;->b(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v3

    invoke-virtual {v5, v0}, Lcom/google/zxing/common/reedsolomon/a;->b(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    move-object p2, v4

    move-object v4, p1

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "sigmaTilde(0) was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v0

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/zxing/common/reedsolomon/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :cond_4
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public final decode([II)V
    .locals 15

    new-instance v4, Lcom/google/zxing/common/reedsolomon/a;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p1

    invoke-direct {v4, v1, v0}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move/from16 v0, p2

    new-array v5, v0, [I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-eqz v8, :cond_0

    add-int/lit8 v1, v2, 0x1

    :goto_1
    invoke-virtual {v6, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v1

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aput v1, v5, v6

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v2, Lcom/google/zxing/common/reedsolomon/a;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v1, v5}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v3, 0x1

    move/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v4

    if-ge v3, v4, :cond_12

    :goto_3
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v6

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v5

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v4

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v3

    move-object v7, v1

    move-object v1, v2

    :goto_4
    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v2

    div-int/lit8 v9, p2, 0x2

    if-lt v2, v9, :cond_6

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/a;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "r_{i-1} was zero"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v9

    :goto_5
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v10

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v11

    if-lt v10, v11, :cond_5

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/a;->c()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v10

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v11

    iget-object v12, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v12, v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v2

    invoke-virtual {v7, v10, v11}, Lcom/google/zxing/common/reedsolomon/a;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v5}, Lcom/google/zxing/common/reedsolomon/a;->b(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v6

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/reedsolomon/a;->b(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    move-object v14, v7

    move-object v7, v1

    move-object v1, v14

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "sigmaTilde(0) was zero"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v2

    invoke-virtual {v7, v1}, Lcom/google/zxing/common/reedsolomon/a;->c(I)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/zxing/common/reedsolomon/a;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aget-object v4, v3, v1

    const/4 v1, 0x1

    aget-object v6, v3, v1

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/a;->b()I

    move-result v5

    const/4 v1, 0x1

    if-ne v5, v1, :cond_8

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/a;->a(I)I

    move-result v3

    aput v3, v1, v2

    :goto_6
    array-length v7, v1

    new-array v9, v7, [I

    const/4 v2, 0x0

    move v4, v2

    :goto_7
    if-ge v4, v7, :cond_f

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v10

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v5, v2

    :goto_8
    if-ge v5, v7, :cond_d

    if-eq v4, v5, :cond_11

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v11, v1, v5

    invoke-virtual {v2, v11, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v2

    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_c

    or-int/lit8 v2, v2, 0x1

    :goto_9
    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v11, v3, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v2

    :goto_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_8

    :cond_8
    new-array v3, v5, [I

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_b
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v7

    if-ge v1, v7, :cond_a

    if-ge v2, v5, :cond_a

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v7

    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_a
    if-eq v2, v5, :cond_b

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "Error locator degree does not match number of roots"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object v1, v3

    goto :goto_6

    :cond_c
    and-int/lit8 v2, v2, -0x2

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v10}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v5

    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v11, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v2

    aput v2, v9, v4

    if-eqz v8, :cond_e

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v3, v9, v4

    invoke-virtual {v2, v3, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v2

    aput v2, v9, v4

    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_2

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_10

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v2, "Bad error location"

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    aget v4, p1, v3

    aget v5, v9, v2

    invoke-static {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b(II)I

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_11
    move v2, v3

    goto/16 :goto_a

    :cond_12
    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_3

    :cond_13
    move v1, v3

    goto/16 :goto_2
.end method
