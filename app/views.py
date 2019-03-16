import hashlib
import random
import time
from json.decoder import JSONObject

from django.core.cache import cache
from django.http import JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.views.decorators.csrf import csrf_exempt

from app.models import lunbo, User, lunbo1, Goods, Car, Order, OrderGoods


def index(request):
    lunbos=lunbo.objects.all()
    bottoms=lunbo1.objects.all()
    good_list=Goods.objects.all()[1:6]

    token = request.session.get('token')
    print(token)
    userid = cache.get(token)
    # print(userid)
    response_data = {
        'lunbos': lunbos,
        'bottoms':bottoms,
        'user': None,
        'good_list':good_list,
    }
    if userid:
        user = User.objects.get(pk=userid)
        print(user.name)

        response_data['user'] = user


    return render(request,'index.html',context=response_data)

@csrf_exempt
def login(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    elif request.method == 'POST':
        phone = request.POST.get('phone')
        password = request.POST.get('password')

        users = User.objects.filter(phone=phone)
        if users.exists():  # 存在
            user = users.first()
            if user.password == generate_password(password):  # 验证通过
                # 更新token
                token = generate_token()

                # 状态保持
                cache.set(token, user.id, 60 * 60 * 24 * 7)

                # 传递客户端
                request.session['token'] = token
                return render(request,'index.html')
            else:  # 密码错误
                return render(request, 'login.html')
        else:  # 不存在
            return render(request, 'login.html')


def logout(request):
    request.session.flush()

    return redirect('fashion:index')


def generate_password(param):
    md5 = hashlib.md5()
    md5.update(param.encode('utf-8'))
    return md5.hexdigest()


def generate_token():
    temp = str(time.time()) + str(random.random())
    md5 = hashlib.md5()
    md5.update(temp.encode('utf-8'))
    return md5.hexdigest()


def register(request):
    if request.method == 'GET':
        return render(request, 'register.html')
    elif request.method == 'POST':


        # 获取数据
        phone = request.POST.get('phone')
        passoword = generate_password(request.POST.get('password'))
        name=request.POST.get('name')
        # 存入数据库
        user = User()
        user.phone = phone
        user.password = passoword
        user.name=name
        user.save()

        # 状态保持
        token = generate_token()
        # key-value  >>  token:userid
        cache.set(token, user.id, 60 * 60 * 24 * 7)

        request.session['token'] = token
        print(token)
        return redirect('fashion:index')


def goods(request):
    index = int(request.COOKIES.get('index'))
    goods=Goods.objects.all()
    good=goods[index]
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    cars = Car.objects.filter(user=user)

    return render(request,'goods.html',context={
        'good':good,
        'user':user,
        'cars':cars,
    })




def list(request):
    goods=Goods.objects.all()
    # goods.first().id)
    token = request.session.get('token')
    userid = cache.get(token)
    # index = int(request.COOKIES.get('index'))
    user = User.objects.get(pk=userid)
    # 根据index 获取 对应的 分类ID
    # categoryid = foodtypes[index].typeid
    # 根据 分类ID 获取对应分类信息
    # goods_list = Goods.objects.filter(categoryid=categoryid)
    # a=index+1000
    # go=goods[index]
    # good=Goods.objects.get(id=go)
    # print(index)
    # print(go,'就是这个商品')
    return render(request,'list.html',context={
        'goods':goods,
        'user':user,
    })

def car(request):
    token = request.session.get('token')
    userid = cache.get(token)
    if userid:  # 有登录才显示
        user = User.objects.get(pk=userid)
        cars = user.car_set.filter(number__gt=0)

        isall = True
        for car in cars:
            if not car.isselect:
                isall = False

        return render(request, 'car.html', context={
            'cars': cars,
            'isall':isall,
            'user':user
        })
    else:   # 未登录不显示
        return render(request, 'login.html')


def addcar(request):
    # 获取token
    token = request.session.get('token')
    # 响应数据
    response_data = {}
    # 缓存
    if token:
        # 已经登录
        userid = cache.get(token)
        user = User.objects.get(pk=userid)
        goodsid = request.GET.get('goodsid')
        goods = Goods.objects.get(pk=goodsid)

        # 商品不存在: 添加新记录
        # 商品存在: 修改number
        cars = Car.objects.filter(user=user).filter(goods=goods)
        if cars.exists():
            car = cars.first()
            car.number = car.number + 1
            car.save()
        else:
            car = Car()
            car.user = user
            car.goods = goods
            car.number = 1
            car.save()

        response_data['status'] = 1
        response_data['number'] = car.number
        response_data['msg'] = '添加 {} 购物车成功: {}'.format(car.goods.wen, car.number)

        return JsonResponse(response_data)

    # 未登录
    # 因为是ajax操作，所以重定向是不可以的!
    # return redirect('axf:login')

    response_data['status'] = -1
    response_data['msg'] = '请登录后操作'

    return JsonResponse(response_data)


def subcar(request):
    # 商品
    goodsid = request.GET.get('goodsid')
    goods = Goods.objects.get(pk=goodsid)

    # 用户
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)

    # 获取对应的购物车信息
    car = Car.objects.filter(user=user).filter(goods=goods).first()
    car.number = car.number - 1
    car.save()

    response_data = {
        'msg': '删减商品成功',
        'status': 1,
        'number': car.number
    }

    return JsonResponse(response_data)


def changecarselect(request):
    carid = request.GET.get('carid')

    car = Car.objects.get(pk=carid)
    car.isselect = not car.isselect
    car.save()

    response_data = {
        'msg': '状态修改成功',
        'status': 1,
        'isselect': car.isselect
    }

    return JsonResponse(response_data)


def changecarall(request):
    isall = request.GET.get('isall')

    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    cars = user.car_set.all()

    if isall == 'true':
        isall = True
    else:
        isall = False

    for car in cars:
        car.isselect = isall
        car.save()

    response_data = {
        'msg': '全选/取消全选 成功',
        'status': 1
    }

    return JsonResponse(response_data)


def generate_identifier():
    temp = str(time.time()) + str(random.randrange(1000, 10000))
    return temp


def generateorder(request):
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)

    # 订单
    order = Order()
    order.user = user
    order.identifier = generate_identifier()
    order.save()

    # 订单商品(购物车中选中)
    carts = user.cart_set.filter(isselect=True)
    for cart in carts:
        orderGoods = OrderGoods()
        orderGoods.order = order
        orderGoods.goods = cart.goods
        orderGoods.number = cart.number
        orderGoods.save()

        # 购物车中移除
        cart.delete()

    # response_data = {
    #     'msg': '生成订单',
    #     'status': 1,
    #     'identifier': order.identifier
    # }
    #
    # return JsonResponse(response_data)

    return render(request, 'order/orderdetail.html', context={'order': order})


def orderlist(request):
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)

    orders = user.order_set.all()

    # status_list = ['未付款', '待发货', '待收货', '待评价', '已评价']

    return render(request, 'order/orderlist.html', context={'orders': orders})


def orderdetail(request, identifier):
    order = Order.objects.filter(identifier=identifier).first()

    return render(request, 'order/orderdetail.html', context={'order': order})


def randomtest(request):
    temp = random.randrange(4, 63)
    return render(request, 'other/randomtest.html', context={'temp': temp})


def returnurl(request):
    return redirect('axf:mine')