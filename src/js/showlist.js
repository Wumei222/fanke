$(function () {

    //滚动到导航栏固定
    $(window).scroll(function () {
        if ($(window).scrollTop() >= $('.allgoods').height()) {
            $(".allgoods").css({ "position": "fixed", "top": 0, "zIndex": 10 });
        } else {
            $(".allgoods").css({ "position": "static" });
        }
    });

    //鼠标移入移出 a 样式
    $('.goodsnav a').hover(function () {
        $(this).css('color', '#a10000')
    }, function () {
        $(this).css('color', '#656565')
    });
    $('.nav>ul>li').hover(function () {
        $(this).find('.menu').css({ 'borderTop': '5px solid #B81C22', 'zIndex': '101' }).slideDown(200);

    }, function () {
        $(this).find('.menu').slideUp(200);
    });


    //发送请求渲染页面, 模糊查询,价格,最新等排序
    var ipage = 1;   //1页
    var num = 25;    //25条记录
    var pagesall = 0; //总页
    var type = ''; //是否排序
    var order = '';//升序,降序

    //初始化第一页 
    function init(ipage) {
        $.ajax({
            type: 'get',
            url: '../api/showlist.php',
            data: 'page=' + ipage + '&num=' + num + '&type=' + type + '&order=' + order,
            success: function (str) {
                var arr = JSON.parse(str);
                var newarr = arr.data;
                $('.kunnum').html(arr.total);
                //页数                
                pagesall = Math.ceil(arr.total / arr.num) - 1;
                create(newarr);
                $('.pager li').eq(arr.page - 1).addClass('active'); //当前页码高亮
            }
        });
    }
    init(1);
    function create(arr) {
        // console.log(newarr);
        // 遍历数组,切割图片渲染
        var result = arr.map(function (item, index) {
            return ` <li data-gid='${item.gid}'>
                        <div class="picture">
                        <a href = '###'> <img src='../img/indeximg/${item.imgurl.split('&')[0]}'></a> 
                        </div>
                        <p>
                            <a href="" title="${item.descript}">${item.descript}</a>
                        </p>
                        <div class="Mpricediv">
                            <span class="Sprice">售价￥ ${item.nowprice}</span>
                        </div>
                        <div class="goodsmessage">
                            <div class="messageicon"></div>
                            <div class="messagebox">
                                <div class="imgs">
                                    <img src="../img/indeximg/${item.imgurl.split('&')[0]}" alt="">
                                </div>
                                <div class="goodstitle">
                                ${item.descript}
                                </div>
                                <p>产品编号:${item.code}</p>
                                <div class="saleprice">
                                    <a href="" class="fl">售价:￥ ${item.nowprice}</a>
                                    <a href="" class="fl">
                                        好评率
                                        <br>
                                        <span>100%</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>`
        }).join('');
        $('.productlist').html(result);
        //鼠标移入移出 显示隐藏宝贝信息
        $('.picture').hover(function () {
            $(this).css('border', '1px solid #b81c22').parent().find('.goodsmessage').show();;
        }, function () {
            $(this).css('border', '1px solid #dbd7d6').parent().find('.goodsmessage').hide();
        });
        //动态生成页码
        var html = '';  //拼接页码
        for (var i = 0; i < pagesall; i++) {
            html += "<li>" + (i + 1) + "</li>";
        }
        $('.pageleft .pager').html(html);
        $('.pageright em').html(pagesall); //页码渲染

        //事件委托
        $('.pageleft .pager').on('click', 'li', function () {
            var pagenum = $(this).html();
            $(this).addClass('active').siblings().removeClass('active');
            ipage = pagenum;
            init(pagenum);
        });
        //点击跳转详情页
        $('.productlist li').click(function () {
            //点击跳转至详情页
            var gid = $(this).attr('data-gid');
            var tempwindow = window.open('_blank');
            tempwindow.location = 'detailpages.html?' + 'data-gid=' + gid;
        });

        //点击输入页码跳转
        $('.confirmbtn').click(function () {
            ipage = $('.intsearch').val();
            init(ipage);
        });
    }
    //点击上一页
    $('.pageleft .pre').click(function () {
        if (ipage > 1 && ipage <= pagesall) {
            init(--ipage);
        }
    });
    $('.pageleft .pre').hover(function () {
        $(this).css('background', 'url(../img/indeximg/sprites.png) no-repeat 3px -2018px').find('a').css('color', '#b81c22');
    }, function () {
        $(this).css('background', 'url(../img/indeximg/sprites.png) no-repeat 3px -1996px').find('a').css('color', '#333');
    });

    //点击下一页
    $('.pageleft .next').click(function () {
        if (ipage >= 1 && ipage != pagesall) {
            init(++ipage);
        }
    });

    $('.pageleft .next').hover(function () {
        $(this).css('background', 'url(../img/indeximg/sprites.png) no-repeat 53px -1975px').find('a').css('color', '#b81c22');
    }, function () {
        $(this).css('background', 'url(../img/indeximg/sprites.png) no-repeat 53px -1953px').find('a').css('color', '#333');
    });


    //根据销量排序
    var isok = true;
    $('.saleNum').click(function () {
        type = "buy";
        if (isok) {
            //升序
            $('.saleNum').parent().attr('title', '按销量由高到低');
            order = 'ASC'; //升序

        } else {
            //降序
            $('.saleNum').parent().attr('title', '按销量由低到高');
            order = 'DESC'; //降序
        }
        isok = !isok;
        init(1);
    });
    //根据价格排序
    var isok1 = true;
    $('.sortprice a').click(function () {
        type = "nowprice";
        if (isok1) {
            //升序
            $('.sortprice').parent().attr('title', '按价格由高到低');
            order = 'ASC'; //升序
        } else {
            //降序
            $('.sortprice').parent().attr('title', '按价格由低到高');
            order = 'DESC'; //降序
        }
        isok1 = !isok1;
        init(1);
    });

    //根据最新排序
    var isok2 = true;
    $('.newlist').click(function () {
        type = "gid";
        if (isok2) {
            //升序
            $('.newlist').parent().attr('title', '按最新排序');
            order = 'ASC'; //升序
        } else {
            //降序
            $('.newlist').parent().attr('title', '按最新排序');
            order = 'DESC'; //降序
        }
        isok2 = !isok2;
        init(1);
    });
    //查询价格区间
    $('.setprice input').focus(function () {
        $('.mohu').show();
    });
    //模糊查询
    $('#searchBtn').click(function () {
        var txt = $('#searchTxt').val(); //模糊查询关键字
        $.ajax({
            type: 'get',
            url: '../api/showlist.php',
            data: 'page=' + ipage + '&num=' + num + '&searchtxt=' + txt,
            success: function (str) {
                var arr = JSON.parse(str);
                var newarr = arr.search;
                console.log(newarr)
                $('.kunnum').html(arr.total2);
                pagesall = Math.ceil(arr.total2 / arr.num);
                $('.pager li').eq(arr.page - 1).addClass('active'); //当前页码高亮
                create(newarr);
            }
        });
        init(1);

    });
    //价格区间
    $('.pricecheck').click(function () {
        var minprice = $('.minprice').val();
        var maxprice = $('.maxprice').val();
        $.ajax({
            type: 'get',
            url: '../api/showlist.php',
            data: 'page=' + ipage + '&num=' + num + '&value1=' + minprice + '&value2=' + maxprice,
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr);
                var newarr = arr.pricearea;
                pagesall = Math.ceil(arr.total3 / arr.num);
                $('.kunnum').html(arr.total3);
                $('.pager li').eq(arr.page - 1).addClass('active'); //当前页码高亮
                create(newarr);
            }
        });
        init(1);
    });

    function creatcert(arr) {
        var res = arr.map(function (item) {
            return ` <li class="clearfix">
                        <div class="fl">
                        <img src="../img/indeximg/${item.imgurl}" alt="">
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
});