
/* Variables */

var $w = $(window);

var w = $w.width(),
	h = $w.height();

var device = {
	"BREAKPOINT":750,
	"size":(750<w)?"pc":"sp",
}

var pageType = "normal";

var MOUSEWHEEL = 'onwheel' in document ? 'wheel' : 'onmousewheel' in document ? 'mousewheel' : 'DOMMouseScroll';

var LANG = ( $("body").hasClass("lang-en") )?"en":"jp";

/* video */


var common = {
	$d  : $("#document"),
	$b  : $("#body"),
	$h  : $("#header"),
	$g  : $("#gnavi"),
	$gm : $("#gnavi-main"),
	/* [ resize ]
	---------------------------------------------------------------------*/
	resize : function(){

		w = (device.BREAKPOINT < window.innerWidth)?
									(1080 <= window.innerWidth)?window.innerWidth:1080
									: window.innerWidth,

		h = (device.BREAKPOINT<window.innerWidth)?$(window).height():$(window).height();



		if(device.BREAKPOINT<w){
			device.size = "pc";
			// common.$gm.mCustomScrollbar("disable");
			common.$h.css({"width":""});
		}else{
			device.size = "sp";
			// common.$gm.mCustomScrollbar("update");
			common.$h.css({"width":w});
		}


		// if($("#kv-container")[0] && device.size == "pc"){
		if($("#kv-container")[0] && device.size == "pc"){
			common.$d.css({"width":$(window).width(),"overflow":""});
		}else{
			if(!$("#webgl-page")[0]) common.$d.css({"width":$(window).width(),"height":"","overflow":"hidden"});
		}

		$(".js__full-screen").css({"width":w,"height":h});
		common.$gm.css({"top": [h-common.$gm.height()]/2 });

		if(device.size == "sp") {
			common.$g.css({"height":h*1.14});
		}else{
		}

		if($("#hasen-svg")[0]){
			$("#hasen-svg").css({"width":w+5,"left": -([w - 1080] / 2 + 5)});
		}

		for(var i=0; i<$(".js__posi-v-center").length; i++){

			var $v = $(".js__posi-v-center").eq(i),
				p = (device.BREAKPOINT<w)?(h-$v.find(".js__base-h").height())/2:(h-70-$v.find(".js__base-h").height())/2;

			$v.css({"top": p });

		}

		_gNavi.update(common.$g);
		_modal.update();
		effect.flashing( $(".js__flashing"),"resize" );

		if($("#products .scene-list")[0]){
			var _pW = $("#use-of-scene").width(),
				$_pLi = $("#use-of-scene .scene-list");
			if(device.size == 'pc'){

				if(w < 1450){
					$_pLi.width(w).css({"left":[_pW-$_pLi.width()]/2});
				}else if(w >= 1450 && w>=1080){
					$_pLi.width(1450).css({"left":[_pW-$_pLi.width()]/2});
				}else if(w<1080 && device.BREAKPOINT<w ){
					$_pLi.width(1080).css({"left":[_pW-$_pLi.width()]/2});
				}else{
					$_pLi.removeAttr("style");
				}
			}else{
				$_pLi.removeAttr("style");
			}
		}

	},
	switchContents : function() {

		var $s = $(".switch-navi ul li");
		var $sl = $(".switch-select");
		var $c = $(".switch-list");
		var h = 999999;

		//set
		$s.first().addClass("active");
		TweenLite.set($c.first(),{"display":"block"});
		for (var i = $(".switch-container").length - 1; i >= 0; i--) {
			for (var j = $(".switch-container").eq(i).find($c).length - 1; j >= 0; j--) {
				if(h > $(".switch-container").eq(i).find($c).eq(j).height()){
					h = $(".switch-container").eq(i).find($c).eq(j).height();
				}
				$(".switch-container").eq(i).css({"min-height":h});
			}
		}

		$s.on('click',function(){
			var data = $(this).data('section');
			var This = $(this).index();
			_sortContents(This,data);
		});

		$sl.change(function(){
			var data = $(this).find("option:selected").val();
			var This = $(this).find("option:selected").index();
			_sortContents(This,data);
		});


		var _sortContents = function(This,data) {

			$s.removeClass('active');
			$s.eq(This).addClass('active');
			$sl.find("option").eq(This).prop('selected',true);

			var cTween = new TweenMax.to($c, 0.48,
				{
					alpha: 0,
					display: 'none',
					ease: Power4.easeOut,
					onStart: function() {
						if(data == ""){
							var csTween = new TweenMax.to($c, 0.48,{
								alpha: 1,
								display: 'block',
								ease: Power4.easeOut,
							});
						}else{
							var csTween = new TweenMax.to($(data), 0.48,{
								alpha: 1,
								display: 'block',
								ease: Power4.easeOut,
							});
						}
						if(data == ""){
							data = ".switch-container>*";
						}
						TweenLite.set($(data).children(),{
							opacity:0,
							y: 15,
						});
						var tween1 = new TweenMax.to($(data).children(),0.68,{
							opacity:1,
							ease: Elastic.easeIn.config(2.5, 0.1)
						});
						var tween2 = new TweenMax.to($(data).children(),0.48,{
							y: 0,
							ease: Power4.easeIn
						});
					}
				}
			);
		}


	},
	detailContents : function() {

		var $tc = $(".detail-trigger.click");
		var $cc = $(".detail-container.click");
		var $th = $(".detail-trigger.hover");
		var $ch = $(".detail-container.hover");

		$tc.on('click',function(){
			var data = $(this).data('detail');
			_contentsOpen(data);
			return false;
		});

		$cc.on('click',function(){
			var ccTween = new TweenMax.to($(this), 0.48,{
				x: 50,
				y: 50,
				alpha: 0,
				display: 'none',
				ease: Power4.easeOut,
			});
			return false;
		});

		$th.on('mouseenter',function(){
			var data = $(this).data('detail');
			_contentsOpen(data);
			return false;
		});

		$ch.on('mouseleave',function(){
			var ccTween = new TweenMax.to($(this), 0.48,{
				x: 50,
				y: 50,
				alpha: 0,
				display: 'none',
				ease: Power4.easeOut,
			});
			return false;
		});

		var _contentsOpen = function(data) {
			var coTween = new TweenMax.fromTo($(data), 0.68,{
				x: -50,
				y: -50,
				alpha: 0,
				display: 'none',
				ease: Power4.easeOut,
			},{
				x: 0,
				y: 0,
				alpha: 1,
				display: 'block',
				ease: Power4.easeOut,
			});
		}
	},
	pageReset:function(){
		$(".done").removeClass("done");
	}
} /* common END */


