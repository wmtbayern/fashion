from django.conf.urls import url

from app import views

urlpatterns=[
    url(r'^$',views.index,name='index'),
    url(r"^login/$",views.login,name='login'),
    url(r"^register/$", views.register, name='register'),
    url(r"^logout/$", views.logout, name='logout'),
    url(r'^goods/$',views.goods,name='goods'),
    # url(r'^detail/$', views.detail, name='detail'),
    url(r'^car/$', views.car, name='car'),# 购物车
    url(r'^list/$', views.list, name='list'),
    url(r'^addcar/$', views.addcar, name='addcar'), # 添加到购物车
    url(r'^subcar/$', views.subcar, name='subcar'),
    url(r'^changecartselect/$', views.changecarselect, name='changecartselect'),  # 购物车商品选中状态
    url(r'^changecartall/$', views.changecarall, name='changecartall'),  # 全选/取消全选
    url(r'^generateorder/$', views.generateorder, name='generateorder'),    # 生成订单
    url(r'orderlist/$', views.orderlist, name='orderlist'), # 订单列表
    url(r'^orderdetail/(?P<identifier>[\d.]+)/$', views.orderdetail, name='orderdetail'),  # 订单详情



    url(r'^randomtest/$', views.randomtest, name='randomtest'), # 测试接口

    url(r'^returnurl/$', views.returnurl, name='returnurl'),    # 支付成功后，客户端的显示
    # url(r'^appnotifyurl/$', views.appnotifyurl, name='appnotifyurl'), # 支付成功后，订单的处理
    # url(r'^pay/$', views.pay, name='pay'),  # 支付
]

