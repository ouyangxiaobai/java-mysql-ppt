/*
 Highcharts Gantt JS v7.1.3 (2019-08-14)

 GridAxis

 (c) 2016-2019 Lars A. V. Cabrera

 License: www.highcharts.com/license
*/
(function(f){"object"===typeof module&&module.exports?(f["default"]=f,module.exports=f):"function"===typeof define&&define.amd?define("highcharts/modules/grid-axis",["highcharts"],function(p){f(p);f.Highcharts=p;return f}):f("undefined"!==typeof Highcharts?Highcharts:void 0)})(function(f){function p(f,w,g,p){f.hasOwnProperty(w)||(f[w]=p.apply(null,g))}f=f?f._modules:{};p(f,"parts-gantt/GridAxis.js",[f["parts/Globals.js"],f["parts/Utilities.js"]],function(f,w){var g=w.defined,p=w.erase,B=w.isArray,
x=w.isNumber,u=f.addEvent,E=f.dateFormat,m=function(a){return w.isObject(a,!0)},y=f.merge,z=f.pick,C=f.wrap,F=f.Chart,n=f.Axis,G=f.Tick,H=function(a){var b=a.options,c=b&&m(b.grid)?b.grid:{},l=25/11,d=a.chart.renderer.fontMetrics(b.labels.style.fontSize);b.labels||(b.labels={});b.labels.align=z(b.labels.align,"center");a.categories||(b.showLastLabel=!1);a.horiz&&(b.tickLength=c.cellHeight||d.h*l);a.labelRotation=0;b.labels.rotation=0},A={top:0,right:1,bottom:2,left:3,0:"top",1:"right",2:"bottom",
3:"left"};n.prototype.isOuterAxis=function(){var a=this,b=a.columnIndex,c=a.linkedParent&&a.linkedParent.columns||a.columns,l=b?a.linkedParent:a,d=-1,e=0;a.chart[a.coll].forEach(function(b,c){b.side!==a.side||b.options.isInternal||(e=c,b===l&&(d=c))});return e===d&&(x(b)?c.length===b:!0)};n.prototype.getMaxLabelDimensions=function(a,b){var c={width:0,height:0};b.forEach(function(b){b=a[b];if(m(b)){var d=m(b.label)?b.label:{};b=d.getBBox?d.getBBox().height:0;d.textStr&&!x(d.textPxLength)&&(d.textPxLength=
d.getBBox().width);d=x(d.textPxLength)?d.textPxLength:0;c.height=Math.max(b,c.height);c.width=Math.max(d,c.width)}});return c};f.dateFormats.W=function(a){a=new Date(a);a.setHours(0,0,0,0);a.setDate(a.getDate()-(a.getDay()||7));var b=new Date(a.getFullYear(),0,1);return Math.ceil(((a-b)/864E5+1)/7)};f.dateFormats.E=function(a){return E("%a",a,!0).charAt(0)};u(G,"afterGetLabelPosition",function(a){var b=this.label,c=this.axis,l=c.reversed,d=c.chart,e=c.options,f=e&&m(e.grid)?e.grid:{};e=c.options.labels;
var q=e.align,k=A[c.side],h=a.tickmarkOffset,r=c.tickPositions,v=this.pos-h;r=x(r[a.index+1])?r[a.index+1]-h:c.max+h;var t=c.tickSize("tick",!0);h=B(t)?t[0]:0;t=t&&t[1]/2;if(!0===f.enabled){if("top"===k){f=c.top+c.offset;var g=f-h}else"bottom"===k?(g=d.chartHeight-c.bottom+c.offset,f=g+h):(f=c.top+c.len-c.translate(l?r:v),g=c.top+c.len-c.translate(l?v:r));"right"===k?(k=d.chartWidth-c.right+c.offset,l=k+h):"left"===k?(l=c.left+c.offset,k=l-h):(k=Math.round(c.left+c.translate(l?r:v))-t,l=Math.round(c.left+
c.translate(l?v:r))-t);this.slotWidth=l-k;a.pos.x="left"===q?k:"right"===q?l:k+(l-k)/2;a.pos.y=g+(f-g)/2;d=d.renderer.fontMetrics(e.style.fontSize,b.element);b=b.getBBox().height;e.useHTML?a.pos.y+=d.b+-(b/2):(b=Math.round(b/d.h),a.pos.y+=(d.b-(d.h-d.f))/2+-((b-1)*d.h/2));a.pos.x+=c.horiz&&e.x||0}});u(n,"afterTickSize",function(a){var b=this.maxLabelDimensions,c=this.options;!0===(c&&m(c.grid)?c.grid:{}).enabled&&(c=2*Math.abs(this.defaultLeftAxisOptions.labels.x),b=c+(this.horiz?b.height:b.width),
B(a.tickSize)?a.tickSize[0]=b:a.tickSize=[b])});u(n,"afterGetTitlePosition",function(a){var b=this.options;if(!0===(b&&m(b.grid)?b.grid:{}).enabled){var c=this.axisTitle,f=c&&c.getBBox().width,d=this.horiz,e=this.left,g=this.top,q=this.width,k=this.height,h=b.title;b=this.opposite;var r=this.offset,v=this.tickSize()||[0],t=h.x||0,n=h.y||0,p=z(h.margin,d?5:10);c=this.chart.renderer.fontMetrics(h.style&&h.style.fontSize,c).f;v=(d?g+k:e)+v[0]/2*(b?-1:1)*(d?1:-1)+(this.side===A.bottom?c:0);a.titlePosition.x=
d?e-f/2-p+t:v+(b?q:0)+r+t;a.titlePosition.y=d?v-(b?k:0)+(b?c:-c)/2+r+n:g-p+n}});C(n.prototype,"unsquish",function(a){var b=this.options;return!0===(b&&m(b.grid)?b.grid:{}).enabled&&this.categories?this.tickInterval:a.apply(this,Array.prototype.slice.call(arguments,1))});u(n,"afterSetOptions",function(a){var b=this.options;a=a.userOptions;var c=b&&m(b.grid)?b.grid:{};if(!0===c.enabled){var l=y(!0,{className:"highcharts-grid-axis "+(a.className||""),dateTimeLabelFormats:{hour:{list:["%H:%M","%H"]},
day:{list:["%A, %e. %B","%a, %e. %b","%E"]},week:{list:["Week %W","W%W"]},month:{list:["%B","%b","%o"]}},grid:{borderWidth:1},labels:{padding:2,style:{fontSize:"13px"}},margin:0,title:{text:null,reserveSpace:!1,rotation:0},units:[["millisecond",[1,10,100]],["second",[1,10]],["minute",[1,5,15]],["hour",[1,6]],["day",[1]],["week",[1]],["month",[1]],["year",null]]},a);"xAxis"===this.coll&&(g(a.linkedTo)&&!g(a.tickPixelInterval)&&(l.tickPixelInterval=350),g(a.tickPixelInterval)||!g(a.linkedTo)||g(a.tickPositioner)||
g(a.tickInterval)||(l.tickPositioner=function(a,b){var c=this.linkedParent&&this.linkedParent.tickPositions&&this.linkedParent.tickPositions.info;if(c){var d,e=l.units;for(d=0;d<e.length;d++)if(e[d][0]===c.unitName){var h=d;break}if(e[h][1]){if(e[h+1]){var g=e[h+1][0];var m=(e[h+1][1]||[1])[0]}c=f.timeUnits[g];this.tickInterval=c*m;return this.getTimeTicks({unitRange:c,count:m,unitName:g},a,b,this.options.startOfWeek)}}}));y(!0,this.options,l);this.horiz&&(b.minPadding=z(a.minPadding,0),b.maxPadding=
z(a.maxPadding,0));x(b.grid.borderWidth)&&(b.tickWidth=b.lineWidth=c.borderWidth)}});u(n,"afterSetAxisTranslation",function(){var a=this.options,b=a&&m(a.grid)?a.grid:{},c=this.tickPositions&&this.tickPositions.info,f=this.userOptions.labels||{};this.horiz&&(!0===b.enabled&&this.series.forEach(function(a){a.options.pointRange=0}),c&&(!1===a.dateTimeLabelFormats[c.unitName].range||1<c.count)&&!g(f.align)&&(a.labels.align="left",g(f.x)||(a.labels.x=3)))});u(n,"trimTicks",function(){var a=this.options,
b=a&&m(a.grid)?a.grid:{},c=this.categories,f=this.tickPositions,d=f[0],e=f[f.length-1],g=this.linkedParent&&this.linkedParent.min||this.min,q=this.linkedParent&&this.linkedParent.max||this.max,k=this.tickInterval;!0!==b.enabled||c||!this.horiz&&!this.isLinked||(d<g&&d+k>g&&!a.startOnTick&&(f[0]=g),e>q&&e-k<q&&!a.endOnTick&&(f[f.length-1]=q))});u(n,"afterRender",function(){var a=this.options,b=a&&m(a.grid)?a.grid:{},c=this.chart.renderer,f=this.horiz;if(!0===b.enabled){b=2*Math.abs(this.defaultLeftAxisOptions.labels.x);
this.maxLabelDimensions=this.getMaxLabelDimensions(this.ticks,this.tickPositions);b=this.maxLabelDimensions.width+b;var d=a.lineWidth;this.rightWall&&this.rightWall.destroy();var e=this.axisGroup.getBBox();if(this.isOuterAxis()&&this.axisLine&&(f&&(b=e.height-1),d)){e=this.getLinePath(d);var g=e.indexOf("M")+1;var q=e.indexOf("L")+1;var k=e.indexOf("M")+2;var h=e.indexOf("L")+2;if(this.side===A.top||this.side===A.left)b=-b;f?(e[k]+=b,e[h]+=b):(e[g]+=b,e[q]+=b);this.axisLineExtra?this.axisLineExtra.animate({d:e}):
this.axisLineExtra=c.path(e).attr({stroke:a.lineColor,"stroke-width":d,zIndex:7}).addClass("highcharts-axis-line").add(this.axisGroup);this.axisLine[this.showAxis?"show":"hide"](!0)}(this.columns||[]).forEach(function(a){a.render()})}});var D={afterGetOffset:function(){(this.columns||[]).forEach(function(a){a.getOffset()})},afterInit:function(){var a=this.chart,b=this.userOptions,c=this.options;c=c&&m(c.grid)?c.grid:{};c.enabled&&(H(this),C(this,"labelFormatter",function(a){var b=this.axis,c=b.tickPositions,
e=this.value,d=(b.isLinked?b.linkedParent:b).series[0],g=e===c[0];c=e===c[c.length-1];d=d&&f.find(d.options.data,function(a){return a[b.isXAxis?"x":"y"]===e});this.isFirst=g;this.isLast=c;this.point=d;return a.call(this)}));if(c.columns)for(var g=this.columns=[],d=this.columnIndex=0;++d<c.columns.length;){var e=y(b,c.columns[c.columns.length-d-1],{linkedTo:0,type:"category"});delete e.grid.columns;e=new n(this.chart,e,!0);e.isColumn=!0;e.columnIndex=d;p(a.axes,e);p(a[this.coll],e);g.push(e)}},afterSetOptions:function(a){a=
(a=a.userOptions)&&m(a.grid)?a.grid:{};var b=a.columns;a.enabled&&b&&y(!0,this.options,b[b.length-1])},afterSetScale:function(){(this.columns||[]).forEach(function(a){a.setScale()})},destroy:function(a){(this.columns||[]).forEach(function(b){b.destroy(a.keepEvents)})},init:function(a){var b=(a=a.userOptions)&&m(a.grid)?a.grid:{};b.enabled&&g(b.borderColor)&&(a.tickColor=a.lineColor=b.borderColor)}};Object.keys(D).forEach(function(a){u(n,a,D[a])});u(F,"afterSetChartSize",function(){this.axes.forEach(function(a){(a.columns||
[]).forEach(function(a){a.setAxisSize();a.setAxisTranslation()})})})});p(f,"masters/modules/grid-axis.src.js",[],function(){})});
//# sourceMappingURL=grid-axis.js.map