.class public Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private final d:D

.field private e:D

.field private f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

.field private g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;


# direct methods
.method public constructor <init>(IID)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->e:D

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "argument is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->b:I

    iput-wide p3, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->d:D

    mul-int/lit8 v0, p2, 0x19

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    :cond_1
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setNextNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    :cond_2
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setFormerNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    :cond_3
    iget v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V
    .locals 2

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Second node is not the next node of first node"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    :cond_2
    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setFormerNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    :cond_3
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setNextNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    :cond_4
    invoke-virtual {p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setNextNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setFormerNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    invoke-virtual {p2, p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setNextNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    invoke-virtual {p1, p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setFormerNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    return-void
.end method


# virtual methods
.method public add(Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    const-wide v1, -0x4046666666666666L

    iput-wide v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->e:D

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-direct {v0, p1, p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;-><init>(Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;)V

    iget v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    if-gtz v1, :cond_8

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    iget v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    :goto_1
    iput-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_2
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;->startIndex()I

    move-result v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->endIndex()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->c:I

    if-le v1, v2, :cond_4

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->size()I

    move-result v1

    sget v2, Lcn/com/smartdevices/bracelet/algorithm/data/Utils;->MinValidPatternActionCount:I

    if-lt v1, v2, :cond_3

    sget-boolean v1, Lcn/com/smartdevices/bracelet/algorithm/data/Utils;->ForceTimeOverClean:Z

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1, p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->getSimilarity(Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;)D

    move-result-wide v1

    iget-wide v3, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->e:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5

    iput-wide v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->e:D

    :cond_5
    iget-wide v3, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->d:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_7

    invoke-virtual {v0, p1, p2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->averageWindow(Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p2, p1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->averageWindow(Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;Lcn/com/smartdevices/bracelet/algorithm/data/PeakWindow;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->size()I

    move-result v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    throw v0

    :cond_7
    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    iget v2, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->b:I

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setNextNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setFormerNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    iget v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    if-nez v1, :cond_a

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setNextNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->g:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->formerNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->setFormerNode(Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_2
.end method

.method public getActionCount()I
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHead()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    return-object v0
.end method

.method public getLastSimilarityScore()D
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->e:D

    return-wide v0
.end method

.method public maxSize()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->b:I

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->a:I

    return v0
.end method

.method public zeroClearing()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/algorithm/data/PatternList;->f:Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->zeroClearing()V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;->nextNode()Lcn/com/smartdevices/bracelet/algorithm/data/PatternNode;

    move-result-object v0

    goto :goto_0
.end method