// var thisPage;

var effect = {

	shuffle : function (t,type) {
		if(type == "set"){
			if(!t[0]) return;
			t.parent().css({"opacity":0});
		}else{
			if(!t[0]) return;
			t.shuffleLetters({
				'step': 3,
				'fps':  24,
				// 'text':txt
				// 'callback'  : callback
			});
			t.addClass("done");
			t.parent().css({"opacity":1});
		}
	},

	flashing : function(t,type){

		if(type == "set"){
			t.removeClass("done").css({"opacity":0,"width":0});
		}else if(type == "show"){
			for(var i=0; i<t.length; i++){
				var _t = t.eq(i);
				_t.addClass("done");
				TweenMax.to(_t,0.68,{
					opacity:1,
					// width:_t.children().outerWidth(),
					ease: Elastic.easeIn.config(2.5, 0.1)
				});

				// var _thisW = (_t.children().hasClass("btn"))? _t.parents("").outerWidth() : _t.children().outerWidth() ;
				var _w = (device.size == "pc")? _t.children().outerWidth() : "100%";
				TweenMax.to(_t,0.88,{
					width:_w,
					ease: Power4.easeIn
				});
			}
		}else if(type == "resize"){
			if( !$(".js__flashing-inner")[0] ) return;
			for(var i=0; i<t.length; i++){
				t.eq(i).addClass("done").children(".js__flashing-inner").css({"width":t.eq(i).children(".js__flashing-inner").width()});
			}
		}
	},

	simple : function(t,type){
		if(type == "set"){
			// t.css({"opacity":0,"width":0});

			for(var i=0; i<t.find(".js__show-line-mv").length; i++){
				var _t = t.find(".js__show-line-mv").eq(i);
				_t.parent().css({"height":_t.height()});
				TweenLite.set(_t,{
					y:_t.height(),
				});
			}


		}else{

			var tween = new TweenMax.staggerTo(t, 1.15, {
				y:0+"px",
				ease: Expo.easeOut,
				// delay:1,
				onComplete:function(){
				}
			}, .15);

		}
	},

	colorPanel : {
		set  : function($p){
			TweenLite.set($p.find(".js__color-panel"), {y:0,x: "0%"});
			TweenLite.set($p.find(".js__color-panel-target,.js__color-panel .panel"), {y:0,x: "-100%"});
		},
		show : function($p){

			TweenMax.staggerTo($p.find(".js__color-panel .panel").not(".done"), .25, {
				x: "0%",
				ease: Power2.easeOut,
			},0.2);
			setTimeout(function(){

				TweenMax.to($p.find(".js__color-panel").not(".done"), .25, {
					x          : "0%",
					ease       : Power2.easeOut,
					onComplete : function(){

						TweenMax.to($p.find(".js__color-panel-target").not(".done"), .25, {
							x: "0%",
							ease: Power2.easeOut,
						});


					}
				});


			},2e2);

		}
	},

	horizontal : {
		set  : function($p) {
			$p.find(".js__horizontal").removeClass("done").css({"overflow":""});
			TweenLite.set($p.find(".js__horizontal"), {width: "0%"});
		},
		show : function($p) {
			TweenMax.to($p.find(".js__horizontal").not(".done"), .48, {
				width: "100%",
				ease: Power2.easeOut,
				onComplete:function(){
					$p.find(".js__horizontal").addClass("done").css({"overflow":"inherit"});
				}
			});

		},
	},

	horizontalMotion : {
		set  : function($p) {
			$p.find(".js__horizontal-motion").removeClass("done").css({"overflow":""});
			TweenLite.set($p.find(".js__horizontal-target"), {x: "-100%"});
		},
		show : function($p) {
			TweenMax.to($p.find(".js__horizontal-motion").not(".done").children(), .48, {
				x: "0%",
				ease: Power2.easeOut,
				onComplete:function(){
					$p.find(".js__horizontal-motion").addClass("done").css({"overflow":"inherit"});
				}
			});

		},
	},



	sp :  {
		set  : function($p){
			$(".js__sp-point").removeClass("done");
			TweenLite.set( $(".js__sp-point").not(".done"), {opacity: 0,y:50});
		},
		show : function($p){
			var tween = new TweenMax.to($p,0.68,{
				opacity:1,
				y:0,
				ease: Power2.easeOut,
				onComplete :function(){
					$p.addClass("done");
				}
				// width:_t.children().outerWidth(),
				// ease: Elastic.easeIn.config(2.5, 0.1)
			});
		}
	}


} //[ effect END ]

var svg = {
	init:function(_this){
		var g = _this.find("path,circle,line,rect,polyline,polygon");
		g.removeClass("done");
		TweenLite.set(g, {drawSVG: "0%",visibility:"visible"});
	},
	draw:function(_this,delay){
		TweenMax.killTweensOf($("path,circle,line,rect,polyline,polygon").not(".done"));
		TweenMax.staggerFromTo(_this.find("path,circle,line,rect,polyline,polygon").not(".done"), .25, {
			drawSVG: "0%"
		}, {
			drawSVG: "100%",
			ease: Power2.easeOut
		},delay);
	},
}

