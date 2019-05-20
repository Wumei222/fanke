$(function () {

    //渲染购物车
    $.ajax({
        type: 'get',
        url: '../api/mycert.php',
        success: function (str) {
            var arr = JSON.parse(str);
            var newarr = arr.data;
            create(newarr);
        }
    });
    function create(data) {
        var html = data.map(function (item) {
            return `  <tr data-gid="${item.gid}">
             <td></td>
             <td class="selected">
                 <input type="checkbox" class="checkedbtn">
             </td>
             <td class="imgbox">
             <img src="../img/indeximg/${item.imgurl}" alt="">
             </td>
             <td class="descript">
                 ${item.descript}
             </td>
             <td> ${item.size}</td>
             <td class="price">
              ￥${item.nowprice}
             </td>
             <td class="num">
                 <span class="subtract fl"></span>
                 <input type="text" class="inputnum fl" value="${item.num}">
                 <span class="add fl"></span>
             </td>
             <td>-</td>
             <td class="xiaoji"></td>
             <td class="rowdelbox">
                <div class="confirm">
                    <p>确定要删除此商品吗?</p>
                    <div>
                        <a href="###" class="yes">确定 </a>        
                        <a href="###" class="no">取消 </a>      
                    </div>
                    <span class="delarrow"></span>
                </div>
                 <a href="###" class="rowdel">删除</a>
             </td>
             <td></td>
         </tr>`
        }).join('');
        $('.table tbody').html(html);
        //小计
        function total(now) {
            var now = $(now);
            //数量
            var num = now.parent().find('.inputnum').val();
            //单价
            var price = now.parent().prev().html().split('￥')[1];
            // 小计=数量*单价
            var xiaoji = (num * price).toFixed(2);
            console.log(xiaoji);
            now.parent().next().next().html('￥' + xiaoji);
            // console.log($(now).parent().next().next());
        }
        $('.num .add').each(function (index, item) {
            total(item);
        });

        //删除当前行
        $('.rowdel').click(function () {
            $(this).siblings().show().parent().parent().children().children().find('.confirm').hide();
            update();
        });
        $('.no').click(function () {
            $(this).parent().parent().hide();
            update();
        });
        $('.yes').click(function () {
            var gid = $(this).parent().parent().parent().parent().attr('data-gid');
            var tr = $(this).parent().parent().parent().parent().remove();
            // console.log(gid);
            $.ajax({
                type: 'get',
                url: '../api/deletorder.php',
                data: 'gid=' + gid,
                success: function (str) {
                    var arr = JSON.parse(str);
                    create(arr);
                }
            });
            update();
        });
        //全选
        $('.allselect').click(function () {
            var istrue = $(this).prop('checked');
            if (istrue) {
                $('.checkedbtn').prop('checked', istrue);
                $('.allchecked').prop('checked', istrue);
                $('tbody tr').css('background', 'rgb(248, 248, 248)');
                all();
            } else {
                $('.checkedbtn').prop('checked', istrue);
                $('.allchecked').prop('checked', istrue);
                $('tbody tr').css('background', '#fff');
                all();
            }


        });
        $('.allchecked').click(function () {
            var istrue = $(this).prop('checked');
            $('.checkedbtn').prop('checked', istrue);
            $('.allselect').prop('checked', istrue);
            all();
        });
        //反控制
        $('.checkedbtn').click(function () {
            var len = $('.checkedbtn:checked').length;
            var Tot = $('.checkedbtn').length;
            if (len == Tot) {
                $('.allchecked').prop('checked', true);
                $('.allselect').prop('checked', true);
                $('tbody tr').css('background', 'rgb(248, 248, 248)')
            } else {
                $('.allchecked').prop('checked', false);
                $('.allselect').prop('checked', false);
                $('tbody tr').css('background', '#fff')

            }
            all();//刷新总价总数量
            if ($(this).prop('checked')) {
                $(this).parent().parent().css('background', '#f8f8f8');
            } else {
                $(this).parent().parent().css('background', '#fff');
            }
        });

        //计算总价及总数
        //存放被勾选的复选框

        function all() {
            var arr = [];
            $('.checkedbtn').each(function (i, item) {
                if ($(item).prop('checked')) {
                    arr.push(i);
                }
            });

            var num = 0;
            var price = 0;
            // console.log(arr);
            arr.forEach(function (item) {
                num += $('.inputnum').eq(item).val() * 1;
                price += $('.xiaoji').eq(item).html().split('￥')[1] * 1;
            });

            //渲染节点
            $('.shuliang em').text(num);
            $('.amount em').text(price.toFixed(2));
        }
        //全删
        $('.alldel').click(function () {
            all();
            for (var i = arr.length - 1; i >= 0; i--) {
                $('tbody tr').eq(arr[i]).remove();
            }
            update();
        });

        //购物车无宝贝总计隐藏
        function update() {
            var len = $('.add').length;
            if (len) {
                $('.toatl').show();
            } else {
                $('.toatl').hide();
                $('.cartempty').show();
            }
        }

        //点击数量,修改数据库数据
        $('.add').click(function () {
            var number = $(this).prev().val();
            number++;
            //设置数量上限
            if (number >= 10) {
                number = 10;
            }
            var gid = $(this).parent().parent().attr('data-gid');
            $.ajax({
                type: 'get',
                url: '../api/updateorder.php',
                data: 'number=' + number + '&gid=' + gid,
                success: function (str) {
                    // console.log(str);
                    var arr = JSON.parse(str);
                    create(arr);
                }
            });
            console.log($(this).prev().val(number));
            total($(this));
            all();
        });
        $('.subtract').click(function () {
            var number = $(this).next().val();
            number--;
            // console.log((arr[0].store));
            //设置数量下限
            if (number <= 1) {
                number = 1;
            }
            var gid = $(this).parent().parent().attr('data-gid');
            $.ajax({
                type: 'get',
                url: '../api/updateorder.php',
                data: 'number=' + number + '&gid=' + gid,
                success: function (str) {
                    // console.log(str);
                    var arr = JSON.parse(str);
                    create(arr);
                }
            });
            $(this).next().val(number);
            total($(this));
            all();
        });
        $('.inputnum').keyup(function () {
            var number = $(this).val();
            if (number <= 1) {
                number = 1;
            } else if (number >= 10) {
                number = 10;
            }
            $(this).val(number);
            $(total(this));
            all();
        });

    }
    var data = location.href;
    // console.log(data);
    var arr = data.split('?')[1];
    if (arr) {
        var dataUid = arr.split('=')[1];
        // console.log(dataUid)
        if (dataUid) {
            $('.userme em').html(dataUid);
            setCookie('user', dataUid, 1);
            //导航栏
            $('.userme a').css('color', '#a10000').eq(0).html('退出登录').siblings().html('更换用户');
            $('.userme a').eq(0).click(function () {
                $(this).attr('href', '../index.html');
            });
        }
    }
    $('.gobuy').click(function () {
        $(this).attr('href', '../index.html');
    });

});