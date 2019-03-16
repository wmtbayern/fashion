from django.db import models

# Create your models here.


class lunbo(models.Model):
    id=models.CharField(max_length=100,primary_key=True)
    img=models.CharField(max_length=200)
    wen=models.CharField(max_length=200)
    alt=models.CharField(max_length=100)


class lunbo1(models.Model):

    img=models.CharField(max_length=200)
    name=models.CharField(max_length=200)
    trackid=models.CharField(max_length=200)

class User(models.Model):
    phone=models.CharField(max_length=100,unique=True)
    name=models.CharField(max_length=200,default='')
    password=models.CharField(max_length=256)


    class Meta:
        db_table='user'
# class Goods(models.Model):
#     pass
class Goods(models.Model):
    id=models.CharField(max_length=200 ,primary_key=True)
    img=models.CharField(max_length=300)
    wen=models.CharField(max_length=300)
    alt=models.CharField(max_length=300)
    said1=models.CharField(max_length=300)
    said2=models.CharField(max_length=300)
    price_good=models.CharField(max_length=300)

class Car(models.Model):
    # 用户 [添加的这个商品属于哪个用户]
    user = models.ForeignKey(User)

    # 商品 [添加的是哪个商品]
    goods = models.ForeignKey(Goods)

    ## 具体规格 [颜色、内存、版本、大小.....]
    # 商品数量
    number = models.IntegerField()

    # 是否选中
    isselect = models.BooleanField(default=True)
    # 是否删除
    isdelete = models.BooleanField(default=False)

    class Meta:
        db_table = 'car'

class Order(models.Model):
    # 用户
    user = models.ForeignKey(User)
    # 创建时间
    createtime = models.DateTimeField(auto_now_add=True)
    # 更新时间
    updatetime = models.DateTimeField(auto_now=True)
    # 状态
    # -1 过期
    # 0 未付款
    # 1 已付款，待发货
    # 2 已发货，待收货
    # 3 已收货，待评价
    # 4 已评价
    status = models.IntegerField(default=0)
    # 订单号
    identifier = models.CharField(max_length=256)

class OrderGoods(models.Model):
    # 订单
    order = models.ForeignKey(Order)
    # 商品
    goods = models.ForeignKey(Goods)

    ## 商品选择规格
    number = models.IntegerField()
