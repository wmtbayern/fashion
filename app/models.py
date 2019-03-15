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

class Cart(models.Model):
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
        db_table = 'cart'
