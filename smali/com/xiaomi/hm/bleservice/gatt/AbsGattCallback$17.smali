.class Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field private final synthetic val$value:[B


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p3, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$value:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/hm/bleservice/util/Debug;->TRACE()V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$1()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->ASSERT_RUN_ON_THREAD(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->ASSERT_NOT_NULL(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const v0, 0xff01

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$3(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTIFY: synchronizedWriteCharacteristic(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$4()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->DEBUG_LOCK(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$5(Z)V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$6()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$value:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$17;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->ASSERT_TRUE(Z)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const v0, 0xff02

    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$3(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTIFY: synchronizedWriteCharacteristic(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$4()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->DEBUG_LOCK(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$5(Z)V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$6()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
