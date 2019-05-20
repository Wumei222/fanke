//登录页
$(function () {

    //登录方式切换
    $('.login_tab span').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        var dex = $(this).index();
        $(this).parent().siblings('form').children().eq(dex).addClass('selected').siblings().removeClass('selected');
    });

    // 表单验证
    //开关
    isok1 = false;
    isok2 = false;
    //验证用户名失去焦点发送请求且非空验证
    $('.username').blur(function () {
        var username = $.trim($(this).val());
        if (username) {
            //正则验证手机
            var pattern = /^1[3-9]\d{9}$/;
            var correct = pattern.test(username);
            if (correct) {
                isok1 = true;
            }
            else {
                $('.tips').eq(0).css('visibility', 'visible').html('请输入有效手机号码!');
                isok1 = false;
            }

        } else {
            $('.tips').eq(0).css('visibility', 'visible').html('用户名不能为空!');
            isok1 = false;
        }
    });

    //验证密码失去焦点发送请求且非空验证
    $('.password').blur(function () {
        var password = $.trim($(this).val());
        if (password) {
            isok2 = true;
        } else {
            $('.tips').eq(1).css('visibility', 'visible').html('密码不能为空!');
            isok2 = false;
        }
    });
    //点击登录按钮,提交用户信息
    $('.loginbtn').click(function () {
        if (isok1 && isok2) {
            $.ajax({
                type: "post",
                url: "../api/login.php",
                data: {
                    name: $(".username").val(),
                    password: $('.password').val()
                },
                success: function (str) {
                    // console.log(str);
                    if (str == 'yes') {
                        var nPhone = $('.username').val().substr(0, 4) + '*****' + $('.username').val().substring(9, 11);
                        setCookie('user', nPhone, 1);
                        location.href = '../index.html';
                    } else {
                        $('.loginchange .tips').eq(1).css('visibility', 'visible').html('账户与密码不符!');
                        $('.loginbtn').val('登录');
                    }
                }
            });
            $(this).val('正在登录...');
        }
    });

    //随机验证码
    $('.showcode').createCode({
        len: 6
    });


    // 快速登录
    isok6 = false;
    isok7 = false;
    isok8 = false;
    $('.getcode').click(function () {
        var pattern = /^1[3-9]\d{9}$/;
        var correct = pattern.test($('.phone')
            .val());
        var code = $('.showcode').find('input').val();
        if (correct) {
            $.ajax({
                type: 'get',
                url: '../api/fastlogin.php',
                data: 'user=' + $(".phone").val(), success: function (str) {
                    if (str == 'no') {
                        $('.tips').html('该用户名未注册');
                        isok6 = false;
                    } else {
                        isok6 = true;
                        $.ajax({
                            type: 'post',
                            url: '../api/verify.php',
                            data: {
                                userphone: $(".phone").val()
                            }, success: function (str) {
                                var obj = JSON.parse(str);
                                if (obj.phonecode == $('.phoneidentify').val()) {
                                    isok7 = true;
                                } else {
                                    isok7 = false;
                                }
                            }
                        });
                    }
                }
            });

        } else {
            $('.tips').html('请输入有效的手机号')
        }
        if ($('.identify').val().toLowerCase() == code.toLowerCase()) {
            isok8 = true;
        } else {
            isok8 = false;
        }
        $('.loginbtn2').click(function () {
            if (isok6 && isok7 && isok8) {
                var nPhone = $(".phone").val().substr(0, 4) + '*****' + $(".phone").val().substring(9, 11);
                setCookie('user', nPhone, 1);
                location.href = '../index.html';
            } else {
                $('.tips').html('登录失败')
            }
        });
    });
});