/* [ Header ]
---------------------------------------------------------------------*/
var header = {
	int:function(){
		var tween = TweenMax.to(common.$h.find("path"),0.28,{
			"fill":"#0000fa",
		});
		var tween2 = TweenMax.to($("#header-text"),0.28,{
			"color":"#0000fa",
		});

		$("#gnavi-trigger").addClass("color");
	},
	scroll:function(point,inc){
		point = point - [h/2-common.$h.height()];
		inc = (inc>0)?-inc:inc;

		if(point < -inc){
			var tween = TweenMax.to(common.$h.find("path"),0.28,{
				"fill":"#0000fa",
			});
			var tween2 = TweenMax.to($("#header-text"),0.28,{
				"color":"#0000fa",
			});

			$("#gnavi-trigger").addClass("color");
			$("#lang-navi").removeClass("white");

		}else{
			var tween = TweenMax.to(common.$h.find("path"),0.28,{
				"fill":"#fff",
			});
			var tween2 = TweenMax.to($("#header-text"),0.28,{
				"color":"#fff",
			});
			$("#gnavi-trigger").removeClass("color");
			$("#lang-navi").addClass("white");

		}
	}
}

var link = {
	$t      : $(".news-list .article"),
	url    : '',
	int:function(){
		link.$t.on("click",function(){
			link.url = $(this).find("a").attr("href");
			location.href = link.url;
		});
	}
}

var scrollM = {
	point   : new Array,
	spPoint : new Array,
	$s      : $(".js__section"),
	$sp     : $(".js__sp-point"),
	inc     : 0,
	current : "",
	prev    : "",
	load    : false,
	init : function(){
		/* [ 下層用表示アニメーション ] */
		if(device.size == "pc"){
			effect.colorPanel.set( $("#body") );
			effect.horizontal.set( $("#body") );
			effect.horizontalMotion.set( $("#body") );
			effect.shuffle( $("#body").find(".js__shuffle").not(".done"),"set" );
			effect.flashing( $("#body").find(".js__flashing"),"set" );
			effect.simple( $("#body").find(".js__show .js__show-line-mv"),"set" );
		}else{
			// effect.flashing( $("#body").find(".js__flashing.js__first"),"set" );
			effect.sp.set( $(".js__sp-point") );
		}

		setTimeout(function(){
            scrollM.resize();
		},1e3);


		$(window).on("scroll",function(){
            scrollM.motion();
		});

		$(window).on("resize",function () {
            scrollM.resize();
        });


	},
	motion : function(){
		// if(!scrollM.load) return;
		scrollM.inc = $(window).scrollTop();


		if(device.size == "pc"){
			for(var i=0; i<scrollM.$s.length; i++){
				if(scrollM.point[i] < scrollM.inc + h/8*7 && scrollM.point[i] + scrollM.$s.eq(i).outerHeight() > scrollM.inc){
					scrollM.current = scrollM.$s.eq(i).attr("id");
				}
			}
		}else{
			for(var i=0; i<scrollM.$sp.length; i++){

				if(scrollM.spPoint[i] < scrollM.inc + h/8*7){
					scrollM.current = scrollM.$sp.eq(i);
					effect.sp.show( scrollM.current.not(".done") );
				} else {

				}
			}
		}



		if(scrollM.prev != scrollM.current){
			scrollM.prev = scrollM.current;
			if(device.size == "pc"){
				effect.colorPanel.show( $("#"+scrollM.current) );
				effect.horizontal.show( $("#"+scrollM.current) );
				effect.horizontalMotion.show( $("#"+scrollM.current) );
				effect.flashing( $("#"+scrollM.current).find(".js__flashing"),"show" );
				effect.simple( $("#"+scrollM.current).find(".js__show .js__show-line-mv"),"show" );
				effect.shuffle(  $("#"+scrollM.current).find(".js__shuffle").not(".done"),"show" );
			}else{
				// effect.sp.show( scrollM.current );
			}
		}


	},
	resize : function () {
        if(device.size=="pc"){
            for(var i=0; i<scrollM.$s.length; i++){
                scrollM.point[i] = scrollM.$s.eq(i).offset().top;
            }
        }else{
            for(var i=0; i<scrollM.$sp.length; i++){
                scrollM.spPoint[i] = scrollM.$sp.eq(i).offset().top;
            }
        }
    }
}

