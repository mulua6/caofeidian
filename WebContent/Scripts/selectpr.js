function init_select_set() {
    btn_url = ""; 
    btn_focus_url = "";
    border_color = "#cccccc";
    font_size = "12px";
    rollover_style = "url(" + btn_focus_url + ") no-repeat right 2px";
    rollout_style = "url(" + btn_url + ") no-repeat right 2px";
};



var childCreate = false;
function Offset(e)
{
    var t = e.offsetTop;
    var l = e.offsetLeft;
    var w = e.offsetWidth;
    var h = e.offsetHeight + 3;

    while (e = e.offsetParent) {
        t += e.offsetTop;
        l += e.offsetLeft;
    }
    return {
        top: t,
        left: l,
        width: w,
        height: h
    }
};

function loadSelect(obj, tapId) {
    var objId = obj.id;
    if (tapId != "undefined" && tapId != "") objId += '_' + tapId;
    var offset = Offset(obj);

    var iDiv = document.createElement("div");
    iDiv.className = "iDiv";

    iDiv.id = "selectof" + objId;
    iDiv.style.position = "absolute";
    iDiv.style.zIndex = "999";
    iDiv.style.width = offset.width + "px";
    iDiv.style.height = offset.height + "px";
    iDiv.style.top = offset.top + 3 + "px";
    iDiv.style.left = offset.left + 0 + "px";
    iDiv.style.textAlign = "center";
    iDiv.style.fontSize = "12px";
    iDiv.style.lineHeight = offset.height + "px";
    iDiv.style.textIndent = "0px";
    iDiv.style.cursor = "default";
    iDiv.style.display = "block";

    var iSpan = document.createElement("span");
    iSpan.onchange = "SearchChanged('select_yunjia','1')";
    iSpan.id = "selectofspan" + objId;
    iSpan.style.display = "block";
    iSpan.style.width = offset.width + "px";
    iSpan.style.height = offset.height + "px";
    iSpan.style.paddingRight = 10 + "px";
    iSpan.style.background = rollout_style;
    var tValue = obj.options[obj.selectedIndex].innerHTML;
    iSpan.innerHTML = tValue;

    iDiv.appendChild(iSpan);

    document.body.appendChild(iDiv);

    iDiv.onmouseover = function () {
        iDiv.style.background = rollover_style;
    };
    iDiv.onmouseout = function () {
        iDiv.style.background = rollout_style;
    };

    var cDiv = document.createElement("div");
    cDiv.id = "selectchild" + objId;
    cDiv.style.width = offset.width + "px";
    cDiv.style.height = obj.options.length * 20 + "px";
    cDiv.style.top = (offset.top + offset.height + 2) + "px";
    cDiv.style.left = offset.left + "px";
    cDiv.style.background = "#f7f7f7"; 
    cDiv.style.border = "1px solid silver"; 
    cDiv.style.cursor = "default";
    cDiv.style.display = "none";

    var uUl = document.createElement("ul");
    uUl.id = "uUlchild" + objId;
    uUl.style.listStyle = "none";
    uUl.style.margin = "0";
    uUl.style.padding = "0";
    uUl.style.fontSize = font_size;
    cDiv.appendChild(uUl);

    iDiv.appendChild(cDiv);

    childCreate = true;
    for (var i = 0; i < obj.options.length; i++) {
        var lLi = document.createElement("li");
        lLi.id = obj.options[i].value;
        lLi.style.textIndent = "4px";
        lLi.style.height = "20px";
        lLi.style.lineHeight = "20px";
        lLi.innerHTML = obj.options[i].innerHTML;
        uUl.appendChild(lLi);
    }
    var liObj = document.getElementById("uUlchild" + objId).getElementsByTagName("li");
    for (var j = 0; j < obj.options.length; j++) {
        liObj[j].onmouseover = function () {
            this.style.background = "gray";
            this.style.color = "white";
        };
        liObj[j].onmouseout = function () {
            this.style.background = "white";
            this.style.color = "black";
        };
        liObj[j].onclick = function () {
            obj.options[0] = new Option(this.innerHTML, this.id);
            for (var i = 0; i < obj.options.length; i++) {
                if (obj.options[i].value == this.innerHTML || obj.options[i].text == this.innerHTML) {
                    obj.options[i].selected = true; break;
                }
            }
            document.getElementById("selectchild" + objId).style.display = "none";
            childCreate = false;
            iSpan.innerHTML = this.innerHTML;
        };
    }

    cDiv.onmouseover = function () {
        cDiv.style.display = "block";
    };
    cDiv.onmouseout = function () {
        cDiv.style.display = "none";
    };
    iDiv.onmouseover = function () {
        cDiv.style.display = "block";
    };
    iDiv.onmouseout = function () {
        cDiv.style.display = "none";
    };


    iSpan.onclick = function () {
        if (document.getElementById("selectchild" + objId)) {
            if (childCreate) {
                document.getElementById("selectchild" + objId).style.display = "none";
                childCreate = false;
            } else {
                document.getElementById("selectchild" + objId).style.display = "block";
                childCreate = true;
            }
        } else {
        }
    };


};

function init_select(ids) {
    init_select_set();
    var id = ids.split(',');
    for (var i = 0; i < ids.length; i++) {
        var obj = document.getElementById(id[i]);
        loadSelect(obj);
        obj.style.display = "none";
    }
};

function init_tap_select(tapId, selectId) {
    if (selectId != undefined && selectId != '') {
        var divSelect = document.getElementById('selectof' + selectId + '_' + tapId);
        if (divSelect == "undefined" || divSelect == null) {
            init_select_set();
            var obj = document.getElementById(selectId);
            loadSelect(obj, tapId);
            obj.style.display = "none";
        }
    }
}

function setTabLocal(name, cursel, n, selectId) {
    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "tab-on" : "";
        con.style.display = i == cursel ? "block" : "none";
    }
    init_tap_select(cursel, selectId);

    var s = document.getElementsByTagName('div');
    var id = "";
    for (var i = 0; i < s.length; i++) {
        id = s[i].id.toString();
        if (id.indexOf('selectof') >= 0) {
            s[i].style.display = "none";
        }
    }
    var tabSelect = document.getElementById('selectof' + selectId + '_' + cursel);
    if (tabSelect != undefined && tabSelect != null) {
        tabSelect.style.display = "block";
    }
}







