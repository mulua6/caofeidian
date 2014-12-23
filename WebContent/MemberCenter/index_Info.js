/*
首页焦点图
 */

(function (a) {
    var b = function (b, c) {
        var d = a.extend({},
		a.fn.nivoSlider.defaults, c);
        var e = {
            currentSlide: 0,
            currentImage: "",
            totalSlides: 0,
            running: false,
            paused: false,
            stop: false
        };
        var f = a(b);
        f.data("nivo:vars", e);
        f.css("position", "relative");
        f.addClass("nivoSlider");
        var g = f.children();
        g.each(function () {
            var b = a(this);
            var c = "";
            if (!b.is("img")) {
                if (b.is("a")) {
                    b.addClass("nivo-imageLink");
                    c = b
                }
                b = b.find("img:first")
            }
            var d = b.width();
            if (d == 0) d = b.attr("width");
            var g = b.height();
            if (g == 0) g = b.attr("height");
            if (d > f.width()) {
                f.width(d)
            }
            if (g > f.height()) {
                f.height(g)
            }
            if (c != "") {
                c.css("display", "none")
            }
            b.css("display", "none");
            e.totalSlides++
        });
        if (d.randomStart) {
            d.startSlide = Math.floor(Math.random() * e.totalSlides)
        }
        if (d.startSlide > 0) {
            if (d.startSlide >= e.totalSlides) d.startSlide = e.totalSlides - 1;
            e.currentSlide = d.startSlide
        }
        if (a(g[e.currentSlide]).is("img")) {
            e.currentImage = a(g[e.currentSlide])
        } else {
            e.currentImage = a(g[e.currentSlide]).find("img:first")
        }
        if (a(g[e.currentSlide]).is("a")) {
            a(g[e.currentSlide]).css("display", "block")
        }
        f.css("background", 'url("' + e.currentImage.attr("src") + '") no-repeat');
        f.append(a('<div class="nivo-caption"><p></p></div>').css({
            display: "none",
            opacity: d.captionOpacity
        }));
        a(".nivo-caption", f).css("opacity", 0);
        var h = function (b) {
            var c = a(".nivo-caption", f);
            if (e.currentImage.attr("title") != "" && e.currentImage.attr("title") != undefined) {
                var d = e.currentImage.attr("title");
                if (d.substr(0, 1) == "#") d = a(d).html();
                if (c.css("opacity") != 0) {
                    c.find("p").stop().fadeTo(b.animSpeed, 0,
					function () {
					    a(this).html(d);
					    a(this).stop().fadeTo(b.animSpeed, 1)
					})
                } else {
                    c.find("p").html(d)
                }
                c.stop().fadeTo(b.animSpeed, b.captionOpacity)
            } else {
                c.stop().fadeTo(b.animSpeed, 0)
            }
        };
        h(d);
        var i = 0;
        if (!d.manualAdvance && g.length > 1) {
            i = setInterval(function () {
                o(f, g, d, false)
            },
			d.pauseTime)
        }
        if (d.directionNav) {
            f.append('<div class="nivo-directionNav"><a class="nivo-prevNav">' + d.prevText + '</a><a class="nivo-nextNav">' + d.nextText + "</a></div>");
            if (d.directionNavHide) {
                a(".nivo-directionNav", f)
                /*.hide()*/
                ;
                f.hover(function () {
                    a(".nivo-directionNav", f).show()
                },
				function () {
				    a(".nivo-directionNav", f)
				    /*.hide()*/
				})
            }
            a("a.nivo-prevNav", f).live("click",
			function () {
			    if (e.running) return false;
			    clearInterval(i);
			    i = "";
			    e.currentSlide -= 2;
			    o(f, g, d, "prev")
			});
            a("a.nivo-nextNav", f).live("click",
			function () {
			    if (e.running) return false;
			    clearInterval(i);
			    i = "";
			    o(f, g, d, "next")
			})
        }
        if (d.controlNav) {
            var j = a('<div class="nivo-controlNav"></div>');
            f.append(j);
            for (var k = 0; k < g.length; k++) {
                if (d.controlNavThumbs) {
                    var l = g.eq(k);
                    if (!l.is("img")) {
                        l = l.find("img:first")
                    }
                    if (d.controlNavThumbsFromRel) {
                        j.append('<a class="nivo-control" rel="' + k + '"><img src="' + l.attr("rel") + '" alt="" /></a>')
                    } else {
                        j.append('<a class="nivo-control" rel="' + k + '"><img src="' + l.attr("src").replace(d.controlNavThumbsSearch, d.controlNavThumbsReplace) + '" alt="" /></a>')
                    }
                } else {
                    j.append('<a class="nivo-control" rel="' + k + '">' + (k + 1) + "</a>")
                }
            }
            a(".nivo-controlNav a:eq(" + e.currentSlide + ")", f).addClass("active");
            a(".nivo-controlNav a", f).live("click",
			function () {
			    if (e.running) return false;
			    if (a(this).hasClass("active")) return false;
			    clearInterval(i);
			    i = "";
			    f.css("background", 'url("' + e.currentImage.attr("src") + '") no-repeat');
			    e.currentSlide = a(this).attr("rel") - 1;
			    o(f, g, d, "control")
			})
        }
        if (d.keyboardNav) {
            a(window).keypress(function (a) {
                if (a.keyCode == "37") {
                    if (e.running) return false;
                    clearInterval(i);
                    i = "";
                    e.currentSlide -= 2;
                    o(f, g, d, "prev")
                }
                if (a.keyCode == "39") {
                    if (e.running) return false;
                    clearInterval(i);
                    i = "";
                    o(f, g, d, "next")
                }
            })
        }
        if (d.pauseOnHover) {
            f.hover(function () {
                e.paused = true;
                clearInterval(i);
                i = ""
            },
			function () {
			    e.paused = false;
			    if (i == "" && !d.manualAdvance) {
			        i = setInterval(function () {
			            o(f, g, d, false)
			        },
					d.pauseTime)
			    }
			})
        }
        f.bind("nivo:animFinished",
		function () {
		    e.running = false;
		    a(g).each(function () {
		        if (a(this).is("a")) {
		            a(this).css("display", "none")
		        }
		    });
		    if (a(g[e.currentSlide]).is("a")) {
		        a(g[e.currentSlide]).css("display", "block")
		    }
		    if (i == "" && !e.paused && !d.manualAdvance) {
		        i = setInterval(function () {
		            o(f, g, d, false)
		        },
				d.pauseTime)
		    }
		    d.afterChange.call(this)
		});
        var m = function (b, c, d) {
            for (var e = 0; e < c.slices; e++) {
                var f = Math.round(b.width() / c.slices);
                if (e == c.slices - 1) {
                    b.append(a('<div class="nivo-slice"></div>').css({
                        left: f * e + "px",
                        width: b.width() - f * e + "px",
                        height: "0px",
                        opacity: "0",
                        background: 'url("' + d.currentImage.attr("src") + '") no-repeat -' + (f + e * f - f) + "px 0%"
                    }))
                } else {
                    b.append(a('<div class="nivo-slice"></div>').css({
                        left: f * e + "px",
                        width: f + "px",
                        height: "0px",
                        opacity: "0",
                        background: 'url("' + d.currentImage.attr("src") + '") no-repeat -' + (f + e * f - f) + "px 0%"
                    }))
                }
            }
        };
        var n = function (b, c, d) {
            var e = Math.round(b.width() / c.boxCols);
            var f = Math.round(b.height() / c.boxRows);
            for (var g = 0; g < c.boxRows; g++) {
                for (var h = 0; h < c.boxCols; h++) {
                    if (h == c.boxCols - 1) {
                        b.append(a('<div class="nivo-box"></div>').css({
                            opacity: 0,
                            left: e * h + "px",
                            top: f * g + "px",
                            width: b.width() - e * h + "px",
                            height: f + "px",
                            background: 'url("' + d.currentImage.attr("src") + '") no-repeat -' + (e + h * e - e) + "px -" + (f + g * f - f) + "px"
                        }))
                    } else {
                        b.append(a('<div class="nivo-box"></div>').css({
                            opacity: 0,
                            left: e * h + "px",
                            top: f * g + "px",
                            width: e + "px",
                            height: f + "px",
                            background: 'url("' + d.currentImage.attr("src") + '") no-repeat -' + (e + h * e - e) + "px -" + (f + g * f - f) + "px"
                        }))
                    }
                }
            }
        };
        var o = function (b, c, d, e) {
            var f = b.data("nivo:vars");
            if (f && f.currentSlide == f.totalSlides - 1) {
                d.lastSlide.call(this)
            }
            if ((!f || f.stop) && !e) return false;
            d.beforeChange.call(this);
            if (!e) {
                b.css("background", 'url("' + f.currentImage.attr("src") + '") no-repeat')
            } else {
                if (e == "prev") {
                    b.css("background", 'url("' + f.currentImage.attr("src") + '") no-repeat')
                }
                if (e == "next") {
                    b.css("background", 'url("' + f.currentImage.attr("src") + '") no-repeat')
                }
            }
            f.currentSlide++;
            if (f.currentSlide == f.totalSlides) {
                f.currentSlide = 0;
                d.slideshowEnd.call(this)
            }
            if (f.currentSlide < 0) f.currentSlide = f.totalSlides - 1;
            if (a(c[f.currentSlide]).is("img")) {
                f.currentImage = a(c[f.currentSlide])
            } else {
                f.currentImage = a(c[f.currentSlide]).find("img:first")
            }
            if (d.controlNav) {
                a(".nivo-controlNav a", b).removeClass("active");
                a(".nivo-controlNav a:eq(" + f.currentSlide + ")", b).addClass("active")
            }
            h(d);
            a(".nivo-slice", b).remove();
            a(".nivo-box", b).remove();
            var g = d.effect;
            if (d.effect == "random") {
                var i = new Array("sliceDownRight", "sliceDownLeft", "sliceUpRight", "sliceUpLeft", "sliceUpDown", "sliceUpDownLeft", "fold", "fade", "boxRandom", "boxRain", "boxRainReverse", "boxRainGrow", "boxRainGrowReverse");
                g = i[Math.floor(Math.random() * (i.length + 1))];
                if (g == undefined) g = "fade"
            }
            if (d.effect.indexOf(",") != -1) {
                var i = d.effect.split(",");
                g = i[Math.floor(Math.random() * i.length)];
                if (g == undefined) g = "fade"
            }
            if (f.currentImage.attr("data-transition")) {
                g = f.currentImage.attr("data-transition")
            }
            f.running = true;
            if (g == "sliceDown" || g == "sliceDownRight" || g == "sliceDownLeft") {
                m(b, d, f);
                var j = 0;
                var k = 0;
                var l = a(".nivo-slice", b);
                if (g == "sliceDownLeft") l = a(".nivo-slice", b)._reverse();
                l.each(function () {
                    var c = a(this);
                    c.css({
                        top: "0px"
                    });
                    if (k == d.slices - 1) {
                        setTimeout(function () {
                            c.animate({
                                height: "100%",
                                opacity: "1.0"
                            },
							d.animSpeed, "",
							function () {
							    b.trigger("nivo:animFinished")
							})
                        },
						100 + j)
                    } else {
                        setTimeout(function () {
                            c.animate({
                                height: "100%",
                                opacity: "1.0"
                            },
							d.animSpeed)
                        },
						100 + j)
                    }
                    j += 50;
                    k++
                })
            } else if (g == "sliceUp" || g == "sliceUpRight" || g == "sliceUpLeft") {
                m(b, d, f);
                var j = 0;
                var k = 0;
                var l = a(".nivo-slice", b);
                if (g == "sliceUpLeft") l = a(".nivo-slice", b)._reverse();
                l.each(function () {
                    var c = a(this);
                    c.css({
                        bottom: "0px"
                    });
                    if (k == d.slices - 1) {
                        setTimeout(function () {
                            c.animate({
                                height: "100%",
                                opacity: "1.0"
                            },
							d.animSpeed, "",
							function () {
							    b.trigger("nivo:animFinished")
							})
                        },
						100 + j)
                    } else {
                        setTimeout(function () {
                            c.animate({
                                height: "100%",
                                opacity: "1.0"
                            },
							d.animSpeed)
                        },
						100 + j)
                    }
                    j += 50;
                    k++
                })
            } else if (g == "sliceUpDown" || g == "sliceUpDownRight" || g == "sliceUpDownLeft") {
                m(b, d, f);
                var j = 0;
                var k = 0;
                var o = 0;
                var l = a(".nivo-slice", b);
                if (g == "sliceUpDownLeft") l = a(".nivo-slice", b)._reverse();
                l.each(function () {
                    var c = a(this);
                    if (k == 0) {
                        c.css("top", "0px");
                        k++
                    } else {
                        c.css("bottom", "0px");
                        k = 0
                    }
                    if (o == d.slices - 1) {
                        setTimeout(function () {
                            c.animate({
                                height: "100%",
                                opacity: "1.0"
                            },
							d.animSpeed, "",
							function () {
							    b.trigger("nivo:animFinished")
							})
                        },
						100 + j)
                    } else {
                        setTimeout(function () {
                            c.animate({
                                height: "100%",
                                opacity: "1.0"
                            },
							d.animSpeed)
                        },
						100 + j)
                    }
                    j += 50;
                    o++
                })
            } else if (g == "fold") {
                m(b, d, f);
                var j = 0;
                var k = 0;
                a(".nivo-slice", b).each(function () {
                    var c = a(this);
                    var e = c.width();
                    c.css({
                        top: "0px",
                        height: "100%",
                        width: "0px"
                    });
                    if (k == d.slices - 1) {
                        setTimeout(function () {
                            c.animate({
                                width: e,
                                opacity: "1.0"
                            },
							d.animSpeed, "",
							function () {
							    b.trigger("nivo:animFinished")
							})
                        },
						100 + j)
                    } else {
                        setTimeout(function () {
                            c.animate({
                                width: e,
                                opacity: "1.0"
                            },
							d.animSpeed)
                        },
						100 + j)
                    }
                    j += 50;
                    k++
                })
            } else if (g == "fade") {
                m(b, d, f);
                var q = a(".nivo-slice:first", b);
                q.css({
                    height: "100%",
                    width: b.width() + "px"
                });
                q.animate({
                    opacity: "1.0"
                },
				d.animSpeed * 2, "",
				function () {
				    b.trigger("nivo:animFinished")
				})
            } else if (g == "slideInRight") {
                m(b, d, f);
                var q = a(".nivo-slice:first", b);
                q.css({
                    height: "100%",
                    width: "0px",
                    opacity: "1"
                });
                q.animate({
                    width: b.width() + "px"
                },
				d.animSpeed * 2, "",
				function () {
				    b.trigger("nivo:animFinished")
				})
            } else if (g == "slideInLeft") {
                m(b, d, f);
                var q = a(".nivo-slice:first", b);
                q.css({
                    height: "100%",
                    width: "0px",
                    opacity: "1",
                    left: "",
                    right: "0px"
                });
                q.animate({
                    width: b.width() + "px"
                },
				d.animSpeed * 2, "",
				function () {
				    q.css({
				        left: "0px",
				        right: ""
				    });
				    b.trigger("nivo:animFinished")
				})
            } else if (g == "boxRandom") {
                n(b, d, f);
                var r = d.boxCols * d.boxRows;
                var k = 0;
                var j = 0;
                var s = p(a(".nivo-box", b));
                s.each(function () {
                    var c = a(this);
                    if (k == r - 1) {
                        setTimeout(function () {
                            c.animate({
                                opacity: "1"
                            },
							d.animSpeed, "",
							function () {
							    b.trigger("nivo:animFinished")
							})
                        },
						100 + j)
                    } else {
                        setTimeout(function () {
                            c.animate({
                                opacity: "1"
                            },
							d.animSpeed)
                        },
						100 + j)
                    }
                    j += 20;
                    k++
                })
            } else if (g == "boxRain" || g == "boxRainReverse" || g == "boxRainGrow" || g == "boxRainGrowReverse") {
                n(b, d, f);
                var r = d.boxCols * d.boxRows;
                var k = 0;
                var j = 0;
                var t = 0;
                var u = 0;
                var v = new Array;
                v[t] = new Array;
                var s = a(".nivo-box", b);
                if (g == "boxRainReverse" || g == "boxRainGrowReverse") {
                    s = a(".nivo-box", b)._reverse()
                }
                s.each(function () {
                    v[t][u] = a(this);
                    u++;
                    if (u == d.boxCols) {
                        t++;
                        u = 0;
                        v[t] = new Array
                    }
                });
                for (var w = 0; w < d.boxCols * 2; w++) {
                    var x = w;
                    for (var y = 0; y < d.boxRows; y++) {
                        if (x >= 0 && x < d.boxCols) {
                            (function (c, e, f, h, i) {
                                var j = a(v[c][e]);
                                var k = j.width();
                                var l = j.height();
                                if (g == "boxRainGrow" || g == "boxRainGrowReverse") {
                                    j.width(0).height(0)
                                }
                                if (h == i - 1) {
                                    setTimeout(function () {
                                        j.animate({
                                            opacity: "1",
                                            width: k,
                                            height: l
                                        },
										d.animSpeed / 1.3, "",
										function () {
										    b.trigger("nivo:animFinished")
										})
                                    },
									100 + f)
                                } else {
                                    setTimeout(function () {
                                        j.animate({
                                            opacity: "1",
                                            width: k,
                                            height: l
                                        },
										d.animSpeed / 1.3)
                                    },
									100 + f)
                                }
                            })(y, x, j, k, r);
                            k++
                        }
                        x--
                    }
                    j += 100
                }
            }
        };
        var p = function (a) {
            for (var b, c, d = a.length; d; b = parseInt(Math.random() * d), c = a[--d], a[d] = a[b], a[b] = c);
            return a
        };
        var q = function (a) {
            if (this.console && typeof console.log != "undefined") console.log(a)
        };
        this.stop = function () {
            if (!a(b).data("nivo:vars").stop) {
                a(b).data("nivo:vars").stop = true;
                q("Stop Slider")
            }
        };
        this.start = function () {
            if (a(b).data("nivo:vars").stop) {
                a(b).data("nivo:vars").stop = false;
                q("Start Slider")
            }
        };
        d.afterLoad.call(this);
        return this
    };
    a.fn.nivoSlider = function (c) {
        return this.each(function (d, e) {
            var f = a(this);
            if (f.data("nivoSlider")) return f.data("nivoSlider");
            var g = new b(this, c);
            f.data("nivoSlider", g)
        })
    };
    a.fn.nivoSlider.defaults = {
        effect: "random",
        slices: 15,
        boxCols: 8,
        boxRows: 4,
        animSpeed: 500,
        pauseTime: 3e3,

        startSlide: 0,
        directionNav: true,
        directionNavHide: true,
        controlNav: true,
        controlNavThumbs: false,
        controlNavThumbsFromRel: false,
        controlNavThumbsSearch: ".jpg",
        controlNavThumbsReplace: "_thumb.jpg",
        keyboardNav: true,
        pauseOnHover: true,
        manualAdvance: false,
        captionOpacity: .8,
        prevText: "Prev",
        nextText: "Next",
        randomStart: false,
        beforeChange: function () { },
        afterChange: function () { },
        slideshowEnd: function () { },
        lastSlide: function () { },
        afterLoad: function () { }
    };
    a.fn._reverse = [].reverse
})(jQuery)


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