var lowlayer = {
	init:function(){
		TweenLite.set($("#page-title-show"),{"width":0});
		effect.shuffle( $("#page-title-inner,#kv-container").find(".js__shuffle").not(".done"),"set" );
		// effect.flashing( $(".js__flashing"),"set" );
		/* SLIDER ※PCとSP画面で切り替える必要のないもの */
		if( $(".js__slider-all")[0] ){
			if($(".js__slider-all").data("column") != "" && !$(".page-container#products")[0] ){
				var column = $(".js__slider-all").data("column");
				$(".js__slider-all").not(".done").slick({
					infinite: true,
					slidesToShow: column,
					slidesToScroll: column,
					speed: 300,
					arrows:false,
					dots: true,
					responsive: [
						{
					      breakpoint: 750,
					      settings: {
					        slidesToShow: 1,
					        slidesToScroll: 1,
					        infinite: true,
					        dots: true
					      }
					    }
					]
				});
			}else{
				// console.log("slick load");
				$(".js__slider-all").not(".done").slick({
					infinite: true,
					arrows:false,
					dots: true,
				});
			}

			$(".js__slider-all").on('afterChange', function(event, slick, currentSlide, nextSlide){
				if(!$(".feature-container")[0]) return;
				$(this).parents(".feature-container").find(".now").text(currentSlide+1);
			});


			$(".js__slider-ctr").on("click",function(){


				var _ID = "#"+$(this).data("target");

				var current = $(_ID).slick('slickCurrentSlide') + 2;


				if($(this).hasClass("prev")){
					$(_ID).slick('slickPrev');
				}else{
					$(_ID).slick('slickNext');
				}


				current = (current>=4)?1:current;

				$(this).parent().find(".num .now").text(current);

			});

		}
		/* MAP START */
		if($("#map")[0]){

			var mapLatLng = new google.maps.LatLng(35.648058,140.038259);

			var styleOptions =
			[
				{
					"stylers": [
						{ "invert_lightness": true },
						{ "weight": 0.1 },
						{ "hue": "#3c00ff" }
					]
				},{
				"stylers": [
					{ "weight": 0.1 },
					{ "saturation": 66 },
					{ "lightness": 20 },
					{ "hue": "#3300ff" }
				]
				},{
				"elementType": "labels.text",
					"stylers": [
						{ "color": "#ffffff" }
					]
				},{
					"elementType": "labels.icon",
					"stylers": [
						{ "hue": "#1900ff" },
						{ "lightness": 32 }
					]
				},{
				"featureType": "landscape",
					"stylers": [
						{ "lightness": -6 }
					]
				},{
				"featureType": "poi",
				"elementType": "geometry.fill",
				"stylers": [
					{ "color": "#43437c" },
					{ "lightness": 14 }
				]
				}
			]

			var mapOption = {
				zoom: 17,
				center: mapLatLng,
				mapTypeId: google.maps.MapTypeId.ROADMAP,
				scrollwheel: false,
				draggable:false
			};


			var mapMap = new google.maps.Map(document.getElementById("map"), mapOption);

			/* アイコン設定 */
			var URL = location.href;

			var icon1 = {
				url : 'http://www.acsl.co.jp/assets/img/about/icon-pin.png',
				scaledSize : new google.maps.Size(52,60)
				// ↑ここで画像のサイズを指定
			}

			var marker1 = new google.maps.Marker({
			  position: mapLatLng,
			  map: mapMap,
			  icon: icon1
			});

			var styledMapOptions = { name: '所在地' }
			var mapStyle = new google.maps.StyledMapType(styleOptions, styledMapOptions);

			mapMap.mapTypes.set('map', mapStyle);
			mapMap.setMapTypeId('map');
			marker1.setMap(mapMap);
		}
		/* MAP END */

		// ------------- accordion --------------- //

		$('.acc-trigger,.acc-container .close-btn').on("click",function(){
			var _this = $(this);
			if(!_this.parents('.acc-container').hasClass('open')){
				_this.parents('.acc-container').addClass('open');
				TweenMax.to(_this.parents('.acc-container').find('.acc-contents'),.28,{
					height: 'inherit',
					opacity: 1,
					display: 'block',
					ease:Power2.easeOut,
					onStart:function(){
						var hh = $("#header").height();
						var tp = _this.parents('.acc-container').offset().top - hh;
						$("html,body").animate({scrollTop: tp}, 300);
					}
				});
				$('.acc-container').not(_this.parents('.acc-container')).removeClass('open');
				TweenMax.to($('.acc-container').not(_this.parents('.acc-container')).find('.acc-contents'),.28,{
					height: 0,
					opacity: 0,
					display: 'none',
					ease:Power2.easeOut,
				});
			}else{
				_this.parents('.acc-container').removeClass('open');
				TweenMax.to($(this).parents('.acc-container').find('.acc-contents'),.28,{
					height: 0,
					opacity: 0,
					display: 'none',
					ease:Power2.easeOut,
				});
			}
		});

	},
	update:function(){
		var $p = $("#page-title-inner"),
			$s = $("#page-title-show.done");
		if($p[0]) $p.css({"width":w-[$p.offset().left*2]});
		if($s[0]) $s.css({"width":w-[$p.offset().left*2]});

		/* slick START */
		if( $(".js__slider")[0] ){
			if(device.size!="pc"){
				$(".js__slider").not(".done").slick({
					arrows:false,
					dots: true,
				});
				$(".js__slider").addClass("done");
			}else{
				//$(".js__slider").slick('destroy');
				$(".js__slider").removeClass("done");
				if($(".js__slider .slick-track")[0]) $(".js__slider").slick('unslick');
			}
		}

		if( $(".js__slider-flick")[0] ){
			if(device.size!="pc"){

				$(".js__slider-flick").not(".done").slick({
					arrows:false,
					dots: false,
					infinite:false,

				});
				$(".js__slider-flick").addClass("done");

			}else{
				$(".js__slider-flick").removeClass("done");
				if($(".js__slider-flick .slick-track")[0]) $(".js__slider-flick").slick('unslick');
			}

		}
		/* slick END */


		if(device.size=="sp") {
			$(".js__flashing.done").css({"width":"","opacity":""});
			effect.shuffle( $("#body").find(".js__shuffle").not(".done"),"show" );
		}


	},
	show:function(){

		if($("#page-title-show")[0]){

			var tween1 = new TweenMax.to($("#page-title-show"),0.68,{
				opacity:1,
				// delay:1,
				ease: Elastic.easeIn.config(2.5, 0.1)
			});

			var tween2 = new TweenMax.to($("#page-title-show"),0.88,{
				width:$("#page-title-show").children().outerWidth(),
				// delay:1,
				ease: Power4.easeIn,
				onComplete:function(){
					effect.shuffle( $("#page-title-inner").find(".js__shuffle").not(".done"),"show" );
					$("#page-title-show").addClass("done");
					var tween3 = new TweenMax.to($(".js__lowlayer-show"),0.98,{
						width : "100%",
						ease: Power4.easeOut,
					});
					if(device.size == "pc"){
						effect.flashing( $("#body").find(".js__flashing.js__first"),"show" );
					}else{
						effect.colorPanel.show( $("#body") );
						effect.horizontal.show( $("#body") );
						effect.flashing( $("#body").find(".js__flashing"),"show" );
						effect.simple( $("#body").find(".js__show .js__show-line-mv"),"show" );
						effect.sp.show( $(".js__sp-point.js__first") );

					}

				}
			});

		}else{

			if(device.size =="pc") setTimeout(function(){
				effect.shuffle( $("#kv-container .js__shuffle").not(".done"),"show" );
			},1e3);
		}


	}
}


