.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private j:I

.field private k:I

.field private l:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:[I

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:[I

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:[I

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "A"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "C"

    aput-object v2, v0, v1

    const-string v1, "D"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "a"

    aput-object v1, v0, v6

    const-string v1, "b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "c"

    aput-object v2, v0, v1

    const-string v1, "d"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "\u0001"

    aput-object v1, v0, v6

    const-string v1, "\u0002"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0003"

    aput-object v2, v0, v1

    const-string v1, "\u0004"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->g:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\r\n"

    aput-object v1, v0, v6

    const-string v1, ". "

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, ", "

    aput-object v2, v0, v1

    const-string v1, ": "

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->h:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "2"

    aput-object v2, v0, v1

    const-string v1, "3"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->i:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x98t 0x1t 0x0t 0x0t
        0x60t 0x2t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xc0t 0x2t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0xe0t 0x4t 0x0t 0x0t
        0x20t 0x6t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
        0x0t 0x9t 0x0t 0x0t
        0xa0t 0xat 0x0t 0x0t
        0x60t 0xct 0x0t 0x0t
        0x40t 0xet 0x0t 0x0t
        0x40t 0x10t 0x0t 0x0t
        0x60t 0x12t 0x0t 0x0t
        0xa0t 0x14t 0x0t 0x0t
        0x0t 0x17t 0x0t 0x0t
        0x80t 0x19t 0x0t 0x0t
        0x20t 0x1ct 0x0t 0x0t
        0xe0t 0x1et 0x0t 0x0t
        0xc0t 0x21t 0x0t 0x0t
        0xc0t 0x24t 0x0t 0x0t
        0xe0t 0x27t 0x0t 0x0t
        0x20t 0x2bt 0x0t 0x0t
        0x80t 0x2et 0x0t 0x0t
        0x0t 0x32t 0x0t 0x0t
        0xa0t 0x35t 0x0t 0x0t
        0x60t 0x39t 0x0t 0x0t
        0x40t 0x3dt 0x0t 0x0t
        0x40t 0x41t 0x0t 0x0t
        0x60t 0x45t 0x0t 0x0t
        0xa0t 0x49t 0x0t 0x0t
        0x0t 0x4et 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x10t 0x1t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x10t 0x2t 0x0t 0x0t
        0x4ct 0x2t 0x0t 0x0t
        0x8ct 0x2t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x16t 0x3t 0x0t 0x0t
        0x60t 0x3t 0x0t 0x0t
        0xact 0x3t 0x0t 0x0t
        0xfct 0x3t 0x0t 0x0t
        0x98t 0x3t 0x0t 0x0t
        0xe0t 0x3t 0x0t 0x0t
        0x2at 0x4t 0x0t 0x0t
        0x78t 0x4t 0x0t 0x0t
        0xc8t 0x4t 0x0t 0x0t
        0x1at 0x5t 0x0t 0x0t
        0x70t 0x5t 0x0t 0x0t
        0xc8t 0x5t 0x0t 0x0t
        0x22t 0x6t 0x0t 0x0t
        0x80t 0x6t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static a(C)Lcom/google/zxing/aztec/decoder/b;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/google/zxing/aztec/decoder/b;->a:Lcom/google/zxing/aztec/decoder/b;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/b;->b:Lcom/google/zxing/aztec/decoder/b;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/b;->e:Lcom/google/zxing/aztec/decoder/b;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/b;->c:Lcom/google/zxing/aztec/decoder/b;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/b;->d:Lcom/google/zxing/aztec/decoder/b;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/b;->f:Lcom/google/zxing/aztec/decoder/b;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Lcom/google/zxing/aztec/decoder/b;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/zxing/aztec/decoder/a;->a:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->h:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->i:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a([Z)Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->m:I

    sub-int v7, v0, v1

    array-length v0, p1

    if-le v7, v0, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v1, Lcom/google/zxing/aztec/decoder/b;->a:Lcom/google/zxing/aztec/decoder/b;

    sget-object v2, Lcom/google/zxing/aztec/decoder/b;->a:Lcom/google/zxing/aztec/decoder/b;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v4, :cond_6

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    sget-object v6, Lcom/google/zxing/aztec/decoder/a;->a:[I

    invoke-virtual {v2}, Lcom/google/zxing/aztec/decoder/b;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x5

    sget-object v9, Lcom/google/zxing/aztec/decoder/b;->d:Lcom/google/zxing/aztec/decoder/b;

    if-ne v2, v9, :cond_1

    const/4 v6, 0x4

    :cond_1
    sub-int v9, v7, v5

    if-ge v9, v6, :cond_4

    const/4 v4, 0x1

    move v10, v3

    move v3, v4

    move v4, v5

    move-object v5, v2

    move v2, v10

    :goto_2
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :pswitch_0
    sub-int v6, v7, v5

    const/16 v9, 0x8

    if-ge v6, v9, :cond_3

    const/4 v4, 0x1

    move v10, v3

    move v3, v4

    move v4, v5

    move-object v5, v2

    move v2, v10

    goto :goto_2

    :cond_3
    const/16 v6, 0x8

    invoke-static {p1, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v6

    add-int/lit8 v5, v5, 0x8

    int-to-char v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v3

    move v3, v4

    move v4, v5

    move-object v5, v2

    move v2, v10

    goto :goto_2

    :cond_4
    invoke-static {p1, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v9

    add-int/2addr v5, v6

    invoke-static {v2, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->a(Lcom/google/zxing/aztec/decoder/b;I)Ljava/lang/String;

    move-result-object v9

    const-string v6, "CTRL_"

    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/aztec/decoder/Decoder;->a(C)Lcom/google/zxing/aztec/decoder/b;

    move-result-object v6

    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x53

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v3

    move v3, v4

    move v4, v5

    move-object v5, v2

    move v2, v10

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v10, v2

    move-object v2, v5

    move v5, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_0

    :cond_8
    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:[I

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    aget v0, v0, v1

    new-array v0, v0, [Z

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->c:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->j:I

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    move v4, v3

    move v5, v3

    move v6, v1

    move v7, v2

    :goto_1
    if-eqz v7, :cond_5

    move v1, v3

    move v2, v3

    :goto_2
    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, -0x4

    if-ge v1, v8, :cond_3

    add-int v8, v5, v1

    add-int v9, v4, v2

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v10, v4

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x4

    add-int/2addr v8, v1

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v4

    add-int v10, v4, v6

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v2

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->b:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[I

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    aget v0, v0, v1

    new-array v0, v0, [Z

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->d:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->j:I

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    :goto_3
    const/4 v8, 0x5

    if-le v1, v8, :cond_4

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x8

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    add-int v9, v4, v6

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v2

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    mul-int/lit8 v8, v6, 0x6

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0xc

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    add-int v10, v4, v2

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v4, 0x2

    mul-int/lit8 v2, v6, 0x8

    add-int/lit8 v2, v2, -0x10

    add-int/2addr v2, v5

    add-int/lit8 v5, v7, -0x1

    add-int/lit8 v4, v6, -0x4

    move v6, v4

    move v7, v5

    move v4, v1

    move v5, v2

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method

.method private static b(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    sub-int v0, v3, v0

    invoke-direct {v5, v2, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    move v4, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    rem-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method private b([Z)[Z
    .locals 13

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v9

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->a:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->j:I

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->c:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v2, v9

    :goto_1
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->j:I

    new-array v10, v3, [I

    move v3, v4

    :goto_2
    iget v5, p0, Lcom/google/zxing/aztec/decoder/Decoder;->j:I

    if-ge v3, v5, :cond_6

    move v5, v6

    move v7, v6

    :goto_3
    iget v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    if-gt v5, v8, :cond_5

    iget v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    mul-int/2addr v8, v3

    iget v11, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    add-int/2addr v8, v11

    sub-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-boolean v8, p1, v8

    if-eqz v8, :cond_0

    aget v8, v10, v3

    add-int/2addr v8, v7

    aput v8, v10, v3

    :cond_0
    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-gt v0, v2, :cond_2

    iput v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->b:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->j:I

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->d:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v2, v9

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v1, v10, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    iput v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->m:I

    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    mul-int/2addr v0, v9

    new-array v11, v0, [Z

    move v8, v4

    move v1, v4

    :goto_4
    if-ge v8, v9, :cond_c

    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v6, v0

    move v2, v4

    move v3, v4

    move v5, v1

    move v1, v0

    move v0, v4

    :goto_5
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    if-ge v0, v7, :cond_b

    aget v7, v10, v8

    and-int/2addr v7, v1

    if-ne v7, v1, :cond_7

    move v7, v6

    :goto_6
    iget v12, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    add-int/lit8 v12, v12, -0x1

    if-ne v2, v12, :cond_9

    if-ne v7, v3, :cond_8

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7
    move v7, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->m:I

    move v2, v4

    move v3, v4

    :goto_7
    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    if-ne v3, v7, :cond_a

    add-int/lit8 v2, v2, 0x1

    :goto_8
    iget v12, p0, Lcom/google/zxing/aztec/decoder/Decoder;->k:I

    mul-int/2addr v12, v8

    add-int/2addr v12, v0

    sub-int/2addr v12, v5

    aput-boolean v7, v11, v12

    goto :goto_7

    :cond_a
    move v2, v6

    move v3, v7

    goto :goto_8

    :cond_b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v1, v5

    goto :goto_4

    :cond_c
    return-object v11
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->l:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->b(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->b([Z)[Z

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method
