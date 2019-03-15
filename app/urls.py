from django.conf.urls import url

from app import views

urlpatterns=[
    url(r'^$',views.index,name='index'),
    url(r"^login/$",views.login,name='login'),
    url(r"^register/$", views.register, name='register'),
    url(r"^logout/$", views.logout, name='logout'),
    url(r'^goods/$',views.goods,name='goods'),
    url(r'^detail/$', views.detail, name='detail'),
    url(r'^carts/$', views.carts, name='carts'),

]