/* ================================================================
[ body BG ]
================================================================ */


var SEPARATION = 200, AMOUNTX = 100, AMOUNTY = 100;

var container, stats;
var camera, cameraAutoFlg=false ,scene, renderer;

var particles, particle, count = 0;

var lines, line;

var mouseX = 0, mouseY = 0;

var windowHalfX = window.innerWidth / 2;
var windowHalfY = window.innerHeight / 2;

var bodyBgFlg = false;

var frame = 0;


var bodyBg = {
	init:function(){

		container = document.getElementById("page-body-bg");
		// container = document.createElement( 'div' );
		// $("#page-body-bg").append(container);

		camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 1, 10000 );
		camera.position.z = 700;

		scene = new THREE.Scene();
		// scene.setClearColor(0xffffff, 1);

		particles = new Array();
		lines = new Array();

		var PI2 = Math.PI * 2;


		var material1 = new THREE.LineBasicMaterial({
					color: 0xe5e5e5,
					linewidth: 2
				});

		var material2 = new THREE.LineBasicMaterial({
					color: 0xfafafa,
					linewidth: 1
				});

		var geometry1 = geometry2 = new THREE.Geometry();

		// geometry.vertices.push(
		// 	new THREE.Vector3( -20, 0, 0 ),
		// 	new THREE.Vector3( 20, 0, 0 ),
		// 	new THREE.Vector3( 0, 0, 0 ),
		// 	new THREE.Vector3( 0, 0, -20 ),
		// 	new THREE.Vector3( 0, 0, 20 )
		// );

		geometry1.vertices.push(
			new THREE.Vector3( -7, 0, 0 ),
			new THREE.Vector3( 7, 0, 0 ),
			new THREE.Vector3( 0, 0, 0 ),
			new THREE.Vector3( 0, 0, -7 ),
			new THREE.Vector3( 0, 0, 7 )
		);

		geometry2.vertices.push(
			new THREE.Vector3( 0, 0, 0 ),
			new THREE.Vector3( 200, 0, 0 ),
			new THREE.Vector3( 0, 0, 0 ),
			new THREE.Vector3( 0, 0, 0 ),
			new THREE.Vector3( 0, 0, 200 )
		);


        var group = new THREE.Group();

		var i = 0;

		for ( var ix = 0; ix < AMOUNTX; ix ++ ) {

			for ( var iy = 0; iy < AMOUNTY; iy ++ ) {

				particle = particles[ i ++ ] = new THREE.Line( geometry1, material1 );
				line = lines[ i ] = new THREE.Line( geometry2, material2 );

				// particle.position.x = ix * SEPARATION - ( ( AMOUNTX * SEPARATION ) / 2 );
				// particle.position.z = iy * SEPARATION - ( ( AMOUNTY * SEPARATION ) / 2 );

				particle.position.x = ix * SEPARATION - ( ( AMOUNTX * SEPARATION ) / 2 );
				particle.position.z = iy * SEPARATION - ( ( AMOUNTY * SEPARATION ) / 2 );
				// scene.add( particle );
				group.add( particle );

				line.position.x = ix * SEPARATION - ( ( AMOUNTX * SEPARATION ) / 2 );
				line.position.z = iy * SEPARATION - ( ( AMOUNTY * SEPARATION ) / 2 );
				// scene.add( line );
                group.add( line );


			}

		}

        scene.add(group);

		renderer = new THREE.WebGLRenderer();
		renderer.setClearColor(0xffffff, 1); // Blaa Baggrunds farve
		renderer.setPixelRatio( window.devicePixelRatio );
		renderer.setSize( window.innerWidth, window.innerHeight );
		container.appendChild( renderer.domElement );
		window.addEventListener( 'resize', bodyBg.resize, false );
	},
	resize:function(){
		windowHalfX = window.innerWidth / 2;
		windowHalfY = window.innerHeight / 2;

		camera.aspect = window.innerWidth / window.innerHeight;
		camera.updateProjectionMatrix();

		renderer.setSize( window.innerWidth, window.innerHeight );
	},
	mouseMove:function(e){
		mouseX = e.clientX - windowHalfX;
		mouseY = e.clientY - windowHalfY;
	},
	animate:function(){
		if(!bodyBgFlg) requestAnimationFrame( bodyBg.animate );
		bodyBg.render();
	},
	render:function(){
			// Follow mouse
			frame++;
			if(frame % 2 == 0) return;
			if(camera.position.x<=400 && !cameraAutoFlg){
				if(camera.position.x==400) cameraAutoFlg=true;
				camera.position.x +=  1;
			}else{
				if(camera.position.x<0) cameraAutoFlg=false;
				camera.position.x -=  1;
			}
			camera.position.y = 2000 + (( - mouseY - camera.position.y ) * .01); //neutral
			camera.lookAt( scene.position );
			renderer.render( scene, camera );

			count += 0.1;
	},

}

// function common(){