/*运价页标题-在线文字向上滚*/
function AutoScroll(obj) {
    $(obj).find("ul:first").animate({
        marginTop: "-30px"
    }, 500, function () {
        $(this).css({ marginTop: "0px" }).find("li:first").appendTo(this);
    });
}
$(document).ready(function () {
    setInterval('AutoScroll("#s2")', 4000);
});

/*运价页标题-在线文字向上滚end*/



/*特色圆图标滚动*/

$(function () {
    $('#ts1').tsCarousel({
        display_num: 7,
        move: 1,
        margin: 10,
        controls: false,
        auto_hover: true
    });
    $('#ts2').tsCarousel({
        display_num: 7,
        move: 7,
        margin: 10
    });
});

$(function () {
    $(".i16").attr("style", "background:url(images/ico2_16.png) no-repeat;}");
    $(".ts_container ul li").mousemove(function () {
        var i = $(this).find("a").attr("class");
        var id = i.replace("i", "");
        if (id.length == 1) {
            id = "0" + id;
        }
        var bimg = "images/ico2_" + id + ".png";
        ImgTodefault();
        $(this).find("a").attr("style", "background:url(" + bimg + ") no-repeat;}");
    });
});

function ImgTodefault() {
    $("#ts_container ul li").each(function () {
        var i = $(this).find("a").attr("class");
        var id = i.replace("i", "");
        if (id.length == 1) {
            id = "0" + id;
        }
        var bimg = "images/ico1_" + id + ".png";
        $(this).find("a").attr("style", "background:url(" + bimg + ") no-repeat;}");
    });
}


