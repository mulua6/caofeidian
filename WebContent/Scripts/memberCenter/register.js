


var isfalse = function ($ths) {
    $ths.parents("span").nextAll(".result").removeClass("ok").addClass("error");

}
var istrue = function ($ths) {
    $ths.parents("span").nextAll(".result").removeClass("error").addClass("ok");
}

var isnull = function ($ths) { var flag = $ths.val() == "" ? true : false; return flag; }
var ismail = function ($ths) { var reg = /\b[A-Z0-9._%+-]+@(?!(?:163|hotmail)\.com)[A-Z0-9.-]+\.[A-Z]{2,6}\b/i; var flag = reg.test($ths.val()); return flag; }
var isnumber = function ($ths) { var reg = /^[0-9]*$/; var flag = reg.test($ths.val()); return flag; }
var ismobile = function ($ths) { var reg = /^[0-9]{11}$/; var flag = reg.test($ths.val()); return flag; }
var iscookie = function ($ths) { var flag = $ths.val() == getCookie("RegisterUser") ? true : false; return flag; }

function getCookie(cookie_name) {
    var allcookies = document.cookie;
    var cookie_pos = allcookies.indexOf(cookie_name);   //索引的长度  
    // 如果找到了索引，就代表cookie存在，  
    // 反之，就说明不存在。  
    if (cookie_pos != -1) {
        // 把cookie_pos放在值的开始，只要给值加1即可。  
        cookie_pos += cookie_name.length + 1;      //这里我自己试过，容易出问题，所以请大家参考的时候自己好好研究一下。。。  
        var cookie_end = allcookies.indexOf(";", cookie_pos);
        if (cookie_end == -1) {
            cookie_end = allcookies.length;
        }
        var value = unescape(allcookies.substring(cookie_pos, cookie_end)); //这里就可以得到你想要的cookie的值了。。。  
    }
    return value;

}



$(function () {
    
    $("#Send").removeAttr("disabled");

    //真实姓名
    $('#TBUname').blur(function () { isnull($(this)) == true ? isfalse($(this)) : istrue($(this)); });
    //电子邮箱
    $('#TBEmail').blur(function () { ismail($(this)) == true ? istrue($(this)) : isfalse($(this)); });
    //固定电话
    $('#TBTelCNumber').blur(function () {
        if (isnull($(this)) || isnull($('#TBPNumber')) || isnull($('#TBTelTNumber')))
            isfalse($(this));
        else {
            if (isnumber($(this)) && isnumber($('#TBPNumber')) && isnumber($('#TBTelTNumber'))) istrue($(this));
            else isfalse($(this));
        }
    });
    $('#TBPNumber').blur(function () {
        if (isnull($(this)) || isnull($('#TBTelCNumber')) || isnull($('#TBTelTNumber')))
            isfalse($(this));
        else {
            if (isnumber($(this)) && isnumber($('#TBTelCNumber')) && isnumber($('#TBTelTNumber'))) istrue($(this));
            else isfalse($(this));
        }
    });
    $('#TBTelTNumber').blur(function () {
        if (isnull($(this)) || isnull($('#TBTelCNumber')) || isnull($('#TBPNumber')))
            isfalse($(this));
        else {
            if (isnumber($(this)) && isnumber($('#TBTelCNumber')) && isnumber($('#TBPNumber'))) istrue($(this));
            else isfalse($(this));
        }
    });
    //传真
    $('#TBCZCNumber').blur(function () {
        if (isnumber($(this)) && isnumber($('#TBCZPNumber')) && isnumber($('#TBCZTNumber'))) istrue($(this));
        else isfalse($(this));
    });
    $('#TBCZPNumber').blur(function () {
        if (isnumber($(this)) && isnumber($('#TBCZCNumber')) && isnumber($('#TBCZTNumber'))) istrue($(this));
        else isfalse($(this));
    });
    $('#TBCZTNumber').blur(function () {
        if (isnumber($(this)) && isnumber($('#TBCZCNumber')) && isnumber($('#TBCZPNumber'))) istrue($(this));
        else isfalse($(this));
    });
    //手机
    $('#TBMobelNumber').blur(function () { ismobile($(this)) == true ? istrue($(this)) : isfalse($(this)); });
    //公司名称
    $('#TBComName').blur(function () { isnull($(this)) == true ? isfalse($(this)) : istrue($(this)); });
    //公司地址
    $('#TBComAdress').blur(function () { isnull($(this)) == true ? isfalse($(this)) : istrue($(this)); });
    //邮政编码
    $('#TBPost').blur(function () { isnumber($(this)) == true ? istrue($(this)) : isfalse($(this)); });
    //验证编码
    $('#TBValid').blur(function () { iscookie($(this)) == true ? istrue($(this)) : isfalse($(this)); });
   
})


var SendClick = function () {    

    //真实姓名
    if (isnull($('#TBUname'))) {
        isfalse($('#TBUname'));
        return false;
    }
    else {
        istrue($('#TBUname'));
    }

    //电子邮箱
    if (ismail($('#TBEmail')))
        istrue($('#TBEmail'));
    else {
        isfalse($('#TBEmail'));
        return false;
    }
    //固定电话
    if (isnull($('#TBTelTNumber')) || isnull($('#TBTelCNumber')) || isnull($('#TBPNumber'))) {
        isfalse($('#TBPNumber'));
        return false;
    }
    else {
        if (isnumber($('#TBPNumber')) && isnumber($('#TBTelCNumber')) && isnumber($('#TBTelTNumber')))
            istrue($('#TBPNumber'));
        else {
            isfalse($('#TBPNumber'));
            return false;
        }
    }
    //传真
    if (isnumber($('#TBCZCNumber')) && isnumber($('#TBCZPNumber')) && isnumber($('#TBCZTNumber')))
        istrue($('#TBCZTNumber'));
    else {
        isfalse($('#TBCZTNumber'));
        return false;
    }
    //手机
    if (ismobile($('#TBMobelNumber')))
        istrue($('#TBMobelNumber'));
    else {
        isfalse($('#TBMobelNumber'));
        return false;
    }
    //公司名称
    if (isnull($('#TBComName'))) {
        isfalse($('#TBComName'));
        return false;
    }
    else {
        istrue($('#TBComName'));
    }

    //公司地址 
    if (isnull($('#TBComAdress'))) {
        isfalse($('#TBComAdress'));
        return false;
    }
    else
        istrue($('#TBComAdress'));
    //邮政编码
    if (isnumber($('#TBPost')))
        istrue($('#TBPost'));
    else {
        isfalse($('#TBPost'));
        return false;
    }
    
    //验证码
    if (iscookie($('#TBValid'))) {
        istrue($('#TBValid'));
    }
    else {
        isfalse($('#TBValid'));
        return false;
    }

    $("#Send").attr("disabled", "disabled");

    document.getElementById("form1").submit();
}
$(function () {
    $("#valiCode").bind("click", function () {
        this.src = "/MemberCenter/GetValidateCode?time=" + (new Date()).getTime();
    });
});