/* [ gNavi ]
---------------------------------------------------------------------*/
var _gNavi = {
	// _gNavi.status : {
	status : {
		flg  : false,
		x    : 0,
		open : false,
		close : false,
	},

	init:function(t){
		_gNavi.status.x = window.innerWidth;

		t.css({"z-index":-1});
		// TweenLite.set(t.find(".line"),{x:"100%"});
		effect.shuffle( t.find(".no,.text"),"set" );
		effect.flashing( t.find(".js__flashing"),"set" );
		TweenLite.set(t.find("#gnavi .logo"),{width:0+"%"});
		TweenLite.set(t.find("#gnavi-main li"),{x:_gNavi.status.x});
		TweenLite.set(t.find(".line-child"),{x:_gNavi.status.x});

		/* [ open ] */
		$("#gnavi-trigger").on("click",function(){
			if(_gNavi.status.open) return;
			_gNavi.status.open = true;
			t.css({"z-index":""});
			_gNavi.status.flg = true;
			_gNavi.open(t,_gNavi.status.x);
		});

		$("#gnavi-close").on("click",function(){
			if(!_gNavi.status.close) return;
			_gNavi.status.close = false;
			_gNavi.close(t,_gNavi.status.x);
		});

	},
	update:function(t){
		_gNavi.status.x = window.innerWidth;
		if(!_gNavi.status.flg){
			TweenLite.set(t.find("#gnavi-main li"),{x:_gNavi.status.x});
			TweenLite.set(t.find(".line-child"),{x:_gNavi.status.x});
		}else{ //[ グロナビが開いている時 ]
			common.$d.css({ "height":h ,"overflow":"hidden"});
			$(".js__full-screen").css({"width":w});
			$("#gnavi-inner").find(".bg-container .line >*").css({"width":w});
		}

		common.$gm.css({"height":$("#gnavi-main-child").height()});


	},
	open:function(t,x){
		common.resize();
		var c = 0;
		var tween = new TweenMax.staggerTo(t.find("#gnavi-main li"), .45, {
			x:0+"%",
			// opacity:1,
			ease: Power2.easeOut,
			onComplete:function(){
				c++;
				if(c==t.find("#gnavi-main li").length) {
					effect.shuffle( t.find(".no,.text"),"show" );
					effect.flashing( t.find(".js__flashing"),"show" );
					//js__svg-draw
					svg.draw($(".js__svg-draw"),0.2);
					_gNavi.status.flg = true;
				}
			}
		}, .1);

		var tweenLogo = new TweenMax.to(t.find(".logo"),0.28,{
			width:"100%",
			delay:1,
			ease: Power2.easeOut,
		});

		var tween = new TweenMax.staggerTo(t.find(".line-child"), .65, {
			x:0+"%",
			ease: Power4.easeOut,
			onComplete:function(){
			}
		}, .08,flgTrue);

		function flgTrue(){
			setTimeout(function(){
				// _gNavi.status.open = true;
				_gNavi.status.close = true;
				$("#gnavi .bg-container").addClass("open");
				$("body").css({"position":"fixed","top":0,"left":0});
				// if(common.$gm.height() > h){
				// 	common.$gm.css({"top":100,"padding-bottom":100,"height":h}).mCustomScrollbar({
				// 		advanced:{
				// 			updateOnContentResize: true
				// 		}
				// 	});
				// }
			},500);
		}
	},
	close:function(t,x){

		$("#gnavi .bg-container").removeClass("open");

		var c = 0;
		svg.init($(".js__svg-draw"));
		effect.shuffle( t.find(".no,.text"),"set" );
		effect.flashing( t.find(".js__flashing"),"set" );
		var tweenLogo = new TweenMax.to(t.find(".logo"),0.28,{
			"width":"0%",
			ease: Power2.easeOut,
		});

		var tween = new TweenMax.staggerTo(t.find("#gnavi-main li"), .25, {
			x:x,
			// opacity:1,
			ease: Power2.easeOut,
			onComplete:function(){
				c++;
				if(c==t.find("#gnavi-main li").length) {
					t.css({"z-index":-1});
					//_gNavi.status.open = false;
					// t.find(".js__svg-draw").children().removeAttr("style");
				}
			}
		}, .05);

		var tween = new TweenMax.staggerTo(t.find(".line-child"), .35, {
			x:x,
			ease: Power4.easeOut,
			onComplete:function(){
			}
		}, .04,flgFalse);

		function flgFalse(){
			_gNavi.status.open = false;

			_gNavi.status.flg = false;
			if(pageType!="scroll" || device.size == "sp" ) common.$d.css({"height":""});
			$("body").css({"position":"","top":"","left":""});
			// common.$gm.removeAttr("style").mCustomScrollbar('destroy');
		}

	}
}

/* [ modal ]
---------------------------------------------------------------------*/