(function ($) {
    $.fn.tsCarousel = function (options) {
        var defaults = {
            move: 2,
            display_num: 2,
            speed: 500,
            margin: 0,
            auto: false,
            auto_interval: 3000,
            auto_dir: 'next1',
            auto_hover: false,
            next1_text: 'next1',
            next1_image: '',
            prev1_text: 'prev1',
            prev1_image: '',
            controls: true
        };
        var options = $.extend(defaults, options);
        return this.each(function () {
            var $this = $(this);
            var li = $this.find('li');
            var first = 0;
            var fe = 0;
            var last = options.display_num - 1;
            var le = options.display_num - 1;
            var is_working = false;
            var j = '';
            var clicked = false;
            li.css({
                'float': 'left',
                'listStyle': 'none',
                'marginRight': options.margin
            });
            var ow = li.outerWidth(true);
            wrap_width = (ow * options.display_num) - options.margin;
            var seg = ow * options.move;
            $this.wrap('<div class="ts_container"></div>').width(999999);
            if (options.controls) {
                if (options.next1_image != '' || options.prev1_image != '') {
                    var controls = '<a href="" class="prev1"><img src="' + options.prev1_image + '"/></a><a href="" class="next1"><img src="' + options.next1_image + '"/></a>';
                } else {
                    var controls = '<a href="" class="prev1">' + options.prev1_text + '</a><a href="" class="next1">' + options.next1_text + '</a>';
                }
            }
            $this.parent('.ts_container').wrap('<div class="ts_icon"></div>').css({
                'position': 'relative',
                'width': wrap_width,
                'overflow': 'hidden'
            }).before(controls);
            var w = li.slice(0, options.display_num).clone();
            var last_appended = (options.display_num + options.move) - 1;
            $this.empty().append(w);
            get_p();
            get_a();
            $this.css({
                'position': 'relative',
                'left': -(seg)
            });
            $this.parent().siblings('.prev1').click(function () {
                slide_next1();
                clearInterval(j);
                concole();
                clicked = true;
                return false;
            });
            $this.parent().siblings('.next1').click(function () {
                slide_prev1();
                clearInterval(j);
                concole();
                clicked = true;
                return false;
            });
            if (options.auto) {
                start_slide();
                if (options.auto_hover && clicked != true) {
                    $this.find('li').live('mouseenter',
                    function () {
                        if (!clicked) {
                            clearInterval(j);
                        }
                    });
                    $this.find('li').live('mouseleave',
                    function () {
                        if (!clicked) {
                            start_slide();
                        }
                    });
                }
            }
            function start_slide() {
                if (options.auto_dir == 'next1') {
                    j = setInterval(function () {
                        slide_next1()
                    },
                    options.auto_interval);
                } else {
                    j = setInterval(function () {
                        slide_prev1()
                    },
                    options.auto_interval);
                }
            }
            function slide_next1() {
                if (!is_working) {
                    is_working = true;
                    set_pos('next1');
                    $this.animate({
                        left: '-=' + seg
                    },
                    options.speed,
                    function () {
                        $this.find('li').slice(0, options.move).remove();
                        $this.css('left', -(seg));
                        get_a();
                        is_working = false;
                    });
                }
            }
            function slide_prev1() {
                if (!is_working) {
                    is_working = true;
                    set_pos('prev1');
                    $this.animate({
                        left: '+=' + seg
                    },
                    options.speed,
                    function () {
                        $this.find('li').slice(-options.move).remove();
                        $this.css('left', -(seg));
                        get_p();
                        is_working = false;
                    });
                }
            }
            function get_a() {
                var str = new Array();
                var lix = li.clone();
                le = last;
                for (i = 0; i < options.move; i++) {
                    le++
                    if (lix[le] != undefined) {
                        str[i] = $(lix[le]);
                    } else {
                        le = 0;
                        str[i] = $(lix[le]);
                    }
                }
                $.each(str,
                function (index) {
                    $this.append(str[index][0]);
                });
            }
            function get_p() {
                var str = new Array();
                var lix = li.clone();
                fe = first;
                for (i = 0; i < options.move; i++) {
                    fe--
                    if (lix[fe] != undefined) {
                        str[i] = $(lix[fe]);
                    } else {
                        fe = li.length - 1;
                        str[i] = $(lix[fe]);
                    }
                }
                $.each(str,
                function (index) {
                    $this.prepend(str[index][0]);
                });
            }
            function set_pos(dir) {
                if (dir == 'next1') {
                    first += options.move;
                    if (first >= li.length) {
                        first = first % li.length;
                    }
                    last += options.move;
                    if (last >= li.length) {
                        last = last % li.length;
                    }
                } else if (dir == 'prev1') {
                    first -= options.move;
                    if (first < 0) {
                        first = li.length + first;
                    }
                    last -= options.move;
                    if (last < 0) {
                        last = li.length + last;
                    }
                }
            }

            function concole() {
                $(".ts_container ul li").hover(function () {
                    var i = $(this).find("a").attr("class");
                    var id = i.replace("i", "");
                    if (id.length == 1) {
                        id = "0" + id;
                    }
                    var bimg = "images/ico2_" + id + ".png";
                    ImgTodefault();
                    $(this).find("a").attr("style", "background:url(" + bimg + ") no-repeat;}");
                });
            }
        });
    }
})(jQuery);
/*特色圆图标滚动END*/


