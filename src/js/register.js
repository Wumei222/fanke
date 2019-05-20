$(function () {
    var isok1 = false;
    var isok2 = false;
    var isok3 = false;
    var isok4 = false;
    var isok5 = false;

    //随机验证码
    $('.verification_code').createCode({
        len: 6
    });
    //验证码框失去焦点
    $('.verification_code_txt').blur(function () {
        var verificateTxt = $.trim($(this).val());
        if (!verificateTxt) {
            $('.tips2').eq(0).html('请输入图片验证码').show();
            isok1 = false;
        } else {
            $('.tips2').eq(0).html('请输入图片验证码').hide();
        }
    });

    $('.phone_num').focus(function () {
        $('.tips1').eq(1).show().html('请输入真实的手机号,并进行验证').siblings().hide();
    });
    $('.phone_num').blur(function () {
        $('.tips1').eq(1).hide();
    });
    //点击获取验证码判断图片验证是否正确,
    //手机号是否符合规范
    //手机是否已被注册
    $('.get_message').click(function () {
        var phoneNnum = $.trim($('.phone_num').val());
        var verificateTxt = $.trim($('.verification_code_txt').val());
        var code = $('.verification_code').find('input').val();
        if (phoneNnum) {
            //手机号验证
            var pattern = /^1[3-9]\d{9}$/;
            var correct = pattern.test(phoneNnum);
            if (correct) {
                if (verificateTxt) {
                    if (verificateTxt.toLowerCase() == code.toLowerCase()) {
                        //验证手机是否可注册
                        $.ajax({
                            type: 'get',
                            url: '../api/telCheck.php',
                            data: 'telphone=' + phoneNnum,
                            success: function (str) {
                                if (str == 'yes') {
                                    $('.tips2').eq(1).show().html('手机号码已注册').siblings().val('');

                                    isok2 = false;
                                } else {
                                    // 发送请求点击获取短信验证码
                                    $.ajax({
                                        type: 'post',
                                        url: '../api/verify.php',
                                        data: 'userphone=' + phoneNnum,
                                        success: function (str) {
                                            var obj = JSON.parse(str);
                                            console.log(obj);
                                            if (obj.phonecode == $('.input_message').val()) {
                                                isok3 = true;
                                            } else {
                                                isok3 = false;
                                            }
                                        }
                                    });

                                    isok1 = true;
                                    isok2 = true;
                                }
                            }

                        });

                    } else {
                        $('.tips2').eq(0).html('请输入正确的验证码后,再获取短信验证码').show();
                        verificateTxt.focus();
                        isok1 = false;
                    }
                } else {
                    $('.tips2').eq(0).html('请输入图片上的验证码后,再获取短信验证码').show();
                    isok1 = false;
                }
            } else {
                $('.tips2').eq(1).show().html('请输入有效的手机号');
                isok2 = false;
            }
        }
        else {
            $('.tips2').eq(1).show().html('请输入有效的手机号');
            isok2 = false;
        }
    });


    $('.input_message').focus(function () {
        $('.tips1').eq(2).show().html('请输入手机接收到的验证码');
        isok3 = true;
    });

    $('.password').focus(function () {
        $('.tips1').eq(3).show().html('6-16位字符,可使用字母,数字以及符号的组合').siblings().hide();
    });

    //密码框失去焦点验证密码长度及密码强度
    function checkpwd(obj) {
        var txt = $.trim(obj.val());//输入框内容 trim处理两端空格
        var len = txt.length;
        var num = /\d/.test(txt);//匹配数字
        var small = /[A-z]/.test(txt);//匹配大小写字母
        var corps = /\W/.test(txt);//特殊符号
        var val = num + small + corps; //三个组合
        // console.log(val);
        if (len > 1 && len < 6) {
            $('.tips2').eq(3).show().html('密码必须大于6位,请重新输入').siblings().hide();
            isok4 = false;

        } else {
            if (val == 1) {
                // console.log($('#tips').hide().siblings().show().find('.strength_color'))
                $('#tips').hide().siblings().show().find('.strength_color').css('background', 'url(../img/indeximg/sprite_a.png) no-repeat 0 -1090px').next('.strength_txt').html('弱');
                isok4 = true;
            } else if (val == 2) {
                $('#tips').hide().siblings().show().find('.strength_color').css('background', 'url(../img/indeximg/sprite_a.png) no-repeat 0 -1110px').next('.strength_txt').html('中');
                isok4 = true;
            } else if (val == 3) {
                $('#tips').hide().siblings().show().find('.strength_color').css('background', 'url(../img/indeximg/sprite_a.png) no-repeat 0 -1132px').next('.strength_txt').html('强');
                isok4 = true;
            }
            return false;
        }
    }

    $('.password').blur(function () {
        checkpwd($(this));
    });

    $('.confirm_password').focus(function () {
        $('.tips1').eq(4).show().html('请再次输入登录密码,两次输入必须一致').siblings().hide();
    });

    $('.confirm_password').blur(function () {
        var password = $.trim($('.password').val());
        var conpassword = $.trim($(this).val());
        if (conpassword) {
            if (password == conpassword) {
                $('.tips1').eq(4).hide().siblings().hide();
                isok5 = true;
            }
            else {
                $('.tips2').eq(4).show().html('两次输入密码不一致，请重新输入').siblings().hide();
                isok5 = false;
            }
        }
    });

    //点击已阅读,注册按钮高亮
    $('.checkbox').click(function () {
        if ($(this).prop('checked')) {
            $('.registerbtn').css({
                'background': '#b52024',
                'color': '#fff',
            })
        } else {
            $('.registerbtn').css({
                'background': '',
                'color': '',
            })
        }
    });

    //点击注册按钮,发送请求插入数据库
    $('.registerbtn').click(function () {
        var password = $.trim($('.password').val());
        var phoneNnum = $.trim($('.phone_num').val());

        if (!phoneNnum && $('.checkbox').prop('checked')) {
            $('.tips2').eq(1).show().html('请输入有效的手机号');
        }
        if (isok1 && isok2 && isok3 && isok4 && isok5 && $('.checkbox').prop('checked')) {
            $.ajax({
                type: 'post',
                url: '../api/register.php',
                data: { 'telphone': phoneNnum, 'password': password },
                success: function (str) {
                    if (str == 'yes') {
                        var nPhone = phoneNnum.substr(0, 4) + '*****' + phoneNnum.substring(9, 11);
                        setCookie('user', nPhone, 1);
                        location.href = '../index.html';
                    } else {
                        alert(注册失败);
                    }
                }

            });

        }

    });



});