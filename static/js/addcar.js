$(function () {

$(' #addbutton .btn_buy_now').click(function () {
        // 需要传递 user、goods
        // user 因为状态保持，所以可以不用传递 [前提必须是先登录]
            console.log('jjjj')
        // 哪件商品?  >>>  每个按钮身上有对应的属性
        request_data = {
            'goodsid': $(this).attr('data-goodsid')
        }

        // 保存 当前操作按钮对象
        var $that = $(this)

        $.get('/addcar/', request_data, function (response) {
            console.log(response)

            if (response.status == -1){ // 未登录

                // 设置cookie
                $.cookie('back', 'goods', {expires: 7, path: '/'})

                window.open('/login/', '_self')
            } else  if (response.status ==1 ) { // 操作成功
                // 有问题，改变的是所有
                // $('.bt-wrapper .num').html(response.number)

                // 用兄弟节点 [操作按钮 this]
                // this 谁调用 指向谁
                // 当前函数是ajax触发的 ，所以 $(this) 指向 ajax
                // $(this).prev().html(response.number)

                // // 设置个数
                 $that.next().html(response.number)
                //
                // // 设置显示  兄弟标签才可以用prev next
                 $that.prev().show()
                 $that.next().show()

            }
        })
    })

    // 点击减操作
    $('#addbutton .btn_add_shopping').click(function () {
        var $that = $(this)
            console.log('kkk')
        request_data = {
            'goodsid': $(this).attr('data-goodsid')
        }

        $.get('/subcar/', request_data, function (response) {
            console.log(response)

            if (response.status == 1){
                if (response.number) {
                    $that.next().next().html(response.number)
                } else {
                    $that.next().next().hide()
                    $that.hide()
                }
            }
        })
    })
})

