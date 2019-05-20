$(function () {
    // window.location.href 获取地址栏
    var data = location.href;
    // console.log(data);
    var arr = data.split('?')[1];
    var dataUid = arr.split('=')[1];
    // console.log(dataUid)
    function create(data) {
        var arr = JSON.parse(data);
        console.log(arr[0].store)
        var newarr = arr[0].imgurl.split('|');
        var imgages = [];
        if (newarr.length > 1) {
            $.each(newarr, function (index, value) {
                var arr = value.split('&');
                imgages.push(arr);
            })
        } else {
            imgages = [newarr[0].split('&')];
        }
        function imgRunder(arr) {
            return arr.map((item) => {
                return `<li><img src='../img/indeximg/${item}'></li>`;
            }).join('');
        }
        //颜色切割渲染
        var colorarr = arr[0].color;
        var colornewarr = colorarr.split('&');
        function colorRunder(arr) {
            return arr.map((item) => {
                return `<li>${item}</li>`;
            }).join('');
        }
        //尺码切割渲染
        var size = [];
        var sizearr = arr[0].size.split('|');
        if (sizearr.length > 1) {
            $.each(sizearr, function (index, value) {
                var arr = value.split('&');
                size.push(arr);
            })
        } else {
            size = [sizearr[0].split('&')];
        }
        function sizeRunder(arr) {
            return arr.map((item) => {
                return `<li>${item}</li>`;
            }).join('');
        }

        var result = arr.map(function (item, index) {
            return `<div class="ProductTitleShow clearfix">
                        <div class="location">
                            <a href="javascript:;">
                                首页
                            </a> &nbsp;>&nbsp;
                            <a href="javascript:;">
                                男装
                            </a>
                            &nbsp; >&nbsp;
                            <a href="javascript:;">
                                衬衫
                            </a>
                        </div>
                        <div class="fl censhan">${item.descript}</div>
                        <div class="ProductSubnav fr">
                            <span>
                                <a href="###">产品描述</a>
                            </span>
                            <span>
                                <a href="###">评论</a>
                            </span>
                            <span>
                                <a href=" ### ">提问</a>
                            </span>
                        </div>
                    </div>
                    <div class="detail ">
            <div class="detailleft fl">
                            <ul class="imglist">
                            ${imgRunder(imgages[index])}
                            </ul>
                        </div>
                    <div class="detailcenter fl">
                             <ul class="minImg">       
                              ${imgRunder(imgages[index])}
                            <div class="mask">
                            </div>
                        </ul>
                    <ul class="maglify">
                    ${imgRunder(imgages[index])}
                    </ul>
                    </div>
                    <div class="detailright fl">
                        <div class="good">
                            特惠价:￥
                            <span>${item.nowprice}</span> 充100反100，点击充值
                        </div>
                        <div class="color clearfix">
                            <span class="fl">颜色：</span>
                            <ul class="fl">
                                ${colorRunder(colornewarr)}
                            </ul>
                        </div>
                        <div class="size clearfix">
                            <span class="fl">尺码：</span>
                            <ul class="fl">
                            ${sizeRunder(size[index])}
                            </ul>        
                        </div>
                        <div class="number clearfix">
                            <span class="fl">数量：</span>
                            <div class="shopping">
                            <span class="subtract">-</span>
                            <input type="text" class="inputnum fl" value="1">
                            <span class="add">+</span>
                            </div>
                        </div>
                        <div class="select"></div>
                        <div class="opera">
                            <input type="button" class="btn buy" value="立即购买">
                            <input type="button" value="加入购物车" class="btn addcart">
                            </div>
                            </div>                                             
                </div> 
                <div class="addcart1">
            <div class="tip">
                <span class="fl">商品成功放入购物车</span>
                <span class="fr close">X</span>
            </div>
            <div class="pushcert">
                <div class="CarBox_bg fl"></div>
                <div class="CarBox_NumPrice fl">
                    <p>共有
                        <span> 1</span>件商品</p>
                    <p>总计
                        <span> ￥96</span>
                    </p>
                </div>
                <div class="CarBox_Btn fl">

                    <a href="../index.html" class="track fl">
                        <<继续购物</a>
                            <a href="mycert.html" class="goto fl">去购物车>></a>
                </div>
            </div>
            <div class="product">
                <div class="comend">
                    <h2>推荐产品</h2>
                    <ul class="ul1">
                        <li>
                            <img src="../img/indeximg/re1.jpg" alt="">
                            <p>凡客衬衫 牛津纺 领尖扣 短袖 男款 白色</p>
                            <span>售价￥198</span>
                        </li>
                        <li>
                            <img src="../img/indeximg/re2.jpg" alt="">
                            <p>POLO衫 本布衬衫领 男款 浅花灰</p>
                            <span>售价￥198</span>
                        </li>
                        <li>
                            <img src="../img/indeximg/re3.jpg" alt="">
                            <p>凡客卫衣 圆领 熊本熊 S2 浅花灰</p>
                            <span>售价￥198</span>
                        </li>
                        <li>
                            <img src="../img/indeximg/re4.jpg" alt="">
                            <p>凡客衬衫 牛津纺 男款 天蓝色</p>
                            <span>售价￥198</span>
                        </li>
                        <li>
                            <img src="../img/indeximg/re5.jpg" alt="">
                            <p>凡客帆布鞋 女款 黑色</p>
                            <span>售价￥198</span>
                        </li>

                    </ul>
                </div>
            </div>
        </div>`
        }).join('');
        $('.xunran').html(result);
        $('.color ul li').eq(0).css('border', '1px solid #a10000');
        $('.size ul li').eq(0).css('border', '1px solid #a10000');
        //对象存放商品信息
        var store = arr[0].store;
        var obj = { gid: dataUid, descript: $('.censhan').html(), nowprice: $('.good span').html(), store: store };
        $('.color ul li').click(function () {
            $(this).css('border', '1px solid #a10000').siblings().css('border', '1px solid #B4B4B4');
            var a = $(this).html()
            var demo = 'color';
            obj[demo] = a;
            // console.log(obj)
        });
        $('.size ul li').click(function () {
            $(this).css('border', '1px solid #a10000').siblings().css('border', '1px solid #B4B4B4');
            var b = $(this).html()
            var demo = 'size';
            obj[demo] = b;
        });
        //点击数量
        $('.add').click(function () {
            var number = $(this).prev().val();
            number++;
            //设置数量上限
            if (number >= arr[0].store) {
                number = arr[0].store;
            }
            $(this).prev().val(number);
            var c = $('.inputnum').val();
            var demo = 'num';
            obj[demo] = c;
        });
        $('.subtract').click(function () {
            var number = $(this).next().val();
            number--;
            //设置数量下限
            if (number <= 1) {
                number = 1;
            }
            $(this).next().val(number);
            var c = $('.inputnum').val();
            var demo = 'num';
            obj[demo] = c;
        });
        $('.inputnum').keyup(function () {
            var c = $('.inputnum').val();
            if (c <= 1) {
                c = 1;
            } else if (c >= arr[0].store) {
                c = arr[0].store;
            }
            var demo = 'num';
            obj[demo] = c;
        });

        //小图片切换      
        $('.imglist li').mouseover(function () {
            $(this).css('border', '1px solid #a10000').siblings().css('border', '1px solid #b4b4b4');
            $('.detailcenter .minImg li').eq($(this).index()).css('zIndex', 2).siblings().css('zIndex', 1);
            $('.detailcenter .maglify li').eq($(this).index()).css('zIndex', 2).siblings().css('zIndex', 1);
            var a = $(this).find('img').attr('src');
            var b = a.split('/').slice(3).toString();
            var demo = 'imgurl';
            obj[demo] = b;
        });


        //放大镜
        // 鼠标移入移出 显示隐藏

        $('.imglist li').eq(0).css('border', '1px solid #a10000');
        $('.minImg li').eq(0).css('zIndex', 2);
        $('.maglify li').eq(0).css('zIndex', 2);

        $(".minImg").mouseover(function () {
            $(".mask").show();
            $(".maglify").show();
        });
        $(".minImg").mouseout(function () {
            $(".mask").hide();
            $(".maglify").hide();
        });
        //鼠标在盒子内滑动
        $(".minImg").mousemove(function (e) {
            $(".mask").show().css('zIndex', 10);
            $(".maglify").show();
            //在盒子中获取鼠标位置
            $(this).css({ 'cursor': 'crosshair' });
            var l = e.pageX - $(".detailcenter").offset().left - ($(".mask").width() / 2);
            var t = e.pageY - $(".detailcenter").offset().top - ($(".mask").height() / 2);
            if (l < 0) { //左边超出
                l = 0;
            }
            if (l > $(".detailcenter").width() - $(".mask").width()) {//右边超出
                l = $(".detailcenter").width() - $(".mask").width();
            }
            if (t < 0) { //顶端超出
                t = 0;
            }
            if (t > $(".detailcenter").height() - $(".mask").height()) {//底部超出
                t = $(".detailcenter").height() - $(".mask").height();
            }
            //设置放大区域的移动
            $(".mask").css({
                left: l + "px",
                top: t + "px"
            });
            //设置大图片的移动   大图片的移动方向与放大区域正好相反
            var leftRate = l / $(".minImg").width();
            var topRate = t / $(".minImg").height();
            $(".maglify li").css({
                'left': -leftRate * $('.maglify img').width() + "px",
                'top': -topRate * $('.maglify img').height() + "px"
            });
        });

        $('.addcart').click(function () {
            $.ajax({
                type: 'post',
                url: '../api/order.php',
                data: {
                    'gid': obj.gid,
                    'descript': obj.descript,
                    'color': obj.color,
                    'size': obj.size,
                    'num': obj.num,
                    'imgurl': obj.imgurl,
                    'nowprice': obj.nowprice,
                    'store': obj.store
                },
                success: function (str) {
                    if (str == 'yes') {
                        $('.addcart1').show();
                        // console.log(str)
                    } else {
                        alert('再去看看其它宝贝加购-----');
                    }
                }
            });
        });
        $('.tip .close').click(function () {
            $('.addcart1').hide();
        });
        $('.buy').click(function () {
            location.href = 'mycert.html?';
        });
        //拖动购物车框
        $('.addcart1').mousedown(function (e) {
            // e.pageX
            var positionDiv = $(this).offset();
            var distenceX = e.pageX - positionDiv.left;
            var distenceY = e.pageY - positionDiv.top;
            //alert(distenceX)
            // alert(positionDiv.left);
            $(document).mousemove(function (e) {
                var x = e.pageX - distenceX;
                var y = e.pageY - distenceY;
                if (x < 0) {
                    x = 0;
                } else if (x > $(document).width() - $('.addcart1').outerWidth(true)) {
                    x = $(document).width() - $('.addcart1').outerWidth(true);
                }
                if (y < 0) {
                    y = 0;
                } else if (y > $(document).height() - $('.addcart1').outerHeight(true)) {
                    y = $(document).height() - $('.addcart1').outerHeight(true);
                }
                $('.addcart1').css({
                    'left': x + 'px',
                    'top': y + 'px'
                });
            });
            $(document).mouseup(function () {
                $(document).off('mousemove');
            });
        });

    }
    $.ajax({
        type: 'get',
        url: '../api/detailpages.php',
        data: 'dataUid=' + dataUid,
        success: function (str) {
            create(str);
        }
    });
    $('.nav>ul>li').hover(function () {
        $(this).find('.menu').css('borderTop', '5px solid #B81C22').slideDown(200);

    }, function () {
        $(this).find('.menu').slideUp(200);
    });
    //订单用户名
    var user1 = getCookie('user');
    if (user1) {
        $('.welcome em').html(user1);
        //导航栏
        $('.user a').css('color', '#a10000').eq(0).html('退出登录').siblings().html('更换用户');
        $('.user a').eq(0).click(function () {
            $(this).attr('href', 'index.html');
        });
        $('.myorder a').click(function () {
            $(this).attr('href', 'html/mycert.html');
        });
    }

    function creatcert(arr) {
        var res = arr.map(function (item) {
            return ` <li class="clearfix">
                        <div class="fl">
                        <img src="../img/indeximg/${item.imgurl}" alt="">
                        </div>
                        <div class="goodsin fl">
                            <div class="des">
                            </div>
                            <span class="fl">￥
                                <em class="simple">${item.nowprice}</em> ×
                                  <a href="">${item.descript}</a>
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
            url: '../api/mycert.php',
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
            'background', 'url(../img/indeximg/vanclsprite.png) no-repeat -154px 0px')
    });
    $('.mohu span').eq(0).click(function () {

    });


});