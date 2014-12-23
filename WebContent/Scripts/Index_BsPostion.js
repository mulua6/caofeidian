
(function ($) {

    $.fn.zList = {

        init: function (obj, defultNodes, tmp) {
            this.currentInput = null;
            this.render = '<div class=\"portlist\" id=\"Postion' + tmp + '\" style=\"position:absolute;z-index:120;overflow:hidden;display:none;\">' +
            '<div class=\"port_warpperjzx\">' +
            '<div class=\"port_msg\" id=\"port_message' + tmp + '\">&nbsp;<\/div>' +
            '<div class=\"port_contxt\" id=\"port_list' + tmp + '\">' +
            '<a class=\"a1\"><span>&nbsp;<\/span><\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span><\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<\/div>' +
            '<\/div>' +
            '<\/div>';
            if ($("#Postion" + tmp).length == 0) {
                $(this.render).prependTo('body');
            }
            $.fullOneSearch(tmp, this.currentInput, defultNodes);
            obj.each(function (i, e) {
                var $e = $(e);
                if (i == 0)
                    this.currentInput = e;
                this.currentItem = -1;
                $e.focus(function (event) {
                    var p = $.getPostion(event.target);
                    $("#Postion" + tmp).css({ top: p.bottom, left: p.left });
                    $("#Postion" + tmp).fadeIn('slow');
                    $("#Postion" + tmp).show();
                    this.currentInput = event.target;
                });
                $e.blur(function (event) {
                    if ($("#Postion" + tmp).css("display") != "none") {
                        $("#Postion" + tmp).hide();
                        if (event.target.value != "") {
                            var v = $("#port_list" + tmp + "> a:first >span").text();
                            event.target.value = v;
                        }
                    }
                    if (e.value == "") {
                        $e.attr("vid", "");
                    }
                    this.currentInput = null;
                });
                $e.change(function (event) {
                    if (e.value == "") {
                        $e.attr("vid", "");
                    }
                });
                $e.keyup(function (event) {
                    $.fullOneSearch(tmp, this.currentInput, defultNodes, event.target.value);
                });
                $e.click(function (event) {
                    if (this.currentInput.textLength > 0) {
                        var p = $.getPostion(event.target);
                        $("#Postion" + tmp).css({ top: p.bottom, left: p.left });
                        $("#Postion" + tmp).show();
                        $.fullOneSearch(tmp, this.currentInput, defultNodes, event.target.value);
                    } else {
                        $('#port_message' + tmp).text("请输入你要查找的内容");
                    }
                });
            });
        }

    }
    $.fn.AllList = {

        init: function (objCountry, objProvince, objCity, defultNodes, tmp, setvalue) {

            var obj;
            var tmpNodes = null;
            switch (tmp) {
                case "Country":
                    tmpNodes = defultNodes;
                    obj = objCountry;
                    break;
                case "Province":
                    tmpNodes = defultNodes;
                    obj = objProvince;
                    break;
                case "City":
                    for (var j = 0; j <= defultNodes.length - 1; j++) {
                        if (setvalue != null && setvalue != "" && setvalue != undefined) {
                            if (defultNodes[j].pname != setvalue) {
                                defultNodes.splice(j, 1);
                            }
                        }
                    }
                    tmpNodes = defultNodes;
                    obj = objCity;
                    break;
            }

            this.currentInput = null;
            this.render = '<div class=\"portlist\" id=\"Postion' + tmp + '\" style=\"position:absolute;z-index:9999;overflow:hidden;display:none;\">' +
            '<div class=\"port_warpperjzx\">' +
            '<div class=\"port_msg\" id=\"port_message' + tmp + '\">&nbsp;<\/div>' +
            '<div class=\"port_contxt\" id=\"port_list' + tmp + '\">' +
            '<a class=\"a1\"><span>&nbsp;<\/span><\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span><\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<\/div>' +
            '<\/div>' +
            '<\/div>';
            if ($("#Postion" + tmp).length == 0) {
                $(this.render).prependTo('body');
            }
            $.fullChangeSearch(tmp, this.currentInput, tmpNodes, "", setvalue, objCountry, objProvince, objCity);
            obj.each(function (i, e) {
                var $e = $(e);
                if (i == 0)
                    this.currentInput = e;
                this.currentItem = -1;
                $e.focus(function (event) {
                    var p = $.getPostion(event.target);
                    $("#Postion" + tmp).css({ top: p.bottom, left: p.left });
                    $("#Postion" + tmp).fadeIn('slow');
                    $("#Postion" + tmp).show();
                    this.currentInput = event.target;
                });
                $e.blur(function (event) {
                    if ($("#Postion" + tmp).css("display") != "none") {
                        $("#Postion" + tmp).hide();
                        if (event.target.value != "") {
                            var v = $("#port_list" + tmp + "> a:first >span").text();
                        }
                        else {
                            $e.attr("vid", "");
                        }
                    }
                    this.currentInput = null;
                });

                $e.change(function (event) {
                    switch (tmp) {
                        case "Country":
                            objProvince.val("");
                            objCity.val("");
                            objProvince.attr("vid", "");
                            objCity.attr("vid", "");
                            $.SetEmpty("Province");
                            $.SetEmpty("City");
                            break;
                        case "Province":
                            objCity.val("");
                            objCity.attr("vid", "");
                            $.SetEmpty("City");
                            break;
                    }
                });
                $e.keyup(function (event) {
                    $.fullChangeSearch(tmp, this.currentInput, tmpNodes, event.target.value, setvalue, objCountry, objProvince, objCity);
                });
                $e.click(function (event) {
                    if (this.currentInput.textLength > 0) {
                        var p = $.getPostion(event.target);
                        $("#Postion" + tmp).css({ top: p.bottom, left: p.left });
                        $("#Postion" + tmp).show();
                        $.fullChangeSearch(tmp, this.currentInput, tmpNodes, event.target.value, setvalue, objCountry, objProvince, objCity);
                    } else {
                        if (objProvince.val() != "") {
                            var p = $.getPostion(event.target);
                            $("#Postion" + tmp).css({ top: p.bottom, left: p.left });
                            $("#Postion" + tmp).show();
                            $.fullChangeSearch(tmp, this.currentInput, tmpNodes, event.target.value, objProvince.val(), objCountry, objProvince, objCity);

                        }
                        $('#port_message' + tmp).text("请输入你要查找的地方");
                    }
                });

            });
        }

    }
    $.fn.dropList = {

        init: function (objId, defultNodes, tmp) {
            this.currentInput = null;
            var strhtml = '<option value="" >请选择</option>';
            this.render = '<option value="" >请选择</option>';
            if (defultNodes) {
                var jsonEx = eval(defultNodes);
                for (var j = 0; j <= jsonEx.length - 1; j++) {
                    var sltH = "";
                    if (tmp != "") {
                        if (jsonEx[j].id == tmp) {
                            sltH = 'selected="selected"';
                        }
                    }
                    if (jsonEx[j].pId == 0) {
                        strhtml += '<option value="' + jsonEx[j].id + '" ' + sltH + ' >' + jsonEx[j].name + '</option>'
                    }
                }
                this.render = strhtml;
            }
            $("#" + objId + " option").each(function (i, e) {
                $(this).remove();
            });

            if ($("#" + objId + " option").length == 0) {

                $(this.render).appendTo($("#" + objId));
            }
        }

    }

    //重置
    $.SetEmpty = function (tmp) {
        if (tmp)
            document.getElementById("Postion" + tmp).innerHTML =
            '<div class=\"port_warpperjzx\">' +
            '<div class=\"port_msg\" id=\"port_message' + tmp + '\">&nbsp;<\/div>' +
            '<div class=\"port_contxt\" id=\"port_list' + tmp + '\">' +
            '<a class=\"a1\"><span>&nbsp;<\/span><\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span><\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<a class=\"a1\"><span>&nbsp;<\/span>&nbsp;<\/a>' +
            '<\/div>' +
            '<\/div>' +
            '<\/div>';
        return true;
    };
    $.sortSearch = function (a, b) {
        var c = a.match(/^[^\|]+/), d = b.match(/^[^\|]+/);
        return c > d ? 1 : (c == d ? 0 : -1);
    };
    $.fullChangeSearch = function (tmp, input, options, value, setValue, objCountry, objProvince, objCity) {

        var $Source = "@";
        if (options) {
            var jsonCPC = eval(options);
            for (var j = 0; j <= jsonCPC.length - 1; j++) {
                if (jsonCPC[j].jstype) {
                    if (jsonCPC[j].jstype == 1) {
                        $Source += jsonCPC[j].ename + "|" + jsonCPC[j].name + "|" + jsonCPC[j].id + "@";
                    } else if (jsonCPC[j].jstype == 2) {
                        if (jsonCPC[j].childs != "" && jsonCPC[j].childs != null) {
                            for (var k = 0; k <= jsonCPC[j].childs.length - 1; k++) {
                                if ((setValue != "" && jsonCPC[j].name == setValue)) {

                                    $Source += jsonCPC[j].name + "|" + jsonCPC[j].childs[k].pname + "|" + jsonCPC[j].childs[k].pid + "|" + jsonCPC[j].childs[k].pename + "|" + jsonCPC[j].id + "|" + jsonCPC[j].ename + "@";
                                } else {
                                    if (value != "" && jsonCPC[j].childs[k].pname == objProvince.val()) {

                                        $Source += jsonCPC[j].name + "|" + jsonCPC[j].childs[k].pname + "|" + jsonCPC[j].childs[k].pid + "|" + jsonCPC[j].childs[k].pename + "|" + jsonCPC[j].id + "|" + jsonCPC[j].ename + "@";
                                    }
                                    else if (value != "" && jsonCPC[j].name == objCountry.val()) {

                                        $Source += jsonCPC[j].name + "|" + jsonCPC[j].childs[k].pname + "|" + jsonCPC[j].childs[k].pid + "|" + jsonCPC[j].childs[k].pename + "|" + jsonCPC[j].id + "|" + jsonCPC[j].ename + "@";
                                    }
                                }
                            }
                        }

                    } else if (jsonCPC[j].jstype == 3) {
                        if (jsonCPC[j].childs != "" && jsonCPC[j].childs != null) {
                            for (var k = 0; k <= jsonCPC[j].childs.length - 1; k++) {
                                if ((setValue != "" && jsonCPC[j].pname == setValue)) {

                                    $Source += jsonCPC[j].pname + "|" + jsonCPC[j].childs[k].cname + "|" + jsonCPC[j].childs[k].cid + "|" + jsonCPC[j].childs[k].cename + "|" + jsonCPC[j].pid + "|" + jsonCPC[j].pename + "@";
                                } else {
                                    if (value != "" && jsonCPC[j].pname == objProvince.val()) {

                                        $Source += jsonCPC[j].pname + "|" + jsonCPC[j].childs[k].cname + "|" + jsonCPC[j].childs[k].cid + "|" + jsonCPC[j].childs[k].cename + "|" + jsonCPC[j].pid + "|" + jsonCPC[j].pename + "@";
                                    }
                                }
                            }
                        }
                    }
                } else {
                    $Source += jsonCPC[j].ChShortName + "|" + jsonCPC[j].EnShortName + "|" + jsonCPC[j].id + "|" + jsonCPC[j].ChName + "|" + jsonCPC[j].EnName + "@";
                }
            }
        }
        var data = new Array();
        if (value && value.length > 0) {
            $('#port_message' + tmp).text("查找:" + value.replace(/\\/gi, ""));
            var rgSource = new RegExp("@[^@]*" + value + "[^@]*", "gi");
            data = $Source.match(rgSource);
            if (data) {
                data.sort($.sortSearch);
                for (i = 0; i < Math.min(data.length, 12) ; i++) {
                    var ct = data[i].match(/^[^\|]+/);
                    if (ct && (ct[0] == '@' + value.toUpperCase())) {
                        var temp = data[0];
                        data[0] = data[i];
                        data[i] = temp;
                    }
                }
            }
        }

        if (data) {
            $("#port_list" + tmp + " a").each(function (i, e) {
                var $e = $(e);
                if (data[i]) {
                    var item = data[i].replace(/@/g, "").split("|");
                    if (i == 0) {
                        $(input).attr("vid", item[2]);
                    }
                    $e.html("<span>" + item[1] + "</span>" + item[0]);
                    $e.unbind("mousedown");
                    $e.bind("mousedown", function (event) {
                        if (input) {
                            $input = $(input);
                            $input.val(item[1]);
                            $input.attr("vid", item[2]);
                            $AppendValue = $("#" + $input.attr("appendvalue"));
                            if ($AppendValue.length > 0)
                                $AppendValue.val(item[0]);
                            $input.attr("vParent", item[0]);
                        }
                    });
                    $(input).removeClass("txt-rightTitle");
                    $(input).addClass("txt-rightTitle-focus");
                }
                else {
                    $e.unbind("mousedown");
                    $e.empty();
                    $e.addClass("anone");
                }
            });
        }
        else {

            if (value != "") {

                $('#port_message' + tmp).text("对不起, 找不到: " + value);
            }
        }
    }
    $.fullOneSearch = function (tmp, input, options, value) {
        var $Source = "@";
        if (options) {
            var jsonCPC = eval(options);
            for (var j = 0; j <= jsonCPC.length - 1; j++) {
                if (jsonCPC[j].jstype) {
                    if (jsonCPC[j].jstype == 1) {
                        $Source += jsonCPC[j].ename + "|" + jsonCPC[j].name + "|" + jsonCPC[j].id + "@";
                    } else if (jsonCPC[j].jstype == 2) {
                        if (jsonCPC[j].childs != "" && jsonCPC[j].childs != null) {
                            for (var k = 0; k <= jsonCPC[j].childs.length - 1; k++) {
                                $Source += jsonCPC[j].name + "|" + jsonCPC[j].childs[k].pname + "|" + jsonCPC[j].childs[k].pid + "|" + jsonCPC[j].childs[k].pename + "|" + jsonCPC[j].id + "|" + jsonCPC[j].ename + "@";
                            }
                        }

                    } else if (jsonCPC[j].jstype == 3) {
                        if (jsonCPC[j].childs != "" && jsonCPC[j].childs != null) {
                            for (var k = 0; k <= jsonCPC[j].childs.length - 1; k++) {
                                $Source += jsonCPC[j].pname + "|" + jsonCPC[j].childs[k].cname + "|" + jsonCPC[j].childs[k].cid + "|" + jsonCPC[j].childs[k].cename + "|" + jsonCPC[j].pid + "|" + jsonCPC[j].pename + "@";
                            }
                        }
                    }
                } else {
                    $Source += jsonCPC[j].ChShortName + "|" + jsonCPC[j].EnShortName + "|" + jsonCPC[j].id + "|" + jsonCPC[j].ChName + "|" + jsonCPC[j].EnName + "@";
                }
            }
        }
        var data = new Array();
        if (value && value.length > 0) {
            $('#port_message' + tmp).text("查找:" + value.replace(/\\/gi, ""));
            var rgSource = new RegExp("@[^@]*" + value + "[^@]*", "gi");
            data = $Source.match(rgSource);
            if (data) {
                data.sort($.sortSearch);
                for (i = 0; i < Math.min(data.length, 12) ; i++) {
                    var ct = data[i].match(/^[^\|]+/);
                    if (ct && (ct[0] == '@' + value.toUpperCase())) {
                        var temp = data[0];
                        data[0] = data[i];
                        data[i] = temp;
                    }
                }
            }
        }

        if (data) {
            $("#port_list" + tmp + " a").each(function (i, e) {
                var $e = $(e);
                if (data[i]) {
                    var item = data[i].replace(/@/g, "").split("|");
                    if (i == 0) {
                        $(input).attr("vid", item[2]);
                    }
                    $e.html("<span>" + item[1] + "</span>" + item[0]);
                    $e.unbind("mousedown");
                    $e.bind("mousedown", function (event) {
                        if (input) {
                            $input = $(input);
                            $input.val(item[1]);
                            $input.attr("vid", item[2]);
                            $AppendValue = $("#" + $input.attr("appendvalue"));
                            if ($AppendValue.length > 0)
                                $AppendValue.val(item[0]);
                            $input.attr("vParent", item[0]);
                            $("#Postion" + tmp).hide();

                            $(input).removeClass("txt-rightTitle");
                            $(input).addClass("txt-rightTitle-focus");
                        }
                    });
                    $(input).removeClass("txt-rightTitle");
                    $(input).addClass("txt-rightTitle-focus");
                }
                else {
                    $e.unbind("mousedown");
                    $e.empty();
                    $e.addClass("anone");
                }
            });
        }
        else {
            if (value != "") {
                $('#port_message' + tmp).text("对不起, 找不到: " + value);
                $input.attr("vid") = 0;
            }
        }


    }

    //验证数字
    $.IsDigits = function (value) {
        if (value)
            return (!isNaN(value)) && (value > 0);
        return true;
    };
    //定位
    $.getPostion = function (obj) {
        var actualTop = obj.offsetTop;
        var actualLeft = obj.offsetLeft;
        var current = obj.offsetParent;
        while (current !== null) {
            actualTop += current.offsetTop;
            actualLeft += current.offsetLeft;
            current = current.offsetParent;
        }
        return { left: actualLeft, right: actualLeft + obj.offsetWidth, top: actualTop, bottom: actualTop + obj.offsetHeight };
    };
    $.extend(Array.prototype, {
        remove: function (eqfunction) {
            var $tempA = [];
            if (!eqfunction) {
                eqfunction = function () { return true };
            }
            while (pitem = this.pop()) {
                if (eqfunction(pitem))
                    break
                $tempA.push(pitem)
            }
            while (ptemp = $tempA.pop()) {
                this.push(ptemp);
            }
        },
        isExist: function (eqfunction) {
            var isExist = false;
            if (!eqfunction)
                eqfunction = function () { return false };
            for (var i = 0; i < this.length; i++) {
                if (eqfunction(this[i])) {
                    var isExist = true;
                    break;
                }
            }
            return isExist;
        }
    });
    var zt = $.fn.zList,
	consts = zt.consts;
})(jQuery);