/*案例滚动*/

$(function () {
    $('#demo1').bxCarousel({
        display_num: 4,
        move: 1,
        auto: true,
        controls: false,
        margin: 10,
        auto_hover: true
    });
    $('#demo2').bxCarousel({
        display_num: 2,
        move: 2,
        auto: true,
        margin: 10

    });
});
(function ($) {
    $.fn.bxCarousel = function (options) {
        var defaults = {
            move: 2,
            display_num: 2,
            speed: 500,
            margin: 0,
            auto: false,
            auto_interval: 2000,
            auto_dir: 'next',
            auto_hover: false,
            next_text: 'next',
            next_image: '',
            prev_text: 'prev',
            prev_image: '',
            controls: true
        };
        var options = $.extend(defaults, options);
        return this.each(function () {
            var $this = $(this);
            var li = $this.find('li');
            var first = 0;
            var fe = 0;
            var last = options.display_num - 1;
            var le = options.display_num - 1;
            var is_working = false;
            var j = '';
            var clicked = false;
            li.css({
                'float': 'left',
                'listStyle': 'none',
                'marginRight': options.margin
            });
            var ow = li.outerWidth(true);
            wrap_width = (ow * options.display_num) - options.margin;
            var seg = ow * options.move;
            $this.wrap('<div class="bx_container"></div>').width(999999);
            if (options.controls) {
                if (options.next_image != '' || options.prev_image != '') {
                    var controls = '<a href="" class="prev"><img src="' + options.prev_image + '"/></a><a href="" class="next"><img src="' + options.next_image + '"/></a>';
                } else {
                    var controls = '<a href="" class="prev">' + options.prev_text + '</a><a href="" class="next">' + options.next_text + '</a>';
                }
            }
            $this.parent('.bx_container').wrap('<div class="bx_wrap"></div>').css({
                'position': 'relative',
                'width': wrap_width,
                'overflow': 'hidden'
            }).before(controls);
            var w = li.slice(0, options.display_num).clone();
            var last_appended = (options.display_num + options.move) - 1;
            $this.empty().append(w);
            get_p();
            get_a();
            $this.css({
                'position': 'relative',
                'left': -(seg)
            });
            $this.parent().siblings('.prev').click(function () {
                slide_next();
                clearInterval(j);
                clicked = true;
                return false;
            });
            $this.parent().siblings('.next').click(function () {
                slide_prev();
                clearInterval(j);
                clicked = true;
                return false;
            });
            if (options.auto) {
                start_slide();
                if (options.auto_hover && clicked != true) {
                    $this.find('li').live('mouseenter',
                    function () {
                        if (!clicked) {
                            clearInterval(j);
                        }
                    });
                    $this.find('li').live('mouseleave',
                    function () {
                        if (!clicked) {
                            start_slide();
                        }
                    });
                }
            }
            function start_slide() {
                if (options.auto_dir == 'next') {
                    j = setInterval(function () {
                        slide_next()
                    },
                    options.auto_interval);
                } else {
                    j = setInterval(function () {
                        slide_prev()
                    },
                    options.auto_interval);
                }
            }
            function slide_next() {
                if (!is_working) {
                    is_working = true;
                    set_pos('next');
                    $this.animate({
                        left: '-=' + seg
                    },
                    options.speed,
                    function () {
                        $this.find('li').slice(0, options.move).remove();
                        $this.css('left', -(seg));
                        get_a();
                        is_working = false;
                    });
                }
            }
            function slide_prev() {
                if (!is_working) {
                    is_working = true;
                    set_pos('prev');
                    $this.animate({
                        left: '+=' + seg
                    },
                    options.speed,
                    function () {
                        $this.find('li').slice(-options.move).remove();
                        $this.css('left', -(seg));
                        get_p();
                        is_working = false;
                    });
                }
            }
            function get_a() {
                var str = new Array();
                var lix = li.clone();
                le = last;
                for (i = 0; i < options.move; i++) {
                    le++
                    if (lix[le] != undefined) {
                        str[i] = $(lix[le]);
                    } else {
                        le = 0;
                        str[i] = $(lix[le]);
                    }
                }
                $.each(str,
                function (index) {
                    $this.append(str[index][0]);
                });
            }
            function get_p() {
                var str = new Array();
                var lix = li.clone();
                fe = first;
                for (i = 0; i < options.move; i++) {
                    fe--
                    if (lix[fe] != undefined) {
                        str[i] = $(lix[fe]);
                    } else {
                        fe = li.length - 1;
                        str[i] = $(lix[fe]);
                    }
                }
                $.each(str,
                function (index) {
                    $this.prepend(str[index][0]);
                });
            }
            function set_pos(dir) {
                if (dir == 'next') {
                    first += options.move;
                    if (first >= li.length) {
                        first = first % li.length;
                    }
                    last += options.move;
                    if (last >= li.length) {
                        last = last % li.length;
                    }
                } else if (dir == 'prev') {
                    first -= options.move;
                    if (first < 0) {
                        first = li.length + first;
                    }
                    last -= options.move;
                    if (last < 0) {
                        last = li.length + last;
                    }
                }
            }

        });
    }
})(jQuery);

