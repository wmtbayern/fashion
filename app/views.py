import hashlib
import random
import time
from json.decoder import JSONObject
from urllib.parse import parse_qs

from django.core.cache import cache
from django.http import JsonResponse, HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.views.decorators.csrf import csrf_exempt

from app.alipay import alipay
from app.models import lunbo, User, lunbo1, Goods, Car, Order, OrderGoods


def index(request):
    lunbos=lunbo.objects.all()
    bottoms=lunbo1.objects.all()
    good_list=Goods.objects.all()

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
        back = request.COOKIES.get('back')

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
                if back == 'goods':
                    return redirect('fashion:goods')
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
    response_data={
            'good': good,
            'user': None,
            'cars': None,
    }
    if userid:
        user = User.objects.get(pk=userid)
        cars = Car.objects.filter(user=user)
        response_data['user']=user
        response_data['cars']=cars

    return render(request,'goods.html',context=response_data)

def list(request):
    goods=Goods.objects.all()
    # goods.first().id)
    token = request.session.get('token')
    userid = cache.get(token)
    # index = int(request.COOKIES.get('index'))
    response_data = {
        'goods': goods,
        'user': None,
    }
    if userid:
        user = User.objects.get(pk=userid)
        print(user.name)
        response_data['user'] = user
    # 根据index 获取 对应的 分类ID
    # categoryid = foodtypes[index].typeid
    # 根据 分类ID 获取对应分类信息
    # go=goods[index]
    # good=Goods.objects.get(id=go)
    # print(index)
    # print(go,'就是这个商品')
    return render(request,'list.html',context=response_data)

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
        response_data['msg'] = '成功添加 {} 到购物车: {}'.format(car.goods.wen, car.number)
        return JsonResponse(response_data)
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
    carid = request.GET.get('cartid')
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
    temp = str(time.time()) + str(random.randrange(100, 10000))
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
    cars = user.car_set.filter(isselect=True)
    if cars:
        for car in cars:
            orderGoods = OrderGoods()
            orderGoods.order = order
            orderGoods.goods = car.goods
            orderGoods.number = car.number
            orderGoods.save()
            # 购物车中移除
            car.delete()

        # response_data = {
        #     'msg': '生成订单',
        #     'status': 1,
        #     'identifier': order.identifier
        print(order.ordergoods_set.all().first())
        return render(request, 'orderdetail.html', context={
            'order': order,
            'user':user
        })
    else:
        return HttpResponse("还没有选择商品")

def orderlist(request):
    token = request.session.get('token')
    userid = cache.get(token)
    user = User.objects.get(pk=userid)
    orders = user.order_set.all()
    # status_list = ['未付款', '待发货', '待收货', '待评价', '已评价']
    return render(request, 'orderlist.html', context={
        'orders': orders,
        'user':user,
    })

def orderdetail(request, identifier):
    order = Order.objects.filter(identifier=identifier).first()

    return render(request, 'orderdetail.html', context={'order': order})


def returnurl(request):
    return redirect('fashion:index')

@csrf_exempt
def appnotifyurl(request):
    if request.method == 'POST':
        # 获取到参数
        body_str = request.body.decode('utf-8')
        # 通过parse_qs函数
        post_data = parse_qs(body_str)
        # 转换为字典
        post_dic = {}
        for k,v in post_data.items():
            post_dic[k] = v[0]
        # 获取订单号
        out_trade_no = post_dic['out_trade_no']
        # 更新状态
        Order.objects.filter(identifier=out_trade_no).update(status=1)
    return JsonResponse({'msg':'支付成功'})


def pay(request):

    orderid = request.GET.get('orderid')
    order = Order.objects.get(pk=orderid)

    sum = 0
    for orderGoods in order.ordergoods_set.all():
        sum += int(orderGoods.goods.price_good) * int(orderGoods.number)

    # 支付地址信息
    data = alipay.direct_pay(
        subject='买买买成功......', # 显示标题
        out_trade_no=order.identifier,    # 商品 订单号
        total_amount=str(sum),   # 支付金额
        return_url='http://120.79.59.213/fashion/returnurl/'
    )

    # 支付地址
    alipay_url = 'https://openapi.alipaydev.com/gateway.do?{data}'.format(data=data)

    response_data = {
        'msg': '调用支付接口',
        'alipayurl': alipay_url,
        'status': 1
    }

    return JsonResponse(response_data)