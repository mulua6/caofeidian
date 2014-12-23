/*运价中心*/
function OceanShow(type) {
    if (type == "GP") {
        $("#a_GP").addClass("on");

        $("#a_GP").css("cursor", "");

        $("#a_LCL").removeClass("on");

        $("#a_LCL").css("cursor", "pointer");

        $("#hid_OceanType").val("GP");

        $("#li_isGPSpecial").show();

        $("#divGPSearchLine").show();

        $("#divLCLSearchLine").hide();

        $("#ul_isLCLETD").hide();

        $("#ul_isGPETD").show();

        var isGPSpecial = $("#hid_isGPSpecial").val();

        if (isGPSpecial != "" && isGPSpecial != null && isGPSpecial == "1") {
            isGPSpecial = true;
        }
        else {
            isGPSpecial = false;
        }
        $("#isGPSpecial").attr("checked", isGPSpecial);

        $("#btnOcean").show();

        $("#btnOceanLCL").hide();

        $("#btnOceanAir").hide();
    }
    else {
        $("#a_LCL").addClass("on");

        $("#a_LCL").css("cursor", "");

        $("#a_GP").removeClass("on");

        $("#a_GP").css("cursor", "pointer");

        $("#hid_OceanType").val("LCL");

        $("#li_isGPSpecial").hide();

        $("#divGPSearchLine").hide();

        $("#divLCLSearchLine").show();

        $("#btnOcean").hide();

        $("#btnOceanLCL").show();

        $("#ul_isLCLETD").show();

        $("#ul_isGPETD").hide();

        $("#btnOceanAir").hide();
    }

    $("#GPStartPort_Index").attr("vid", "");
    $("#GPStartPort_Index").val("起始港");

    $("#GPEndPort_Index").attr("vid", "");
    $("#GPEndPort_Index").val("目的港");

    $("#ShipComp_Index").attr("vid", "");
    $("#ShipComp_Index").val("船公司");

    $("input:[name='chckbxOceanMon']").each(function () {
        $(this).attr("checked", false);
    });

    $("#GPStartDate").val("有效期");

    var GPStartPortVal = $("#GPStartPort_Index").val();

    var GPEndPortVal = $("#GPEndPort_Index").val();

    $("#GPStartPort_Index").addClass("txt-rightTitle");
    $("#GPStartPort_Index").removeClass("txt-rightTitle-focus");

    $("#GPEndPort_Index").addClass("txt-rightTitle");
    $("#GPEndPort_Index").removeClass("txt-rightTitle-focus");

    $("#GPStartDate").addClass("txt-rightTitle");
    $("#GPStartDate").removeClass("txt-rightTitle-focus");

    $("#ShipComp_Index").addClass("txt-rightTitle");
    $("#ShipComp_Index").removeClass("txt-rightTitle-focus");

}

function FeightShow(type) {

    var oceanType = $("#hid_OceanType").val();

    OceanShow(oceanType);

    if (type == "Ocean") {

        $("#MenuOcean").addClass("on");

        $("#MenuOcean").css("cursor", "");

        $("#MenuAir").removeClass("on");

        $("#MenuAir").css("cursor", "pointer");

        $("#divOceanSearch").show();

        $("#divOceanSearchType").show();


        $("#divAirSearch").hide();

        $("#divAirSearchLine").hide();

        $("#divAirSearchType").hide();
    }
    else {

        $("#MenuAir").addClass("on");

        $("#MenuAir").css("cursor", "");

        $("#MenuOcean").removeClass("on");

        $("#MenuOcean").css("cursor", "pointer");

        $("#divOceanSearch").hide();

        $("#divOceanSearchType").hide();

        $("#divGPSearchLine").hide();

        $("#divLCLSearchLine").hide();

        $("#divAirSearch").show();

        $("#divAirSearchType").show();

        $("#divAirSearchLine").show();

        $("#btnOcean").hide();

        $("#btnOceanLCL").hide();

        $("#btnOceanAir").show();
    }
}

$(function () {
    $("#GPStartPort_Index").positionEx({
        suggesttype: "StartPort",
        sourcetype: "SourcePort"
    });
    $("#GPEndPort_Index").positionEx({
        suggesttype: "EndPort",
        sourcetype: "SourcePort"
    });



    $.fn.zList.init($("#ShipComp_Index"), JsonShipCompany, "ShipComp");

    $("#AirStartPort_Index").positionEx({
        suggesttype: "startAirPort_suggest",
        sourcetype: "airPort_source"
    });
    $("#AirEndPort_Index").positionEx({
        suggesttype: "startAirPort_suggest",
        sourcetype: "airPort_source"
    });

    $("#AirComp_Index").positionEx({
        suggesttype: "shiper_suggests",
        sourcetype: "shiper_suggests"
    });

    //起止日期
    $("#GPStartDate,#AirStartDate").datepicker({
        changeMonth: true,
        changeYear: true,
        duration: 'fast',
        showButtonPanel: true,
        showClearButton: true,
        clearText: '清空',
        gotoCurrent: true,
        constrainInput: false,
        dateFormat: "yy-MM-dd"
    });

    $(".ui-datepicker").css("z-index", "999");

})