/*案例滚动END*/



/*在线ON-LINE下浮 第二屏显示--------------------------------------*/



var scrolltotop = {
    //startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
    //scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).
    setting: { startline: 1, scrollto: 0, scrollduration: 1000, fadeduration: [500, 100] },
    controlHTML: '<div id="barra_fixa_conteudo"> <a id="btn_fechar_barra_fica" style="margin:0px ; width:26px; height:26px;" title="" href="javascript:void(0);"> <img alt="关闭" src="./images/x.png"> </a><a class="boxes cboxElement" title="其它业务" href="/files/html/swt_jump.html" rel="nofollow" target="_blank"> <span>其它业务</span> </a> <a class="boxes cboxElement" title="空运进出口" href="/files/html/swt_jump.html" rel="nofollow" target="_blank"> <span>空运进出口</span> </a>  <a class="boxes cboxElement" title="海运进出口" href="/files/html/swt_jump.html" rel="nofollow" target="_blank"> <span>海运进出口</span> </a></div>', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
    controlattrs: { offsetx: 0, offsety: 0 }, //offset of control relative to right/ bottom of window corner
    anchorkeyword: '#top', // Enter href value of HTML anchors on the page that should also act as "Scroll Up" links

    state: { isvisible: false, shouldvisible: false },

    scrollup: function () {
        if (!this.cssfixedsupport) //if control is positioned using JavaScript
            this.$control.css({ opacity: 0 }) //hide control immediately after clicking it
        var dest = isNaN(this.setting.scrollto) ? this.setting.scrollto : parseInt(this.setting.scrollto)
        if (typeof dest == "string" && jQuery('#' + dest).length == 1) //check element set by string exists
            dest = jQuery('#' + dest).offset().top
        else
            dest = 0
        this.$body.animate({ scrollTop: dest }, this.setting.scrollduration);
    },

    keepfixed: function () {
        var $window = jQuery(window)
        var controlx = $window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
        var controly = $window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
        this.$control.css({ left: controlx + 'px', top: controly + 'px' })
    },

    togglecontrol: function () {
        var scrolltop = jQuery(window).scrollTop()
        if (!this.cssfixedsupport)
            this.keepfixed()
        this.state.shouldvisible = (scrolltop >= this.setting.startline) ? true : false
        if (this.state.shouldvisible && !this.state.isvisible) {
            this.$control.stop().animate({ opacity: 1 }, this.setting.fadeduration[0])
            this.state.isvisible = true
        }
        else if (this.state.shouldvisible == false && this.state.isvisible) {
            this.$control.stop().animate({ opacity: 0 }, this.setting.fadeduration[1])
            this.state.isvisible = false
        }
    },

    init: function () {
        jQuery(document).ready(function ($) {
            var mainobj = scrolltotop
            var iebrws = document.all
            mainobj.cssfixedsupport = !iebrws || iebrws && document.compatMode == "CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
            mainobj.$body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body')
            mainobj.$control = $('<div id="barra_fixa" style="bottom:0px; width:100%;">' + mainobj.controlHTML + '</div>')
				.css({ position: mainobj.cssfixedsupport ? 'fixed' : 'absolute', bottom: mainobj.controlattrs.offsety, right: mainobj.controlattrs.offsetx, opacity: 0 })
            //.attr({ title: '' })
            //.click(function () { mainobj.scrollup(); return false })
				.appendTo('body')
            if (document.all && !window.XMLHttpRequest && mainobj.$control.text() != '') //loose check for IE6 and below, plus whether control contains any text
                mainobj.$control.css({ width: mainobj.$control.width() }) //IE6- seems to require an explicit width on a DIV containing text
            mainobj.togglecontrol()
            $('a[href="' + mainobj.anchorkeyword + '"]').click(function () {
                mainobj.scrollup()
                return false
            })
            $(window).bind('scroll resize', function (e) {
                mainobj.togglecontrol()
            })
        })
    }
}