var _modal = {
	x         : 0,
	currentID : "",
	timer     : [],
	flg       : false,
	init:function(){
		if(!$(".modal-container")[0]) return;
		var t = ".modal-container";

		_modal.x = window.innerWidth;

		$(t).css({"z-index":-1,"opacity":0});
		// TweenLite.set(t.find(".line"),{x:"100%"});
		effect.shuffle( $(t).find(".js__shuffle"),"set" );
		effect.flashing( $(t).find(".js__flashing"),"set" );
		// TweenLite.set(t.find("#gnavi-main li"),{x:_modal.x});
		TweenLite.set($(t).find(".bg-container .line"),{x:_modal.x});

		/* [ open ] */
		$(".modal-trigger").on("click",function(){
			if(_modal.flg) return;
			_modal.flg = true;
			var _id = $(this).data("target");
			$("#"+ _id +t).css({"z-index":""}).addClass("current");
			_modal.open($("#"+ _id +t),_modal.x);
		});

		$(".modal-close,.bg-container").on("click",function(){
			if(!_modal.flg) return;
			_modal.flg = false;
			var _id = $(this).parents(".modal-container").attr("id");
			_modal.close($("#"+ _id +t),_modal.x);
		});

		if( !Useragnt.mobile ) $(".modal-contents-inner").not(".done").mCustomScrollbar({
			// mouseWheelPixels : 10,
			//  mouseWheelPixels: 200,
			// scrollInertia   : 200,
			advanced:{
				updateOnContentResize: true
			}
		});

		$(".modal-contents-inner").addClass("done");


	},
	update:function(){
		if(!$(".modal-container")[0]) return;
		_modal.x = window.innerWidth;
		var t = $(".modal-container");

		/* モーダルが開いている時スクロールバーを消す */
		if(_modal.flg){
			if(device.size=="sp") common.$d.css({"height":h});
		}else{
			if(device.size=="sp") common.$d.css({"height":""});
			clearTimeout(_modal.timer);
			_modal.timer = setTimeout(function(){
				TweenLite.set(t.find(".bg-container .line"),{x:_modal.x});
			},1);
		}

		var posiY = (h>t.find(".modal-contents").children().height())?
						[h-t.find(".modal-contents").children().height()]/2 :
						30;

		t.find(".modal-contents")
			.css({"top":posiY + $(window).scrollTop()});


		t.find(".modal-contents-inner")
			.css({"height":h});


		if(device.size=="pc"){
			$(".modal-contents-inner").not(".done").mCustomScrollbar({
				//  mouseWheelPixels: 200,
				// scrollInertia   : 200,
				advanced:{
					updateOnContentResize: true
				}
			});

			$(".modal-contents-inner").addClass("done");

		}else{
			$(".modal-contents-inner").removeClass("done");
			//if($(".mCustomScrollBox")[0]) $(".modal-contents-inner").mCustomScrollbar('destroy');
		}

		var scP = [w - $(".modal-contents").width()] /2 - 15;
		$(".mCSB_scrollTools").css("right",-scP);

	/* slick END */


	},
	open:function(t,x){
		if(!$(".modal-container")[0]) return;
		// var tween = new TweenMax.staggerTo(t.find(".line"), .45, {
		// 	x:0+"%",
		// 	ease: Power4.easeOut,
		// 	onComplete:function(){
		// 	}
		// }, .05);

		common.resize();
		t.css({"opacity":1});
		$("body").css({"position":"fixed"});
		var c = 0;
		//modal-contents
		var tweenC = new TweenMax.to(t.find(".modal-contents"), .45, {
			opacity:1,
			ease: Power2.easeOut,
		});
		common.resize(); //[ スクロールバーを消した分空白が空くのでそれを埋めるために再度読み込む ]
		$(".modal-contents-inner").animate({scrollTop:0},10);
		var tween = new TweenMax.staggerTo(t.find(".bg-container .line"), .45, {
			x:0,
			// opacity:1,
			ease: Power2.easeOut,
			onComplete:function(){
				c++;
				if(c==t.find(".bg-container .line").length) {
					//js__svg-draw
					// svg.draw($(".js__svg-draw"),0.2);
					// _modal.flg = true;
					// $("body").css({"pointer-events":"none"});
					// $("#spec-modal .modal-contents-inner").css({"pointer-events":"auto"});
				}
			}
		}, .1);

		setTimeout(function(){
			common.resize();
			effect.shuffle( t.find(".js__shuffle"),"show" );
			effect.flashing( t.find(".js__flashing"),"show" );
		},2e3);

	},
	close:function(t,x){
		if(!$(".modal-container")[0]) return;

		$("body").css({"position":""});
		var c = 0;
		// svg.init($(".js__svg-draw"));
		effect.shuffle( t.find(".js__shuffle"),"set" );
		effect.flashing( t.find(".js__flashing"),"set" );

		var tweenC = new TweenMax.to(t.find(".modal-contents"), .45, {
			opacity:0,
			ease: Power2.easeOut,
		});

		var tween = new TweenMax.staggerTo(t.find(".bg-container .line"), .25, {
			x:x,
			// opacity:1,
			ease: Power2.easeOut,
			onComplete:function(){
				c++;
				if(c==t.find(".bg-container .line").length) {
					t.css({"z-index":-1,"opacity":0});
					// t.find(".js__svg-draw").children().removeAttr("style");
					if(pageType!="scroll" || pageType=="scroll"&&device.size=="sp") common.$d.css({"height":""});
				}
				_modal.flg = false;
				// $("body").css({"pointer-events":""});
				// $("#spec-modal .modal-contents-inner").css({"pointer-events":""});
			}
		}, .05);

	},
}



function pageLoad(){


	_gNavi.init(common.$g);
	_modal.init();
	// _productsKv();
	common.switchContents();
	common.detailContents();



	/* dom */
	if($('.js__fluc')[0]){

        $('.js__fluc').append('<div class="top"></div><div class="bottom"></div>');

	}

	svg.init($(".js__svg-draw"));
	if(pageID!="top"){
		$("html,body").animate({scrollTop:0},10);
		// $("body,html").animate({scrollTop:0},300);
		lowlayer.init();
		lowlayer.update();
		setTimeout(function(){
			scrollM.load = true;
		},1e2);
	}

	if(pageID!="top" || pageID=="top"&&device.size=="sp"){
		scrollM.init();
	}

	$("#page-top").on("click",function(){
		if(pageType == "scroll" && device.size !="sp") return;
		$("body,html").animate({scrollTop:0},300);
	})


	if(!Useragnt.ie && !Useragnt.edge && !Useragnt.mobile && !Useragnt.tablet){
		// pageID = $(".page-container").attr("id");
		if(pageID != "vision" && pageID!="webgl" && pageID!="webgl_modal"){
			setTimeout(function(){
				bodyBg.init();
				// if(pageID!="top") bodyBg.animate();
				bodyBg.animate();
			},1e3);
		}
	}

	if(!Useragnt.mobile && pageID!="products" || pageID!="products"){
	// if(!Useragnt.mobile && pageID!="products"){
		common.resize();
		if(!$("#top")[0]) lowlayer.update();
	}
	if(Useragnt.pc && pageID=="products") common.resize();

	$w.on("resize orientationchange",function(){
		if(Useragnt.mobile && pageID=="products") return;
		common.resize();
		if(!$("#top")[0]) lowlayer.update();
	});


	var tween = new TweenMax(common.$d, 0.88,
		{
			opacity:1,
			ease: Power4.easeOut,
			onComplete:function(){
				if(pageID!="top") lowlayer.show();
				if(device.size =="sp") scrollM.motion();
			}
		}
	);
}

/* load */

var pageID,
	lastElementClicked,
	loadFlg = false; //[ ページ読み込み後のみ動作させる場合使用 ]

