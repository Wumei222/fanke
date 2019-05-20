$(function () {
    //获取用户名渲染
    var user1 = getCookie('user');
    var remove = removeCookie('user');
    if (user1) {
        $('.welcome em').html(user1);
        //导航栏
        $('.user a').css('color', '#a10000').eq(0).html('退出登录').siblings().html('更换用户');
        $('.user a').eq(0).click(function () {
            $(this).attr('href', 'index.html');
        });
        $('.myorder a').click(function () {
            $(this).attr('href', 'html/mycert.html?' + 'user=' + user1);
        });
    } else {
        $('.myorder a').click(function () {
            $(this).attr('href', 'html/login.html');
        });
    }
    $('.nav>ul>li').hover(function () {
        $(this).find('.menu').css('borderTop', '5px solid #B81C22').slideDown(200);

    }, function () {
        $(this).find('.menu').slideUp(200);
    });

    //回顶部
    $('.totop').click(function () {
        $('html , body').animate({ scrollTop: 0 }, 100);
    });

    //遮罩层
    var iw = $(document.body).outerWidth(true);
    var ih = $(document.body).outerHeight(true);
    var vw = $(window).width();
    var vh = $(window).height();
    $('.sreenmask').css({ 'width': iw + 'px', 'height': ih + 'px' });

    timer = setTimeout(function () {
        $('.sreenmask').css('display', 'none');
    }, 5000);
    $('.close').click(function () {
        $('.sreenmask').css('display', 'none');

    });
    $('.visibleimg').css({
        'width': vw + 'px',
        'height': vh + 'px',
        'position': 'relative'
    })

    //限时购 时间补零
    var time = null;
    //当前时间
    var nowTime = new Date().getTime();
    //结束时间
    var endTime = "2019-5-30 24:00:00";
    var end = Date.parse(new Date(endTime));
    var dix = parseInt((end - nowTime) / 1000);

    if (dix >= 0) {
        time = setInterval(function () {
            nowTime = new Date().getTime();
            dix = parseInt((end - nowTime) / 1000);
            // 毫秒换成秒
            var sec = dix % 60;//秒
            var min = parseInt(dix / 60) % 60;
            var hour = parseInt(dix / 60 / 60) % 24;
            $('.timecount span em').eq(0).html(toTwo(sec));
            $('.timecount span em').eq(1).html(toTwo(min));
            $('.timecount span em').eq(2).html(toTwo(hour));
        }, 1000);
    } else {
        $('.timecount span em').html('00');
        // $('.timecount span').text('秒杀已结束');
        clearInterval(time);
    }

    //发送请求获取宝贝信息
    var arr = [];
    $.ajax({
        type: 'get',
        url: 'api/goodlist.php',
        success: function (str) {
            arr = JSON.parse(str);
            create(arr.data);
            create1(arr.data1);
            create2(arr.data2);
            create3(arr.data3);
            create4(arr.data4);
        }
    });
    //宝贝信息渲染
    function create(data) {
        var result = data.map(function (item) {
            return `<li data-gid='${item.gid}'>
                        <a href="###">
                            <img src="img/indeximg/${(item.imgurl).split('&')[0]}" alt="凡客T恤 药 傻子药 浅花灰色 ">
                        </a>
                        <div class="goods_descript">
                            <a href=" ">${item.descript}</a>
                        </div>
                        <div class="price">
                            <p class="price1">¥
                                <span class="original_price">${item.oldprice}</span>
                            </p>
                            <p>
                                <span class="current_price fl">¥
                                    <em>${item.nowprice}</em>
                                </span>
                                <span class="afterdeposit fr">充值后
                                    <em>${item.recharge}</em> 元</span>
                            </p>
                        </div>
                    </li>`;
        }).join('');
        $('.show_list').html(result);
        //点击跳转至详情页
        $('.show_list li').click(function () {
            var gid = $(this).attr('data-gid');
            //新窗口打开
            var tempwindow = window.open('_blank');
            tempwindow.location = 'html/detailpages.html?' + 'data-gid=' + gid;
        });
    }
    function create1(data) {
        var result1 = data.map(function (item) {
            return `<li>
                <a href=" ">
                    <img src="img/indeximg/${item.imgurl.split('&')[0]}" alt=" ">
                </a>
        </li> 
        <li>
                <a href=" ">
                    <img src="img/indeximg/${item.imgurl.split('&')[0]}" alt=" ">
                </a>
        </li>
        <li>
                <a href=" ">
                    <img src="img/indeximg/${item.imgurl.split('&')[0]}" alt=" ">
                </a>
        </li>`
        }).join('');
        $('.listshirt').html(result1);
    }
    function create2(data) {
        var result2 = data.map(function (item) {
            return `
            <ul class="pic_list ">
                        <li class="pic_one ">
                            <a href="###">
                                <img src="img/indeximg/${item.imgurl.split('&')[0]}" alt=" ">
                            </a>
                            <h3>
                                <span>充值购买更优惠</span>
                                ${item.descript.split('&')[0]}
                            </h3>
                        </li>
                        <li class="pic_two ">
                            <div class="pic_twotop ">
                                <a href=" ###">
                                    <img src="img/indeximg/${item.imgurl.split('&')[1]} " alt=" ">
                                </a>
                                <h3>
                                    <span>充值购买更优惠</span>
                                    ${item.descript.split('&')[1]}
                                </h3>
                            </div>
                            <div class="pic_twobottom ">
                                <a href=" ">
                                    <img src="img/indeximg/${item.imgurl.split('&')[2]} " alt=" ">
                                </a>
                                <h3>
                                    <span>充值购买更优惠</span>
                                   ${item.descript.split('&')[2]}
                                </h3>
                            </div>
                        </li>
                        <li class="pic_three ">
                            <img src="img/indeximg/${item.imgurl.split('&')[3]}" alt=" ">
                            <h3>
                            <span>充值购买相当于 <em>${item.nowprice}</em> 元  </span>
                                 ${item.descript.split('&')[3]}
                                        </h3>
                        </li >
            `
        });
        $('.tuijian').html(result2);
    }
    function create3(data) {
        var result3 = data.map(function (item) {
            return ` <li class="pic_three ">
                    <img src="img/indeximg/${item.imgurl} " alt=" ">
                    <h3>
                        ${item.descript}
                        <span>充值购买相当于&nbsp; ${item.nowprice}元</span>
                    </h3>
                </li>`
        });
        $('.pantsquan').html(result3);

    }
    function create4(data) {
        var result4 = data.map(function (item) {
            return `
            <li>
                <a href=" ">
                    <img src="img/indeximg/${item.imgurl}" alt=" ">
                </a>
            </li> `
        });
        $('.geocy').html(result4);
    }



});
//轮播图
$(function () {
    //1. 获取元素
    var zz_carousel = $('#zz_carousel');
    var imgs = zz_carousel.find('.image_reel li');
    var paging = zz_carousel.find('.paging');
    var previous = zz_carousel.find('.previous a');
    var next = zz_carousel.find('.next');
    imgs.eq(0).css('zIndex', 1);
    //2. 添加小圆点
    var picIdx = 0;  //当前图片下标
    var zIndexNum = 2; //层级
    //页码
    imgs.each(function (index) {
        var span = $('<span></span>');
        span.idx = index;
        span.appendTo(paging);
        span.click(function () {
            $(this).addClass('active').siblings().removeClass('active');
            picIdx = span.idx;
            imgs.eq(picIdx).css('zIndex', 1).siblings().css('zIndex', 0);
        });
    });
    //给页码设置居中
    paging.children().eq(0).addClass('active');
    paging.css({
        marginLeft: -(paging.outerWidth() / 2),
        zIndex: 10
    });
    function nextPic() {
        picIdx++;
        if (picIdx >= imgs.length) {
            picIdx = 0;
        }
        if (zIndexNum > imgs.length) {
            imgs.css('zIndex', 0);
            zIndexNum = 0;
        }
        imgs.eq(picIdx).css({ 'zIndex': zIndexNum++, 'opacity': 0 }).animate({ opacity: 1 }, 'slow');
        paging.children().eq(picIdx).addClass('active').siblings().removeClass('active');
    }
    //1. 自动播放和鼠标移入移出事件
    var timer1 = null;
    timer1 = setInterval(nextPic, 3000);
    zz_carousel.mouseenter(function () {
        clearInterval(timer1);
    });
    zz_carousel.mouseleave(function () {
        timer1 = setInterval(nextPic, 3000);
    });
    //2. 左右按钮点击事件
    previous.click(function () {
        picIdx--;
        if (picIdx <= -1) {
            picIdx = imgs.length - 1;
        }
        imgs.css('zIndex', 0);
        zIndexNum = 1;
        imgs.eq(picIdx).css({ 'zIndex': zIndexNum++, 'opacity': 0 }).animate({ opacity: 1 }, 'slow');
        paging.children().eq(picIdx).addClass('active').siblings().removeClass('active');
    });
    next.click(function () {
        nextPic();
    });
    function creatcert(arr) {
        var res = arr.map(function (item) {
            return ` <li class="clearfix">
                        <div class="fl">
                        <img src="img/indeximg/${item.imgurl}" alt="">
                         </div>
                        <div class="goodsin fl">
                            <div class="des">
                                <a href="">${item.descript}</a>
                            </div>
                            <span class="fl">￥
                                <em class="simple">${item.nowprice}</em> ×
                                <em class="jianum">${item.num}</em>
                            </span>
                        </div>
                        <a href="" class="colors del fl">删除</a>
                    </li>`
        }).join('');
        $('.certgoods').html(res);
    }
    var certnum = 0;
    $('.shoppingCart').hover(function () {
        $('.certshow').show().siblings().css('color', '#a10000').parent().css(
            'background', '#fff');
        $.ajax({
            type: 'get',
            url: 'api/mycert.php',
            success: function (str) {
                var arr = JSON.parse(str);
                var newarr = arr.data;
                certnum = arr.total
                creatcert(newarr);
                $('.tiaoshu').html(certnum);
            }
        });
    }, function () {
        $('.certshow').hide().siblings().css('color', '#fff').parent().css(
            'background', 'url(img/indeximg/vanclsprite.png) no-repeat -154px 0px')
    });

});