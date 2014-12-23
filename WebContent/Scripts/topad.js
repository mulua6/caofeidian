function TopADShow(v) { if (ishow != 0) { return } if (v > 0) { ishow = 1; i = minh; TopADSpread() } else if (v < 0) { ishow = -1; i = maxh; TopADShrink() } }
function TopADSpread() { if (ishow != 1) { return } else { dv.Height = i + 'px'; t = setInterval(TopLarge, speed); setTimeout("img2.style.display = ''; img1.style.display = 'none';", 500); } }
function TopADShrink() { if (ishow != -1) { return } else { t = setInterval(TopSmall, speed); img1.style.display = ''; img2.style.display = 'none'; } }
function TopLarge() { if (i >= maxh) { dv.style.height = maxh + 'px'; clearInterval(t); ishow = 0 } else { dv.style.height = i + 'px'; i += 50 } }
function TopSmall() { if (i <= minh) { dv.style.height = minh + 'px'; ishow = 0; clearInterval(t); } else { dv.style.height = i + 'px'; i -= 50 } }
function PageLoad() { TopADShow(1); var ii = -1; setTimeout("TopADShow(" + ii + ")", 10000); }
PageLoad();