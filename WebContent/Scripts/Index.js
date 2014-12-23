/*首页和模版页面脚本*/
function search_Index() {
    var v = $("#select_yunjia").val();
    if (v == "0") {
        $("#con_s_1_0").show();
        $("#con_s_1_1").hide();
        $("#con_s_1_2").hide();

        $("#btnSearch").attr("onclick", "GPSearch();");
    } else if (v == "1") {
        $("#con_s_1_1").show();
        $("#con_s_1_0").hide();
        $("#con_s_1_2").hide();

        $("#btnSearch").attr("onclick", "LCLSearch();");
    }
    else {
        $("#con_s_1_2").show();
        $("#con_s_1_0").hide();
        $("#con_s_1_1").hide();

        $("#btnSearch").attr("onclick", "AirSearch();");
    }
}

$(function ()
{
    $("#GPStartPort").positionEx({
        suggesttype: "StartPort",
        sourcetype: "SourcePort"
    });
    $("#GPEndPort").positionEx({
        suggesttype: "EndPort",
        sourcetype: "SourcePort"
    });

    $("#LCLStartPort").positionEx({
        suggesttype: "StartPort",
        sourcetype: "SourcePort"
    });
    $("#LCLEndPort").positionEx({
        suggesttype: "EndPort",
        sourcetype: "SourcePort"
    });

    $("#AirStartPort").positionEx({
        suggesttype: "startAirPort_suggest",
        sourcetype: "airPort_source"
    });
    $("#AirEndPort").positionEx({
        suggesttype: "startAirPort_suggest",
        sourcetype: "airPort_source"
    });
})

function AirSearch() {
    var StartPortID = $("#AirStartPort").attr("vid");
    var EndPortID = $("#AirEndPort").attr("vid");
    location.href = "/feight/AirList/" + StartPortID + "-" + EndPortID + "------1.html";
}

function GPSearch() {
    var StartPortID = $("#GPStartPort").attr("vid");
    var EndPortID = $("#GPEndPort").attr("vid");
    location.href = "/feight/GPList/" + StartPortID + "-" + EndPortID + "------1.html";
}


function LCLSearch() {
    var StartPortID = $("#LCLStartPort").attr("vid");
    var EndPortID = $("#LCLEndPort").attr("vid");
    location.href = "/feight/LCLList/" + StartPortID + "-" + EndPortID + "------1.html";
}