import hashlib
import random
import time
from json.decoder import JSONObject

from django.core.cache import cache
from django.shortcuts import render, redirect

# Create your views here.
from django.views.decorators.csrf import csrf_exempt

from app.models import lunbo, User, lunbo1, Goods


def index(request):
    lunbos=lunbo.objects.all()
    bottoms=lunbo1.objects.all()
    good_list=Goods.objects.all()

    token = request.session.get('token')
    userid = cache.get(token)

    response_data = {
        'lunbos': lunbos,
        'bottoms':bottoms,
        'user': None,
        'good_list':good_list
    }
    if userid:
        user = User.objects.get(pk=userid)

        response_data['user'] = user


    return render(request,'index.html',response_data)

# @csrf_exempt
def login(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    elif request.method == 'POST':
        phone = request.POST.get('phone')
        password = request.POST.get('password')

        # 重定向位置
        # back = request.COOKIES.get('back')

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
    goods=Goods.objects.get()
    render(request,'goods.html')

    return None


def detail(request):
    goods=Goods.objects.all()
    # goods.first().id)

    index = int(request.COOKIES.get('index', '0'))
    # 根据index 获取 对应的 分类ID
    # categoryid = foodtypes[index].typeid
    # 根据 分类ID 获取对应分类信息
    # goods_list = Goods.objects.filter(categoryid=categoryid)
    # a=index+1000
    good=goods[index]
    print(good)
    return render(request,'detail.html')


def carts(request):
    return None