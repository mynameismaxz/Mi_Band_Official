.class public Lcom/xiaomi/hm/view/GifAnimation;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/hm/view/GifReDraw;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/xiaomi/hm/view/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->a:Lcom/xiaomi/hm/view/GifReDraw;

    iput-boolean v2, p0, Lcom/xiaomi/hm/view/GifAnimation;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->c:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/hm/view/a;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/hm/view/a;-><init>(Lcom/xiaomi/hm/view/GifAnimation;B)V

    iput-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/hm/view/GifAnimation;)Lcom/xiaomi/hm/view/GifReDraw;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->a:Lcom/xiaomi/hm/view/GifReDraw;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/hm/view/GifAnimation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/hm/view/GifAnimation;)Lcom/xiaomi/hm/view/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/hm/view/GifAnimation;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hm/view/GifAnimation;->stopAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->a:Lcom/xiaomi/hm/view/GifReDraw;

    return-void
.end method

.method public pauseAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restartAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->b:Z

    iget-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public runAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->b:Z

    iget-object v0, p0, Lcom/xiaomi/hm/view/GifAnimation;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/hm/view/GifAnimation;->d:Lcom/xiaomi/hm/view/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRedraw(Lcom/xiaomi/hm/view/GifReDraw;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/view/GifAnimation;->a:Lcom/xiaomi/hm/view/GifReDraw;

    return-void
.end method

.method public stopAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/hm/view/GifAnimation;->pauseAnimation()V

    return-void
.end method
