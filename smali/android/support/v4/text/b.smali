.class final Landroid/support/v4/text/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x700

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:I

.field private f:I

.field private g:C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x700

    new-array v0, v3, [B

    sput-object v0, Landroid/support/v4/text/b;->b:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Landroid/support/v4/text/b;->b:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/text/b;->d:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/b;->e:I

    return-void
.end method

.method private static a(C)B
    .locals 1

    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/support/v4/text/b;->b:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_0
.end method

.method private c()B
    .locals 7

    const/16 v6, 0x3c

    const/16 v0, 0xc

    iget-object v1, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/b;->g:C

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/text/b;->f:I

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    invoke-static {v1}, Landroid/support/v4/text/b;->a(C)B

    move-result v1

    iget-boolean v2, p0, Landroid/support/v4/text/b;->d:Z

    if-eqz v2, :cond_8

    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    if-ne v2, v6, :cond_6

    iget v1, p0, Landroid/support/v4/text/b;->f:I

    :cond_2
    :goto_1
    iget v2, p0, Landroid/support/v4/text/b;->f:I

    iget v3, p0, Landroid/support/v4/text/b;->e:I

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/b;->g:C

    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    :cond_3
    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    :cond_4
    iget v3, p0, Landroid/support/v4/text/b;->f:I

    iget v4, p0, Landroid/support/v4/text/b;->e:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/b;->g:C

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_5
    iput v1, p0, Landroid/support/v4/text/b;->f:I

    iput-char v6, p0, Landroid/support/v4/text/b;->g:C

    const/16 v0, 0xd

    goto :goto_0

    :cond_6
    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_8

    :cond_7
    iget v1, p0, Landroid/support/v4/text/b;->f:I

    iget v2, p0, Landroid/support/v4/text/b;->e:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_7

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method private d()B
    .locals 7

    const/16 v1, 0xd

    const/16 v0, 0xc

    const/16 v6, 0x3e

    const/16 v5, 0x3b

    iget-object v2, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/b;->g:C

    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/b;->f:I

    iget-char v2, p0, Landroid/support/v4/text/b;->g:C

    invoke-static {v2}, Landroid/support/v4/text/b;->a(C)B

    move-result v2

    iget-boolean v3, p0, Landroid/support/v4/text/b;->d:Z

    if-eqz v3, :cond_9

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    if-ne v3, v6, :cond_6

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    :cond_2
    :goto_1
    iget v3, p0, Landroid/support/v4/text/b;->f:I

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/b;->g:C

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    if-eq v3, v6, :cond_5

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    :cond_3
    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    :cond_4
    iget v4, p0, Landroid/support/v4/text/b;->f:I

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v5, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Landroid/support/v4/text/b;->g:C

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_5
    iput v2, p0, Landroid/support/v4/text/b;->f:I

    iput-char v6, p0, Landroid/support/v4/text/b;->g:C

    move v0, v1

    goto :goto_0

    :cond_6
    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    if-ne v3, v5, :cond_9

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    :cond_7
    iget v3, p0, Landroid/support/v4/text/b;->f:I

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/b;->g:C

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    const/16 v4, 0x26

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Landroid/support/v4/text/b;->g:C

    if-ne v3, v5, :cond_7

    :cond_8
    iput v2, p0, Landroid/support/v4/text/b;->f:I

    iput-char v5, p0, Landroid/support/v4/text/b;->g:C

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method private e()B
    .locals 5

    iget v0, p0, Landroid/support/v4/text/b;->f:I

    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/v4/text/b;->f:I

    iget v2, p0, Landroid/support/v4/text/b;->e:I

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/b;->g:C

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    const/16 v0, 0xc

    :goto_1
    return v0

    :cond_1
    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    :cond_3
    iget v2, p0, Landroid/support/v4/text/b;->f:I

    iget v3, p0, Landroid/support/v4/text/b;->e:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/b;->g:C

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_4
    iput v0, p0, Landroid/support/v4/text/b;->f:I

    const/16 v0, 0x3c

    iput-char v0, p0, Landroid/support/v4/text/b;->g:C

    const/16 v0, 0xd

    goto :goto_1
.end method

.method private f()B
    .locals 5

    const/16 v4, 0x3e

    iget v0, p0, Landroid/support/v4/text/b;->f:I

    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/v4/text/b;->f:I

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/b;->g:C

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    const/16 v0, 0xc

    :goto_1
    return v0

    :cond_1
    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    if-eq v1, v4, :cond_4

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    :cond_3
    iget v2, p0, Landroid/support/v4/text/b;->f:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/b;->g:C

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_4
    iput v0, p0, Landroid/support/v4/text/b;->f:I

    iput-char v4, p0, Landroid/support/v4/text/b;->g:C

    const/16 v0, 0xd

    goto :goto_1
.end method

.method private g()B
    .locals 3

    :cond_0
    iget v0, p0, Landroid/support/v4/text/b;->f:I

    iget v1, p0, Landroid/support/v4/text/b;->e:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/b;->g:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_1
    const/16 v0, 0xc

    return v0
.end method

.method private h()B
    .locals 4

    const/16 v3, 0x3b

    iget v0, p0, Landroid/support/v4/text/b;->f:I

    :cond_0
    iget v1, p0, Landroid/support/v4/text/b;->f:I

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/b;->g:C

    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_1
    iget-char v1, p0, Landroid/support/v4/text/b;->g:C

    if-ne v1, v3, :cond_0

    :cond_2
    iput v0, p0, Landroid/support/v4/text/b;->f:I

    iput-char v3, p0, Landroid/support/v4/text/b;->g:C

    const/16 v0, 0xd

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 13

    const/16 v12, 0x3c

    const/16 v7, 0xc

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/text/b;->f:I

    move v0, v1

    move v3, v1

    move v2, v1

    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/support/v4/text/b;->f:I

    iget v8, p0, Landroid/support/v4/text/b;->e:I

    if-ge v6, v8, :cond_d

    if-nez v0, :cond_d

    iget-object v6, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v8, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroid/support/v4/text/b;->g:C

    iget-char v6, p0, Landroid/support/v4/text/b;->g:C

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v8, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v6, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    iget v8, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/v4/text/b;->f:I

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/v4/text/b;->f:I

    iget-char v6, p0, Landroid/support/v4/text/b;->g:C

    invoke-static {v6}, Landroid/support/v4/text/b;->a(C)B

    move-result v6

    iget-boolean v8, p0, Landroid/support/v4/text/b;->d:Z

    if-eqz v8, :cond_0

    iget-char v8, p0, Landroid/support/v4/text/b;->g:C

    if-ne v8, v12, :cond_7

    iget v6, p0, Landroid/support/v4/text/b;->f:I

    :cond_2
    :goto_2
    iget v8, p0, Landroid/support/v4/text/b;->f:I

    iget v9, p0, Landroid/support/v4/text/b;->e:I

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v9, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/support/v4/text/b;->g:C

    iget-char v8, p0, Landroid/support/v4/text/b;->g:C

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    iget-char v8, p0, Landroid/support/v4/text/b;->g:C

    const/16 v9, 0x22

    if-eq v8, v9, :cond_4

    iget-char v8, p0, Landroid/support/v4/text/b;->g:C

    const/16 v9, 0x27

    if-ne v8, v9, :cond_2

    :cond_4
    iget-char v8, p0, Landroid/support/v4/text/b;->g:C

    :cond_5
    iget v9, p0, Landroid/support/v4/text/b;->f:I

    iget v10, p0, Landroid/support/v4/text/b;->e:I

    if-ge v9, v10, :cond_2

    iget-object v9, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v10, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, p0, Landroid/support/v4/text/b;->g:C

    if-ne v9, v8, :cond_5

    goto :goto_2

    :cond_6
    iput v6, p0, Landroid/support/v4/text/b;->f:I

    iput-char v12, p0, Landroid/support/v4/text/b;->g:C

    const/16 v6, 0xd

    goto :goto_1

    :cond_7
    iget-char v8, p0, Landroid/support/v4/text/b;->g:C

    const/16 v9, 0x26

    if-ne v8, v9, :cond_0

    :cond_8
    iget v6, p0, Landroid/support/v4/text/b;->f:I

    iget v8, p0, Landroid/support/v4/text/b;->e:I

    if-ge v6, v8, :cond_9

    iget-object v6, p0, Landroid/support/v4/text/b;->c:Ljava/lang/String;

    iget v8, p0, Landroid/support/v4/text/b;->f:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroid/support/v4/text/b;->f:I

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroid/support/v4/text/b;->g:C

    const/16 v8, 0x3b

    if-ne v6, v8, :cond_8

    :cond_9
    move v6, v7

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    goto/16 :goto_0

    :pswitch_5
    if-nez v2, :cond_b

    :cond_a
    :goto_3
    return v4

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :pswitch_6
    if-nez v2, :cond_c

    move v4, v5

    goto :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    if-nez v0, :cond_e

    move v4, v1

    goto :goto_3

    :cond_e
    if-eqz v3, :cond_f

    move v4, v3

    goto :goto_3

    :cond_f
    :goto_4
    iget v3, p0, Landroid/support/v4/text/b;->f:I

    if-lez v3, :cond_11

    invoke-direct {p0}, Landroid/support/v4/text/b;->d()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_7
    if-eq v0, v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :pswitch_8
    if-ne v0, v2, :cond_10

    move v4, v5

    goto :goto_3

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    move v4, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method final b()I
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/text/b;->e:I

    iput v0, p0, Landroid/support/v4/text/b;->f:I

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/support/v4/text/b;->f:I

    if-lez v5, :cond_1

    invoke-direct {p0}, Landroid/support/v4/text/b;->d()B

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_2

    move v1, v3

    :cond_1
    :goto_1
    return v1

    :cond_2
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_3
    if-ne v0, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_4
    if-nez v2, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_5
    if-ne v0, v2, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