var loader = {
	init : function(){
		if(!$("#top-page")[0]) return;
		var _this = $("#kv-container");
		TweenLite.set(_this.find("path,circle,line,rect,polyline,polygon"), {drawSVG: "0%",visibility:"visible"});
		effect.shuffle( _this.find(".js__shuffle").not(".done"),"set" );
		_this.find(".js__flashing").parent().css({"opacity":0});
		setTimeout(function(){
			_this.find(".js__flashing").parent().css({"opacity":1});
			effect.flashing( _this.find(".js__flashing"),"set" );
		},1100);
	},
	done : function(){

		if(!$("#top-page")[0]) return;

		var _this = $("#kv-container");
		var _c = 0;
		// effect.flashing( _this.find(".js__flashing"),"show" );
			var load = new TweenLite.to($("#top-page .gage polygon,#top-page .gage-light polygon"), .88, { drawSVG: 100 + "%", ease: Power2.easeInOut,onComplete:function(){
				 $("#top-page .gage polygon, #top-page .gage-light polygon").addClass("done");
				var tweenBg = new TweenMax.staggerTo(_this.find(".bg-container .line"), 0.48, {
					x:w,
					ease: Power2.easeOut,
					onComplete:function(){
						// _c++;
						// console.log("count",_c);
						// if(_c = _this.find(".bg-container .line").length){
						// 	console.log("child---",_c);
						// }
					}
				},0.1);

				setTimeout(function(){

						var tween1 =  new TweenMax.to(_this.find("#kv-hold-area-inner"), .48,
											{
												y:120,
												ease: Power2.easeOut,
												// delay:0.5,
												onComplete:function(){
													svg.draw(_this.find("#kv-hold-area-inner"),0.1);
													if(device.size =="pc") effect.shuffle( _this.find(".js__shuffle").not(".done"),"show" );

													var tween2 = new TweenLite.to($("#top-page .drone"), .68, { opacity: 1,scale:1, ease: Power4.easeOut,onComplete:function(){
														if(device.size =="pc") effect.flashing( _this.find(".js__flashing"),"show" );
														 $("#top-page .gage,#top-page .gage-light,#top-page .drone").addClass("done");
														if(Useragnt.pc){
															var kvVideo = document.getElementById("kv-bg-video"),
																kvAudio = document.getElementById("kv-bg-audio");
															 kvVideo.play();
															 if($("#kv-container .volum").hasClass("on")) kvAudio.play();
														}
														_this.find(".bg-container").remove();
														loadFlg = true;
													} });
												}
											}
										);




				},1e3);


			} });

		if(device.size !="pc"){


			setTimeout(function(){
				// effect.shuffle( _this.find(".js__shuffle").not(".done"),"show" );
				setTimeout(function(){
					effect.flashing( _this.find(".js__flashing.btn_flash"),"show" );
				},50);
				loadFlg = true;
			},100);
			// _this.find(".bg-container").remove();

		}


	}
}

pageID = $(".page-container").attr("id");
pageID = (pageID == "en")?"top":pageID;
common.pageReset();



$(function(){
	loader.init();
});
// Pace.on("done",function(){
$(window).on("load",function(){

	if(pageID != "top") loadFlg = true;
	if(pageID == "top") setTimeout(function(){
		loader.done();
	},1100);
	// common();
	// setTimeout(function(){
		// console.log("pageID",pageID);
		pageLoad();

		// console.log(pageID);

		if(pageID!="webgl" && pageID!="webgl_modal"){



			// pageLoad();
            console.log(pageID);
			switch(pageID){
				case "top":
                    if(Useragnt.pc) $("body").addClass("js__sc-trans");
					pageType = "scroll";
					scrollPage();
					effect.simple( $(".js__show"),"set" );
					videoControll();
					link.int();
					$w.on("resize",function(){
						effect.simple( $(".js__show"),"set" );
					});
				break;
				case "technology":
				case "products":
                    if(Useragnt.pc) $("body").addClass("js__sc-trans");
					pageType = "scroll";
                    header.int();
					scrollPage();
					effect.simple( $(".js__show"),"set" );
					videoControll();

					$w.on("resize",function(){
						effect.simple( $(".js__show"),"set" );
					});
				break;
				case "vision":
					pageType = "fullscreen";
					fullScreen();
				break;
				case "about":
				case "our-business":
				case "news":
				case "showcase":
				case "support":
				case "recruit":
				case "notfound":
				case "privacy-policy":
					pageType = "normal";
					header.int();
					link.int();
				break;
				case "contact":
					pageType = "normal";
					Contact();
					header.int();
				break;
			};
		}else if(pageID=="webgl_modal"){
			specialModalPage();
			videoControll();
		}else{

			if (!ACSLD.isSupported)
				return;

			var path = "webgl/js/";
			// 非同期でJSファイルを順番に読み込む
			// やり方はお任せします
			$.ajax({
				url: path + "lib/lib-body.pack.min.js",
				dataType: "script",
				timeout: 10 * 1000,
				cache: true
			}).always(function () {
				$.ajax({
					url: path + "main.js",
					dataType: "script",
					timeout: 10 * 1000,
					cache: true
				}).always(function () {
					// ここから実行開始
					ACSLD.index.init({
						canvas: document.getElementById("three"),
						windSpeed: 100,
						windSize: 1.2,
						windDroneSpeed: 18,
						windDroneHeight: 12,
						colorLast: 16800
					});
					var model = ACSLD.modelGlobal;
					// プリロードが完了して処理が始まったらisStartがtrueに
					model.on("change:isStart", function () {
						if (model.get("isStart")) {
							// データのやり取り
							webgl(model);
						}
					});
				});
			});

		}


	// },1e3);
	$(document).ready(function() {
	    $('.link-box').click(function() {
	        window.location = $(this).find('a').attr('href');
	        return false;
	    });
	});

	$.post("https://graph.facebook.com/?scrape=true&id="+location.href);
});

