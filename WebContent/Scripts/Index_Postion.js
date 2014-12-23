
(function ($) {

    $.extend($.fn, {

        positionEx: function (options) {
            if (options) {
                if (options.suggesttype) {
                    if (!options || options == undefined) {
                        options = {};
                        options.suggesttype = "shiper_suggest";
                        options.sourcetype = "SourceLine";
                    }
                }

                if (options.suggesttype) {
                    var p = new $.positionor(options, this);
                }
            }
        }

    });

    $.positionor = function (options, inputs, lists) {
        this.currentInput = null;
        this.render = '<div class=\"portlist\" id=\"Postion\" style=\"position:absolute;z-index:120;overflow:hidden;display:none;\">' +
        '<div class=\"port_warpperjzx\">' +
        '<div class=\"port_msg\" id=\"port_message\">&nbsp;<\/div>' +
        '<div class=\"port_contxt\" id=\"port_list\">' +
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
        if ($("#Postion").length == 0) {
            $(this.render).prependTo('body');
        }
        $.fullSearchEx(this.currentInput, options);
        inputs.each(function (i, e) {
            var $e = $(e);
            if (i == 0)
                this.currentInput = e;
            this.currentItem = -1;
            $e.focus(function (event) {
                var p = $.getPostion(event.target);
                $("#Postion").css({ top: p.bottom, left: p.left });
                $("#Postion").fadeIn('slow');
                $("#Postion").show();
                this.currentInput = event.target;
            });
            $e.blur(function (event) {
                if ($("#Postion").css("display") != "none") {
                    $("#Postion").hide();
                    if (event.target.value != "") {
                        var v = $("#port_list> a:first >span").text();
                        event.target.value = v;
                    }
                }
                this.currentInput = null;
            });
            $e.change(function (event) {
                if (e.value == "") {
                    $e.attr("vid", "");
                }
            });
            $e.keyup(function (event) {
                $.fullSearchEx(this.currentInput, options, event.target.value);
            });
            $e.click(function (event) {
                var p = $.getPostion(event.target);
                $("#Postion").css({ top: p.bottom, left: p.left });
                $("#Postion").show();
                $.fullSearchEx(this.currentInput, options, event.target.value);
            })
        });
    };
    $.sortSearch = function (a, b) {
        var c = a.match(/^[^\|]+/), d = b.match(/^[^\|]+/);
        return c > d ? 1 : (c == d ? 0 : -1);
    };
    $.fullSearchEx = function (input, options, value) {
        if (options.suggesttype) {
            var $Suggest = $.positionor.defaults[options.suggesttype];
            var $Source = $.positionor.defaults[options.sourcetype];
            if (value)
                value = value.replace(/\([^(]*\)/gi, "");
            var data = new Array();

            if (value && $.trim(value).length > 0) {
                $('#port_message').text("查找:" + value.replace(/\\/gi, ""));
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
                else {
                    var rgSuggest = new RegExp("[^@]+@", "gi");
                    $('#port_message').text("默认列表");
                    data = $Suggest.toString().match(rgSuggest);
                }
            }
            else {
                var rgSuggest = new RegExp("[^@]+@", "gi");
                $('#port_message').text("默认列表");
                data = $Suggest.toString().match(rgSuggest);
            }
            if (data) {
                $("#port_list a").each(function (i, e) {
                    var $e = $(e);
                    if (data[i]) {
                        var item = data[i].replace(/@/g, "").split("|");
                        if (i == 0) {
                            $(input).attr("vid", item[2]);
                        }
                        $e.html("<span>" + (options.sourcetype == 'port_source' ? item[3] + "(" + item[0] + ")" : item[3] || item[0]) + "</span>" + item[1]);
                        $e.unbind("mousedown");
                        $e.bind("mousedown", function (event) {
                            if (input) {
                                $input = $(input);
                                $input.val(options.sourcetype == 'port_source' ? item[3] + "(" + item[0] + ")" : item[3] || item[0]);
                                $input.attr("vid", item[2]);
                                $AppendValue = $("#" + $input.attr("appendvalue"));
                                if ($AppendValue.length > 0)
                                    $AppendValue.val(item[1]);
                                $input.attr("vCountry", item[1]);
                                $("#Postion").hide();
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
                    $('#port_message').text("对不起, 找不到: " + value);
                }
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
    $.extend($.positionor, {
        defaults: {
            StartPort: typeof (JcPort) == "undefined" ? "" : JcPort[0].StartPort,
            EndPort: typeof (JcPort) == "undefined" ? "" : JcPort[1].EndPort,
            SourcePort: typeof (JcPort) == "undefined" ? "" : JcPort[2].SourcePort,
            shiper_suggests: typeof (JsonAirLine) == "undefined" ? "" : JsonAirLine.AirLine_suggest,
            startAirPort_suggest: typeof (JcAirPort) == "undefined" ? "" : JcAirPort[0].startAirPort_suggest,
            airPort_source: typeof (JcAirPort) == "undefined" ? "" : JcAirPort[1].airPort_source
        }
    })
}(jQuery));