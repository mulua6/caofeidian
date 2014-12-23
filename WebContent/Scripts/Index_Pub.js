/*所有页面头的公公脚本*/

function AddFavorite(url, title) {
    try {
        window.external.addFavorite(url, title);
    }
    catch (e) {
        try {
            window.sidebar.addPanel(title, url, "");
        }
        catch (e) {
            alert("对不起，您的浏览器不支持此操作！\n请您使用您的菜单栏或Ctrl+D收藏本站");
        }
    }
}


$(function () {

    var realname = GetCookie("LoginRealname");

    if (realname != null && typeof (realname) != 'undefined' && realname !="") {
        $("#loginSucc").html("你好，" + realname + "！");
        $("#loginSucc").show();
        $("#loginSucc_a").show();

        $("#login_a").hide();
        $("#register_a").hide();
    }
    else {
        $("#login_a").show();
        $("#register_a").show();

        $("#loginSucc").html("");
        $("#loginSucc").hide();
        $("#loginSucc_a").hide();
    }
})

function GetCookie(cookie_name) {
    var allcookies = document.cookie;
    var cookie_pos = allcookies.indexOf(cookie_name);   //索引的长度  
    var value = "";

    // 如果找到了索引，就代表cookie存在，  
    // 反之，就说明不存在。  
    if (cookie_pos != -1) {
        // 把cookie_pos放在值的开始，只要给值加1即可。  
        cookie_pos += cookie_name.length + 1;      //这里我自己试过，容易出问题，所以请大家参考的时候自己好好研究一下。。。  
        var cookie_end = allcookies.indexOf(";", cookie_pos);
        if (cookie_end == -1) {
            cookie_end = allcookies.length;
        }
        value =decodeURIComponent(allcookies.substring(cookie_pos, cookie_end)); //这里就可以得到你想要的cookie的值了。。。  
    }

    return value;
}