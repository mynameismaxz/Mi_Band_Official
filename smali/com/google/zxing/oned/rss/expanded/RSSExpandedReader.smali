.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;


# static fields
.field private static final a:[I = null

.field private static final b:[I = null

.field private static final c:[I = null

.field private static final d:[[I = null

.field private static final e:[[I = null

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:[[I = null

#the value of this static final field might be set in the static constructor
.field private static final m:I = 0x0

.field private static final n:I = 0xb


# instance fields
.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/a;",
            ">;"
        }
    .end annotation
.end field

.field private final p:[I

.field private final q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->c:[I

    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->d:[[I

    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->e:[[I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->l:[[I

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->l:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    array-length v0, v0

    sput v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->m:I

    return-void

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x1t 0x0t 0x0t
        0x6ct 0x5t 0x0t 0x0t
        0x84t 0xbt 0x0t 0x0t
        0x94t 0xft 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xbdt 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xc1t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x3et 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xb9t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x2et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x4ct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x2bt 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x46t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x86t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x94t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x78t 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0xa1t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x37t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    sget v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->m:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    return-void
.end method

.method private static a(Lcom/google/zxing/common/BitArray;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/a;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_8

    add-int/lit8 v0, v1, -0x1

    :goto_0
    mul-int/lit8 v0, v0, 0xc

    new-instance v8, Lcom/google/zxing/common/BitArray;

    invoke-direct {v8, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    move v1, v4

    move v0, v7

    :goto_1
    if-ltz v1, :cond_1

    shl-int v2, v3, v1

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    move v2, v3

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    move v5, v4

    :goto_3
    if-ltz v5, :cond_3

    shl-int v6, v3, v5

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    invoke-virtual {v8, v1}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_2
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v6

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v6

    move v0, v1

    move v1, v4

    :goto_4
    if-ltz v1, :cond_6

    shl-int v5, v3, v1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_4
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v5

    goto :goto_4

    :cond_5
    move v0, v1

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_7
    invoke-static {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    new-instance v4, Lcom/google/zxing/Result;

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    aget-object v2, v2, v3

    aput-object v2, v6, v3

    const/4 v2, 0x2

    aget-object v7, v0, v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    aget-object v0, v0, v3

    aput-object v0, v6, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v1, v5, v6, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v4

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 13

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    :cond_0
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4188

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_5

    const/high16 v1, 0x3f80

    aget v8, v2, v0

    int-to-float v8, v8

    mul-float/2addr v1, v8

    div-float v8, v1, v3

    const/high16 v1, 0x3f00

    add-float/2addr v1, v8

    float-to-int v1, v1

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_1
    shr-int/lit8 v9, v0, 0x1

    and-int/lit8 v10, v0, 0x1

    if-nez v10, :cond_4

    aput v1, v6, v9

    int-to-float v1, v1

    sub-float v1, v8, v1

    aput v1, v4, v9

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ge v1, v0, :cond_0

    aget v3, v2, v1

    aget v4, v2, v0

    aput v4, v2, v1

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    const/16 v9, 0x8

    if-le v1, v9, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    aput v1, v7, v9

    int-to-float v1, v1

    sub-float v1, v8, v1

    aput v1, v5, v9

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v9

    add-int v0, v8, v9

    add-int/lit8 v10, v0, -0x11

    and-int/lit8 v0, v8, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    move v5, v0

    :goto_4
    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    move v4, v0

    :goto_5
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v0, 0xd

    if-le v8, v0, :cond_a

    const/4 v2, 0x1

    :cond_6
    :goto_6
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v11, 0xd

    if-le v9, v11, :cond_b

    const/4 v0, 0x1

    :cond_7
    :goto_7
    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    if-eqz v5, :cond_e

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    const/4 v0, 0x0

    move v5, v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    move v4, v0

    goto :goto_5

    :cond_a
    const/4 v0, 0x4

    if-ge v8, v0, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x4

    if-ge v9, v11, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x1

    :cond_d
    :goto_8
    if-eqz v3, :cond_1a

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_e
    if-nez v4, :cond_f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v11, -0x1

    if-ne v10, v11, :cond_14

    if-eqz v5, :cond_12

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    if-nez v4, :cond_13

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    const/4 v1, 0x1

    goto :goto_8

    :cond_14
    if-nez v10, :cond_18

    if-eqz v5, :cond_17

    if-nez v4, :cond_15

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_15
    if-ge v8, v9, :cond_16

    const/4 v3, 0x1

    const/4 v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_17
    if-eqz v4, :cond_d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_19
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    :cond_1a
    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_1b
    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    :cond_1d
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_1e
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    if-eqz p3, :cond_20

    const/4 v0, 0x0

    :goto_9
    add-int/2addr v1, v0

    if-eqz p4, :cond_21

    const/4 v0, 0x0

    :goto_a
    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_b
    if-ltz v1, :cond_22

    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->e:[[I

    aget-object v2, v2, v4

    mul-int/lit8 v5, v1, 0x2

    aget v2, v2, v5

    aget v5, v6, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    :cond_1f
    aget v2, v6, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_b

    :cond_20
    const/4 v0, 0x2

    goto :goto_9

    :cond_21
    const/4 v0, 0x1

    goto :goto_a

    :cond_22
    const/4 v1, 0x0

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_24

    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->e:[[I

    aget-object v5, v5, v4

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v5, v5, v8

    aget v8, v7, v2

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_24
    add-int/2addr v0, v1

    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_25

    const/16 v1, 0xd

    if-gt v3, v1, :cond_25

    const/4 v1, 0x4

    if-ge v3, v1, :cond_26

    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_26
    rsub-int/lit8 v1, v3, 0xd

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a:[I

    aget v2, v2, v1

    rsub-int/lit8 v3, v2, 0x9

    const/4 v4, 0x1

    invoke-static {v6, v2, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b:[I

    aget v4, v4, v1

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->c:[I

    aget v1, v5, v1

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v2
.end method

.method private a(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    aget v0, v0, v5

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    aget v0, v0, v5

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    aget v4, v1, v6

    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v5, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v0, v1, v5

    :try_start_0
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->d:[[I

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    :goto_2
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    aget v3, v0, v5

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    aget v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    aget v0, v0, v6

    sub-int v0, v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/a;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/a;"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v1, -0x1

    move v4, v3

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v9

    const/4 v1, 0x0

    const/4 v5, 0x0

    aput v5, v9, v1

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v9, v1

    const/4 v1, 0x2

    const/4 v5, 0x0

    aput v5, v9, v1

    const/4 v1, 0x3

    const/4 v5, 0x0

    aput v5, v9, v1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    if-ltz v3, :cond_1

    move v1, v3

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    const/4 v6, 0x0

    move v7, v1

    move v1, v6

    :goto_4
    if-ge v7, v10, :cond_5

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v1

    const/4 v5, 0x1

    aget v1, v1, v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    move v8, v7

    move v13, v6

    move v6, v7

    move v7, v1

    move v1, v13

    :goto_6
    if-ge v8, v10, :cond_c

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    xor-int/2addr v11, v7

    if-eqz v11, :cond_6

    aget v11, v9, v1

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v1

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v11, 0x3

    if-ne v1, v11, :cond_a

    if-eqz v5, :cond_7

    invoke-static {v9}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a([I)V

    :cond_7
    invoke-static {v9}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    const/4 v5, 0x0

    aput v6, v1, v5

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    const/4 v5, 0x1

    aput v8, v1, v5

    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    if-nez v5, :cond_e

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    :goto_8
    move v3, v4

    :goto_9
    if-nez v3, :cond_17

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    array-length v1, v1

    if-le v6, v1, :cond_f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_8
    if-eqz v5, :cond_9

    invoke-static {v9}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a([I)V

    :cond_9
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    const/4 v11, 0x0

    const/4 v12, 0x2

    aget v12, v9, v12

    aput v12, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x3

    aget v12, v9, v12

    aput v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v9, v11

    add-int/lit8 v1, v1, -0x1

    :goto_a
    const/4 v11, 0x1

    aput v11, v9, v1

    if-nez v7, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_d
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    move v1, v3

    move v3, v4

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    move v3, v1

    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_10

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_b

    :cond_10
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v4

    aput v4, v1, v3

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->l:[[I

    array-length v8, v7

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v8, :cond_15

    aget-object v9, v7, v1

    array-length v3, v9

    if-lt v3, v6, :cond_14

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v6, :cond_11

    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    aget v10, v10, v4

    aget v11, v9, v4

    if-eq v10, v11, :cond_12

    const/4 v3, 0x0

    :cond_11
    if-eqz v3, :cond_14

    array-length v1, v9

    if-ne v6, v1, :cond_13

    const/4 v1, 0x1

    :goto_e
    const/4 v3, 0x1

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, v5, v2, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_f
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-direct {v4, v3, v2, v5, v1}, Lcom/google/zxing/oned/rss/expanded/a;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v4

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    goto :goto_e

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :catch_0
    move-exception v2

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    goto :goto_f

    :cond_16
    throw v2

    :cond_17
    move v4, v3

    move v3, v1

    goto/16 :goto_1
.end method

.method private a(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/a;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/a;

    move-result-object v6

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v1

    const/4 v0, 0x2

    move v3, v0

    move v4, v1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    rem-int/lit16 v0, v4, 0xd3

    add-int/lit8 v1, v3, -0x4

    mul-int/lit16 v1, v1, 0xd3

    add-int/2addr v0, v1

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    return-object v0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private a(I)V
    .locals 13

    const/16 v11, 0xd

    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v8

    add-int v2, v7, v8

    add-int/lit8 v9, v2, -0x11

    and-int/lit8 v2, v7, 0x1

    if-ne v2, v1, :cond_0

    move v6, v1

    :goto_0
    and-int/lit8 v2, v8, 0x1

    if-nez v2, :cond_1

    move v5, v1

    :goto_1
    if-le v7, v11, :cond_2

    move v3, v1

    move v4, v0

    :goto_2
    if-le v8, v11, :cond_3

    move v2, v0

    move v0, v1

    :goto_3
    if-ne v9, v1, :cond_7

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    move v6, v0

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    if-ge v7, v10, :cond_18

    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_3
    if-ge v8, v10, :cond_17

    move v2, v1

    goto :goto_3

    :cond_4
    move v3, v4

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_4
    if-eqz v3, :cond_11

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    if-nez v5, :cond_6

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_4

    :cond_7
    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    if-eqz v6, :cond_9

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    move v12, v2

    move v2, v3

    move v3, v1

    move v1, v12

    goto :goto_4

    :cond_9
    if-nez v5, :cond_a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a
    move v2, v3

    move v3, v4

    goto :goto_4

    :cond_b
    if-nez v9, :cond_f

    if-eqz v6, :cond_e

    if-nez v5, :cond_c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_c
    if-ge v7, v8, :cond_d

    move v0, v1

    move v12, v2

    move v2, v3

    move v3, v1

    move v1, v12

    goto :goto_4

    :cond_d
    move v2, v1

    move v3, v4

    goto :goto_4

    :cond_e
    if-eqz v5, :cond_16

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_12
    if-eqz v1, :cond_14

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_15
    return-void

    :cond_16
    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_4

    :cond_17
    move v2, v0

    goto/16 :goto_3

    :cond_18
    move v3, v0

    move v4, v0

    goto/16 :goto_2
.end method

.method private static a([I)V
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v1

    const/4 v0, 0x2

    move v3, v0

    move v4, v1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    rem-int/lit16 v0, v4, 0xd3

    add-int/lit8 v1, v3, -0x4

    mul-int/lit16 v1, v1, 0xd3

    add-int/2addr v0, v1

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v5

    goto :goto_1
.end method

.method private static a(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/google/zxing/oned/rss/FinderPattern;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/a;",
            ">;",
            "Lcom/google/zxing/oned/rss/FinderPattern;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    array-length v0, v0

    if-le v4, v0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v5

    aput v5, v0, v1

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->l:[[I

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    array-length v0, v7

    if-lt v0, v4, :cond_4

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_6

    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->q:[I

    aget v8, v8, v0

    aget v9, v7, v0

    if-eq v8, v9, :cond_3

    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    array-length v0, v7

    if-ne v4, v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method private b(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/a;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v5, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v5, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v5, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v5, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-ltz p3, :cond_0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    move v2, p3

    :goto_2
    if-ge v2, v6, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v0

    const/4 v1, 0x1

    aget p3, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    move v4, v2

    move v9, v3

    move v3, v1

    move v1, v2

    move v2, v9

    :goto_4
    if-ge v4, v6, :cond_b

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_5

    aget v7, v5, v2

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v2

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x3

    if-ne v2, v7, :cond_9

    if-eqz v0, :cond_6

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a([I)V

    :cond_6
    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:[I

    const/4 v1, 0x1

    aput v4, v0, v1

    return-void

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a([I)V

    :cond_8
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    const/4 v7, 0x0

    const/4 v8, 0x2

    aget v8, v5, v8

    aput v8, v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    aget v8, v5, v8

    aput v8, v5, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v5, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v5, v7

    add-int/lit8 v2, v2, -0x1

    :goto_6
    const/4 v7, 0x1

    aput v7, v5, v2

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 12
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

    const/4 v4, 0x2

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->a(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/a;

    move-result-object v8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    move v1, v2

    move v3, v4

    move v5, v0

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    add-int/2addr v5, v0

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    rem-int/lit16 v0, v5, 0xd3

    add-int/lit8 v1, v3, -0x4

    mul-int/lit16 v1, v1, 0xd3

    add-int/2addr v0, v1

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_d

    add-int/lit8 v0, v1, -0x1

    :goto_2
    mul-int/lit8 v0, v0, 0xc

    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v3

    move v0, v7

    move v1, v6

    :goto_3
    if-ltz v1, :cond_6

    shl-int v5, v2, v1

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    move v0, v7

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    move v1, v0

    move v3, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    move v5, v6

    :goto_5
    if-ltz v5, :cond_8

    shl-int v11, v2, v5

    and-int/2addr v11, v10

    if-eqz v11, :cond_7

    invoke-virtual {v9, v1}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->c()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    move v0, v1

    move v1, v6

    :goto_6
    if-ltz v1, :cond_b

    shl-int v10, v2, v1

    and-int/2addr v10, v5

    if-eqz v10, :cond_9

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_a
    move v0, v1

    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    :cond_c
    invoke-static {v9}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/a;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/a;->d()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    new-instance v5, Lcom/google/zxing/Result;

    const/4 v6, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    aget-object v9, v3, v7

    aput-object v9, v8, v7

    aget-object v3, v3, v2

    aput-object v3, v8, v2

    aget-object v3, v0, v7

    aput-object v3, v8, v4

    const/4 v3, 0x3

    aget-object v0, v0, v2

    aput-object v0, v8, v3

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v1, v6, v8, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method