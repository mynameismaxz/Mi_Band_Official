.class final Lcom/loopj/android/http/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/loopj/android/http/p;

.field private final synthetic b:I

.field private final synthetic c:[Lorg/apache/http/Header;

.field private final synthetic d:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/p;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/r;->a:Lcom/loopj/android/http/p;

    iput p2, p0, Lcom/loopj/android/http/r;->b:I

    iput-object p3, p0, Lcom/loopj/android/http/r;->c:[Lorg/apache/http/Header;

    iput-object p4, p0, Lcom/loopj/android/http/r;->d:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/loopj/android/http/r;->a:Lcom/loopj/android/http/p;

    iget-object v0, v0, Lcom/loopj/android/http/p;->a:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget v1, p0, Lcom/loopj/android/http/r;->b:I

    iget-object v2, p0, Lcom/loopj/android/http/r;->c:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/loopj/android/http/r;->d:Lorg/json/JSONException;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
