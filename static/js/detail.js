$(function () {

$('.type-slider a').click(function () {
        // $(this)  当前点击的对象
        // $(this).addClass('active')

        // 解决: 点击后，记录下标
        // localStorage.setItem('index', $(this).index())
        $.cookie('index', $(this).index(), {expires: 3, path: '/'})
        console.log(index)
})


})