//空运搜索回绑
$(function () {
    var StartPortID = $("#hid_AirStartPort_Index").val();
    $("#AirStartPort_Index").attr("vid", StartPortID);

    var EndPortID = $("#hid_AirEndPort_Index").val();
    $("#AirEndPort_Index").attr("vid", EndPortID);

    var ShipCompID = $("#hid_AirComp_Index").val();
    $("#AirComp_Index").attr("vid", ShipCompID);


    var airETD = $("#hid_airETD").val();

    var arr = airETD.split(",")

    $("input:[name='chckbxAirETD']").each(function () {

        for (var i = 0; i < arr.length; i++) {
            if ($(this).val() == arr[i]) {
                $(this).attr("checked", "true");
            }
        }
    });

    var isAirSpecial = $("#hid_isAirSpecial").val();
    if (isAirSpecial == "1") {
        $("#isAirSpecial").attr("checked", "true");
    }
})

//海运搜索回绑
$(function () {
    var oceanETD = $("#hid_OceanETD").val();
    var arr = oceanETD.split(",")
    $("input:[name='chckbxOceanMon']").each(function () {

        for (var i = 0; i < arr.length; i++) {
            if ($(this).val() == arr[i]) {
                $(this).attr("checked", "true");
            }
        }
    });

    var isGPSpecial = $("#hid_isGPSpecial").val();
    if (isGPSpecial == "1") {
        $("#isGPSpecial").attr("checked", "true");
    }
})


//页面加载控制层显示
$(function () {
    var searchType_Index = $("#hid_SearchType_Index").val();
    if (searchType_Index == "" || searchType_Index == null) {
        searchType_Index = "GPSearch";
    }

    if (searchType_Index == "GPSearch" || searchType_Index == "LCLSearch") {
        FeightShow("Ocean");

        if (searchType_Index == "GPSearch") {
            OceanShow("GP");
        }
        if (searchType_Index == "LCLSearch") {
            OceanShow("LCL");
        }
    }
    else if (searchType_Index == "AirSearch") {
        FeightShow("Air");
    }
})

function airSearch_Index() {
    var StartPortID = $("#AirStartPort_Index").attr("vid");
    var EndPortID = $("#AirEndPort_Index").attr("vid");
    var ShipCompID = $("#AirComp_Index").attr("vid");
    var AirStartDate = $("#AirStartDate").val();
    if (AirStartDate == "有效期") {
        AirStartDate = "";
    }
    else {
        AirStartDate = AirStartDate.replace("-", "");
        AirStartDate = AirStartDate.replace("-", "");
    }

    var AirETD = ",";
    $("input:[name='chckbxAirETD']").each(function () {
        if ($(this).attr("checked") == "checked") {
            AirETD += "," + $(this).val();
        }
    });
    if (AirETD != ",") {
        AirETD = AirETD.replace(",,", "");
    }
    else {
        AirETD = "";
    }

    var isAirSpecial = 0;

    if ($("#isAirSpecial").attr("checked") == "checked") {
        isAirSpecial = 1;
    }

    location.href = "/feight/AirList/" + StartPortID + "-" + EndPortID + "-" + ShipCompID + "-" + AirStartDate + "-" + AirETD + "--" + isAirSpecial + "-1.html";
}

function GPSearch_Index() {
    var StartPortID = $("#GPStartPort_Index").attr("vid");

    var EndPortID = $("#GPEndPort_Index").attr("vid");

    var ShipCompID = $("#ShipComp_Index").attr("vid");

    var GPStartDate = $("#GPStartDate").val();

    if (GPStartDate == "有效期") {
        GPStartDate = "";
    }
    else {
        GPStartDate = GPStartDate.replace("-", "");
        GPStartDate = GPStartDate.replace("-", "");
    }

    var isGPSpecial = 0;

    if ($("#isGPSpecial").attr("checked") == "checked") {
        isGPSpecial = 1;
    }

    location.href = "/feight/GPList/" + StartPortID + "-" + EndPortID + "-" + ShipCompID + "-" + GPStartDate + "---" + isGPSpecial + "-1.html";
}

function LCLSearch_Index() {
    var StartPortID = $("#GPStartPort_Index").attr("vid");
    var EndPortID = $("#GPEndPort_Index").attr("vid");
    var ShipCompID = $("#ShipComp_Index").attr("vid");
    var GPStartDate = $("#GPStartDate").val();
    if (GPStartDate == "有效期") {
        GPStartDate = "";
    }
    else {
        GPStartDate = GPStartDate.replace("-", "");
        GPStartDate = GPStartDate.replace("-", "");
    }

    var GPETD = ",";
    $("input:[name='chckbxOceanMon']").each(function () {
        if ($(this).attr("checked") == "checked") {
            GPETD += "," + $(this).val();
        }
    });
    if (GPETD != ",") {
        GPETD = GPETD.replace(",,", "");
    }
    else {
        GPETD = "";
    }

    var isGPSpecial = 0;

    if ($("#isGPSpecial").attr("checked") == "checked") {
        isGPSpecial = 1;
    }

    location.href = "/feight/LCLList/" + StartPortID + "-" + EndPortID + "-" + ShipCompID + "-" + GPStartDate + "-" + GPETD + "---1.html";
}

/*在线文字向上滚*/
function AutoScroll(obj) {
    $(obj).find("ul:first").animate({
        marginTop: "-25px"
    }, 500, function () {
        $(this).css({ marginTop: "0px" }).find("li:first").appendTo(this);
    });
}
$(document).ready(function () {
    setInterval('AutoScroll("#s1")', 3000);
});

/*在线文字向上滚end*/