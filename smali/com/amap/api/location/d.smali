.class public Lcom/amap/api/location/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/location/LocationManager;

.field b:Landroid/location/LocationListener;

.field private c:Lcom/amap/api/location/j;

.field private d:Lcom/amap/api/location/core/c;

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/location/a;

.field private g:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/j;Lcom/amap/api/location/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    new-instance v0, Lcom/amap/api/location/m;

    invoke-direct {v0, p0}, Lcom/amap/api/location/m;-><init>(Lcom/amap/api/location/d;)V

    iput-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/amap/api/location/d;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/amap/api/location/d;->f:Lcom/amap/api/location/a;

    iput-object p3, p0, Lcom/amap/api/location/d;->c:Lcom/amap/api/location/j;

    invoke-static {p1}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/core/c;

    iget-object v0, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/core/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/core/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/d;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/d;->f:Lcom/amap/api/location/a;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/d;)Lcom/amap/api/location/core/c;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/core/c;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/location/d;)Lcom/amap/api/location/j;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/d;->c:Lcom/amap/api/location/j;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method a(JF)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