scrolltotop.init()

/*在线ON-LINE下浮 第二屏显示END--------------------------------------*/







/*荣誉滚动*/

$(function () {
    $('#demo3').bxoCarousel({
        display_num: 4,
        move: 1,
        auto: true,
        controls: false,
        margin: 5,
        auto_hover: true
    });
    $('#demo4').bxoCarousel({
        display_num: 2,
        move: 2,
        auto: true,
        margin: 5

    });
});
(function ($) {
    $.fn.bxoCarousel = function (options) {
        var defaults = {
            move: 2,
            display_num: 2,
            speed: 500,
            margin: 0,
            auto: false,
            auto_interval: 2000,
            auto_dir: 'next2',
            auto_hover: false,
            next_text: 'next2',
            next_image: '',
            prev_text: 'prev2',
            prev_image: '',
            controls: true
        };
        var options = $.extend(defaults, options);
        return this.each(function () {
            var $this = $(this);
            var li = $this.find('li');
            var first = 0;
            var fe = 0;
            var last = options.display_num - 1;
            var le = options.display_num - 1;
            var is_working = false;
            var j = '';
            var clicked = false;
            li.css({
                'float': 'left',
                'listStyle': 'none',
                'marginRight': options.margin
            });
            var ow = li.outerWidth(true);
            wrap_width = (ow * options.display_num) - options.margin;
            var seg = ow * options.move;
            $this.wrap('<div class="bx_container"></div>').width(999999);
            if (options.controls) {
                if (options.next_image != '' || options.prev_image != '') {
                    var controls = '<a href="" class="prev2"><img src="' + options.prev_image + '"/></a><a href="" class="next2"><img src="' + options.next_image + '"/></a>';
                } else {
                    var controls = '<a href="" class="prev2">' + options.prev_text + '</a><a href="" class="next2">' + options.next_text + '</a>';
                }
            }
            $this.parent('.bx_container').wrap('<div class="bx_wrap"></div>').css({
                'position': 'relative',
                'width': wrap_width,
                'overflow': 'hidden'
            }).before(controls);
            var w = li.slice(0, options.display_num).clone();
            var last_appended = (options.display_num + options.move) - 1;
            $this.empty().append(w);
            get_p();
            get_a();
            $this.css({
                'position': 'relative',
                'left': -(seg)
            });
            $this.parent().siblings('.prev2').click(function () {
                slide_next();
                clearInterval(j);
                clicked = true;
                return false;
            });
            $this.parent().siblings('.next2').click(function () {
                slide_prev();
                clearInterval(j);
                clicked = true;
                return false;
            });
            if (options.auto) {
                start_slide();
                if (options.auto_hover && clicked != true) {
                    $this.find('li').live('mouseenter',
                    function () {
                        if (!clicked) {
                            clearInterval(j);
                        }
                    });
                    $this.find('li').live('mouseleave',
                    function () {
                        if (!clicked) {
                            start_slide();
                        }
                    });
                }
            }
            function start_slide() {
                if (options.auto_dir == 'next2') {
                    j = setInterval(function () {
                        slide_next()
                    },
                    options.auto_interval);
                } else {
                    j = setInterval(function () {
                        slide_prev()
                    },
                    options.auto_interval);
                }
            }
            function slide_next() {
                if (!is_working) {
                    is_working = true;
                    set_pos('next2');
                    $this.animate({
                        left: '-=' + seg
                    },
                    options.speed,
                    function () {
                        $this.find('li').slice(0, options.move).remove();
                        $this.css('left', -(seg));
                        get_a();
                        is_working = false;
                    });
                }
            }
            function slide_prev() {
                if (!is_working) {
                    is_working = true;
                    set_pos('prev2');
                    $this.animate({
                        left: '+=' + seg
                    },
                    options.speed,
                    function () {
                        $this.find('li').slice(-options.move).remove();
                        $this.css('left', -(seg));
                        get_p();
                        is_working = false;
                    });
                }
            }
            function get_a() {
                var str = new Array();
                var lix = li.clone();
                le = last;
                for (i = 0; i < options.move; i++) {
                    le++
                    if (lix[le] != undefined) {
                        str[i] = $(lix[le]);
                    } else {
                        le = 0;
                        str[i] = $(lix[le]);
                    }
                }
                $.each(str,
                function (index) {
                    $this.append(str[index][0]);
                });
            }
            function get_p() {
                var str = new Array();
                var lix = li.clone();
                fe = first;
                for (i = 0; i < options.move; i++) {
                    fe--
                    if (lix[fe] != undefined) {
                        str[i] = $(lix[fe]);
                    } else {
                        fe = li.length - 1;
                        str[i] = $(lix[fe]);
                    }
                }
                $.each(str,
                function (index) {
                    $this.prepend(str[index][0]);
                });
            }
            function set_pos(dir) {
                if (dir == 'next2') {
                    first += options.move;
                    if (first >= li.length) {
                        first = first % li.length;
                    }
                    last += options.move;
                    if (last >= li.length) {
                        last = last % li.length;
                    }
                } else if (dir == 'prev2') {
                    first -= options.move;
                    if (first < 0) {
                        first = li.length + first;
                    }
                    last -= options.move;
                    if (last < 0) {
                        last = li.length + last;
                    }
                }
            }

        });
    }
})(jQuery);

/*荣誉滚动END*/


