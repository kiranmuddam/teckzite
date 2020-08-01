function scrollPage(){

	var _video = {
		WIDTH  : $("#kv-bg-video").attr("width"),
		HEIGHT : $("#kv-bg-video").attr("height"),
	}

	var delta = 0; //[ ホイールイベント発生時の移動量保存 ]

	// console.log("page id",pageID);

	/* BASE
	========================================================================================*/

	var page = {
		$d        : $("#document"),
		$c        : $(".page-container"),
		$f        : $("#footer-container"),
		$bf       : $("#body,#footer-container"),
		$b        : $("#body"),
		$s        : $(".section-container"),
		$v        : ($("#kv-bg-video")[0])?document.getElementById("kv-bg-video"):
										(Useragnt.tablet)? document.getElementById("tablet-kv-bg-video") :
											document.getElementById("sp-kv-bg-video"),
		$k        : $("#kv-container"),
		point     : new Array(), //[ section offset top ]
		parsent   : 0,
		inc       : 0,
		current   : "", //[ current section ID ]
		currentNo : "", // [ current section index ]
		prev      : "",
		scrollFlg : true,
		showFlg   : false, //[ コンテンツ表示タイミング管理 ]
		timer     : [],
		breakFlg  : false,
		fps       : 0,
		dir       : "next",
		easeFlg   : false,
		scTimer   : [],
		reTimer   : [],
		showCheck : [],
		product   : {
			posi : ( $(".page-container#products")[0] )?$("#product .photo-inner").offset().top:0,
		},

		init:function(){

			/* get section position */
			for(var i=0; i<page.$s.length; i++){
				page.point[i] = page.$s.eq(i).offset().top;
				/* [ 要素表示処理用のフラグ管理 ] */
				page.showCheck[i+1] = false;
			}

			if($(".page-container#products")[0]) $(".page-container#products").addClass("show");



			effect.shuffle( page.$s.find(".js__shuffle").not(".done"),"set" );
			effect.flashing( page.$s.find(".js__flashing"),"set" );
			effect.simple( page.$s.find(".js__show"),"set" );



			$("#page-top").on("click",function(){
				if(device.size =="sp") return;

                TweenMax.to(page.$bf, .38,{
                    // y:0,
					transform : 'translate3d(0px,0px,0px)',
					onStart:function () {
                        smoothScroll.reset();
                        // pararax.scroll( page.$d,0 );
						$(".js__mv").css({transform:"translate3d(0px,0px,0px)"});
                    }
				});

			});

			if($("#top,#en")[0]&&$("#kv-hold-area")[0]) {

				// $("#kv-hold-area")
				var holdArea = {
					$c    : $("#kv-hold-area"),
					timer : [],
					flg   : false,
				}


				holdArea.$c.on("click",function(){

						holdArea.$c.find(".gage").removeClass("done");
						svg.init(holdArea.$c.find(".gage svg"));
						TweenMax.staggerFromTo(holdArea.$c.find(".gage svg").find("path,circle,line,rect,polyline,polygon").not(".done"), 1, {
							drawSVG: "0%"
						}, {
							drawSVG: "100%",
							ease: Power2.easeOut,
							onComplete:function(){
								holdArea.flg = true;
								var scTween = new TweenMax.to($("#document,#page-body-bg"), .38,
												{
													opacity :0,
													scale   :2,
													ease: Power4.easeOut,
													onComplete:function(){
														location.href = (LANG=="jp")?"special.php":"../en_special.php";
													}
												}
											);

							}
						},0.1);

				});
			}

            pararax.update( page.$d,page.inc );

		},

		update:function(){
            for(var i=0; i<page.$s.length; i++){
                page.point[i] = page.$s.eq(i).offset().top;
                // /* [ 要素表示処理用のフラグ管理 ] */
                // page.showCheck[i+1] = false;
            }


			pararax.init(page.$d);
			pararax.update( page.$d,page.inc );
			// if(device.size!="sp"){
			// 	$("html,body").animate({scrollTop:0},1);
			// }
		},
		getStatus:function(t) {
			var s = window.getComputedStyle(t.get(0));
			var m = s.getPropertyValue("-webkit-transform") || s.getPropertyValue("-moz-transform") || s.getPropertyValue("-ms-transform") || s.getPropertyValue("-o-transform") || s.getPropertyValue("transform");
			if (m === 'none') {
				m = 'matrix(0,0,0,0,0)';
			}
			var val = m.match(/([-+]?[\d\.]+)/g);
			return val[14] || val[5] || 0;
		},
		scroll:function(inc,type){

            // if(!page.scrollFlg) return;

            var docH = (page.$c.attr("id")=="top")?
                page.$c.outerHeight():
                page.$c.outerHeight() + $("#header").height();


            /* アニメーション */
			page.$bf.css({
                "transform" : 'translate3d(0, ' + inc + 'px, 0)'
            });

            page.inc = inc;



			/* ======================================================
			 [ EVENT ]
			 ====================================================== */

			/* KVに戻ったら背景のwebGLを止める */
            if($("#top,#en")[0]) {
                if(page.inc == -1){
                    if(!bodyBgFlg){
                        bodyBgFlg = true;
                    }
                }else{
                    if(bodyBgFlg){
                        bodyBgFlg = false;
                        bodyBg.animate();
                    }
                }

                // var v = ($("#kv-bg-video")[0])?document.getElementById("kv-bg-video"):document.getElementById("sp-kv-bg-video");;
                if(-page.inc > page.$k.height()){
                    if(Useragnt.ios){
                        canvasVideo.pause();
                    }else{
                        page.$v.pause();
                    }
                }else{
                    if(Useragnt.ios){
                        canvasVideo.play();
                    }else{
                        page.$v.play();
                    }
                }

            }
            if($(".kv-bg-video")[0]){
                // var v = ($("#kv-bg-video")[0])?document.getElementById("kv-bg-video"):document.getElementById("sp-kv-bg-video");;
                if(page.inc < -page.$k.outerHeight()){
                    if(Useragnt.ios){
                        canvasVideo.pause();
                    }else{
                        page.$v.pause();
                    }
                }else{
                    if(Useragnt.ios){
                        canvasVideo.play();
                    }else{
                        page.$v.play();
                    }
                }
            }


			/* 表示中のセンテンス取得 */

			if(!page.showFlg) return;
            page.showFlg = false;
            page.prev = (page.prev!=page.current)?page.current:page.prev;
            for(var i=0; i<page.$s.length; i++){

                var adjust = (h/w < 0.7)?h*0.7:h*0.5;
				adjust = (page.$s.eq(i).attr("id")=="about" || i==page.$s.length-1)?adjust*2.2:adjust;


                if(page.point[i] - adjust < -page.inc && page.point[i] + page.$s.eq(i).outerHeight() > -page.inc){
                    page.current = page.$s.eq(i).attr("id");
                }

            }
            page.currentNo = $("#"+page.current).index();
            page.parsent = --page.inc+page.point[page.currentNo]-page.$s.eq(page.currentNo).outerHeight();



			/*  [ 表示されるセンテンスが切り替わったタイミング ]  */
            if(page.prev!=page.current && !page.showCheck[page.currentNo]) {
            	// console.log("show",page.current);
                effect.simple( $("#"+page.current).find(".js__show .js__show-line-mv"),"show" );
                effect.shuffle( $("#"+page.current).find(".js__shuffle").not(".done"),"show" );
                effect.flashing( $("#"+page.current).find(".js__flashing").not(".done"),"show" );
                // $("#"+page.current).find(".js__split-text").addClass("show");
                page.showCheck[page.currentNo] = true;
            }



			/* [ 非表示要素が残っているなら ] */
            // if(-page.inc+h > docH-h/2){
            //     console.log("other show");
            //
            //     effect.simple( page.$b.find(".js__show .js__show-line-mv"),"show" );
            //     effect.shuffle( page.$b.find(".js__shuffle").not(".done"),"show" );
            //     effect.flashing( page.$b.find(".js__flashing").not(".done"),"show" );
            //     // $("#"+page.current).find(".js__split-text").addClass("show");
            // }

			/* [ 表示残しがないか確認 ] */


		},

		resize:function(type){

			// w = $(window).width();


			if(productModal.flg) page.scroll(0,"move-product");

			$("#js__zoom-action").css({"height":h});

			// var video = {
			// 	w : ()
			// }
			/* [ SPサイズでリセット ] */
			if(device.size == "sp"){
				$("#body,#footer-container").removeAttr("style").find("#page-body-container,.js__mv,.section-container,.js__flashing").removeAttr("style");
				$(".js__show-line-mv").css({"transform":"matrix(1, 0, 0, 1, 0, 0)"});
				if(!page.breakFlg){
					$("html,body").animate({scrollTop:0},10,function(){
						page.inc = 0;
						page.current = "";
						page.currentNo = "";
						page.prev = "";
					});
					page.breakFlg = true;
					if(type!="load") effect.shuffle( page.$b.find(".js__shuffle").not(".done"),"show" );
				}

				if($(".page-container#products")[0] || $(".page-container#technology")[0]){
					page.$k.css({"height":""});
				}

				// page.$d.css({"height":"","overflow":""});
			}else{

				page.$d.css({"overflow":"hidden"});
					page.$d.css({"width":window.innerWidth});

				if($(".page-container#products")[0] || $(".page-container#technology")[0]){
					var _kvH = h-50-122;
					page.$k.css({"height":_kvH});
				}else{
					page.$k.css({"width":w});
				}

				if(page.breakFlg){
					page.breakFlg = false;
					// $("html,body").animate({scrollTop:0},10);

					page.update();
				}
			}



		}

	};

	/* FUNCTION
	========================================================================================*/

	var pararax = {
		$p : $("#page-body-container"),
		$s : $(".section-container"),
		paraStart : new Array(),
		AMOUNT : 2,
		s : {
			$t    : new Array,
			timer : [],
		},
		init:function($target){
			pararax.$p.css({"padding-top":h/5});
			pararax.$s.css({"margin-bottom":0});
		},
		update:function($parent,inc){

			for(var i=0; i < $parent.find(".js__mv").length; i++){
				var t = $parent.find(".js__mv").eq(i),
					parent = {
						$s : (!t.find("#kv-container")[0])?t.parents(".section-container"):t,
						h  : 0,
						p  : 0,
					};



				/* [ 親センテンス情報 ] */
				parent.h = parent.$s.height();
				parent.p = parent.$s.offset().top;

				// var endPoint = parent.p + parent.h;
				var endPoint = t.offset().top + h + parent.h;
				pararax.paraStart[i] = {
					thisPosi:Number(t.offset().top - parent.$s.offset().top) / pararax.AMOUNT,
                    // thisPosi: 100 * t.data("ratio") / pararax.AMOUNT,
					parentPosi:parent.$s.offset().top,
				};


				t.css({
                    "transform" : 'translate3d(0, ' + pararax.paraStart[i].thisPosi + 'px, 0)'
                });

			}

		},
		scroll:function($parent,inc){


			var speed    = (!Useragnt.tablet)? 0.38 : 2.48,
				easeType = (!Useragnt.tablet)?  Power0.easeNone : Power4.easeOut;



			for(var i=0; i < $parent.find(".js__mv").length; i++){
				var t = $parent.find(".js__mv").eq(i);

				if(pararax.paraStart[i].parentPosi + pararax.paraStart[i].thisPosi - h*2 < -inc){
                // if(pararax.paraStart[i].parentPosi - h*2 < -inc){

					// var pi = inc + Number(pararax.paraStart[i].parentPosi + pararax.paraStart[i].thisPosi);

                    var pi = inc + pararax.paraStart[i].parentPosi;


                    // var pi = inc/10;

					var _thisInc = pi * t.data("ratio") / pararax.AMOUNT;

	                // var _thisInc = pi * t.data("ratio");


					t.css({
                        "transform" : 'translate3d(0, ' + _thisInc + 'px, 0)'
					});


				}
			}
		},
		reset : function () {
			
        }
	}

	var productModal = {
		$t    : $("#js__zoom-target"),
		$tr   : $("#js__zoom-trigger"),
		$s    : $("#js__zoom-shadow"),
		$c    : $("#js__zoom-close"),
		$a    : $("#js__zoom-action"),
		c     : 9, //[ 写真を切り替えた階数保存用 ]
		timer : [],
		ZOOMW : 883,
		ZOOMH : 724,
		speed : {
			PH1 : 0.45,
			PH2 : 0.6,
		},
		flg   : false, //[ zoomモーダルが表示されているか判定用 ]
		init : function(){

			TweenLite.set(productModal.$t,{x:0,y:0});

			productModal.$tr.on("click",function(){
				// page.scroll(0,"move-product");
				productModal.open(productModal.speed);
				_modal.flg = true;
			});

			productModal.$c.on("click",function(){

				productModal.close(productModal.speed);
				_modal.flg = false;

			});

			var _path = (LANG == "en")? "../../" : "../";
			for(var i=0; i<=24; i++){
				productModal.$t.find(".product-inner").append('<div class="product-photo"><img src="'+ _path +'assets/img/products/zoom_pf1/photo'+ i +'.png" alt=""></div>')
				if(i==9) productModal.$t.find(".product-inner").children().eq(i).addClass("current");
			}

			var d = Draggable.create($("#js__zoom-drag"), {
				type: "y", //instead of "x,y" or "top,left", we can simply do "rotation" to make the object spinnable!
				throwProps: false, //enables kinetic-based flicking (continuation of movement, decelerating after releasing the mouse/finger)
			})[0];

			d.addEventListener("drag", function(y){
				if(d["y"]<0 || d["y"]>=productModal.$t.height()) return;
				var p = d["y"] / [productModal.$t.height()/2];

				var n = Math.ceil(24*p);
				n = (n>24)?24 : (n<0)?0:n;
				 productModal.$t.children().children().removeClass("current");
				 productModal.$t.children().children().eq(n).addClass("current");

				 productModal.c = n;
			});


		},
		open : function(speed){
			productModal.flg = true;
			var y = page.getStatus($("#body")) + page.$k.height();

			var p = $("#product").offset().top * 2;

			if(y > p){
				p = - $("#product").offset().top;
			}else if(p < -250){
				p = $("#product").offset().top + 250;
			}

			/* ZOOM */
			var tween = new TweenMax.to(productModal.$t, speed.PH1, {
				y:-20,
				ease: Power2.easeOut,
				onComplete:function(){
				var $p = productModal.$t.parents(".photo");

					// console.log(page.inc);

					var tween2 = new TweenMax.to(productModal.$t, speed.PH2, {
						width  : productModal.ZOOMW,
						height : productModal.ZOOMH,
						// x      : [w-productModal.ZOOMW]/2 - $p.offset().top,
						// y      : [h-productModal.ZOOMH]/2 - $p.offset().left,
						x      : [$p.width()-productModal.ZOOMW]/2,
						y      : [$p.height()-productModal.ZOOMH]/2 - 20,
						// position : "fixed",
						ease: Power2.easeIn,
						onComplete:function(){
						},
						onUpdate : function() {
							// var progress = this.progress();
					  //       progress = Math.ceil(progress * 100);
					  //       if(progress > 20){
					  //       	var tween3 = new TweenMax.to(productModal.$t, speed.PH2, {
							// 		y: p,
							// 	});
					  //       }
						}
					});
				}
			});

			/* shadow */
			var tween = new TweenMax.to(productModal.$s, speed.PH1, {
				y       : 120,
				opacity : 0,
				scale   : 0.5,
				ease: Power2.easeOut,
				onComplete:function(){
					var tween2 = new TweenMax.to(productModal.$s, speed.PH2, {
						opacity : 0,
						ease: Power2.easeIn,
					});
					var tween = new TweenMax.to($(".js__zoom-small"), speed.PH2-0.05, {
						scale   : 0.5,
						opacity: 0,
						ease: Power2.easeIn,
					});
					var Htween = new TweenMax.to($("#header"), speed.PH2-0.05, {
						y: -30,
						opacity: 0,
						ease: Power2.easeIn,
						onComplete:function(){
							var Ctween = new TweenMax.to(productModal.$c, speed.PH2-0.05, {
								autoAlpha: 1,
								display:'block',
								ease: Elastic.easeIn.config(2.5, 0.1),
							});
							var Atween = new TweenMax.to(productModal.$a, speed.PH2-0.05, {
								autoAlpha: 1,
								display:'block',
								ease: Elastic.easeIn.config(2.5, 0.1),
							});
						}
					});
				}
			});

			/* hidden */
			var h1ween = new TweenMax.to(page.$k, speed.PH1, {
				width:0,
				overflow: "hidden",
				ease: Power2.easeOut,
				onComplete:function(){
					page.$k.addClass("done");
				}
			});
			var h2ween = new TweenMax.to($("#feature"), speed.PH1, {
				width:0,
				overflow: "hidden",
				ease: Power2.easeOut,
				onComplete:function(){
					$("#feature").addClass("done");
				}
			});
			var h3ween = new TweenMax.staggerTo($(".js__zoom-hidden"), speed.PH1, {
				width:0,
				overflow: "hidden",
				ease: Power2.easeOut,
				onComplete:function(){
					$(".js__zoom-hidden").addClass("done");
				}
			},0.2);
		},
		close : function(speed){

			productModal.flg = false;

			var _change = function($t,MAX){

				if(productModal.c == 9) return false;

				clearTimeout(productModal.timer);
				function currentChange(){
					productModal.timer = setTimeout(function(){
						if(productModal.c > 9){
							productModal.c--;
						}else{
							productModal.c++;
						}
						$t.children().removeClass("current");
						$t.children().eq(productModal.c).addClass("current");
						if(productModal.c == 9){
							clearTimeout(productModal.timer);
						}else{
							currentChange();
						}
					},30);
				}
				currentChange();

			}

			/* ZOOM */
			var tween = new TweenMax.to(productModal.$t, speed.PH1, {
				y:0,
				ease: Power2.easeOut,
				onComplete:function(){
				var $p = productModal.$t.parents(".photo");

					var tween2 = new TweenMax.to(productModal.$t, speed.PH2, {
						width  : "670px",
						height : "550px",
						// x      : [w-productModal.ZOOMW]/2 - $p.offset().top,
						// y      : [h-productModal.ZOOMH]/2 - $p.offset().left,
						x      : 0,
						y      : 0,
						position : "absolute",
						ease: Power2.easeIn,
						onComplete:function(){
						},
						onUpdate : function() {
							var progress = this.progress();
					        progress = Math.ceil(progress * 100);
						}
					});
				}
			});

			_change(productModal.$t.children(),9);




			/* shadow */
			var Ctween = new TweenMax.to(productModal.$c, speed.PH2-0.05, {
				autoAlpha: 0,
				display:'none',
				ease: Power2.easeIn,
			});
			var Atween = new TweenMax.to(productModal.$a, speed.PH2-0.05, {
				autoAlpha: 0,
				display:'none',
				ease: Power2.easeIn,
			});
			var tween = new TweenMax.to(productModal.$s, speed.PH1, {
				y       : 0,
				opacity : 1,
				scale   : 1,
				ease: Power2.easeOut,
				onComplete:function(){
					var tween2 = new TweenMax.to(productModal.$s, speed.PH2, {
						opacity : 1,
						ease: Power2.easeIn,
					});
					var tween = new TweenMax.to($(".js__zoom-small"), speed.PH2-0.05, {
						scale   : 1,
						opacity: 1,
						ease: Power2.easeIn,
					});
					var Htween = new TweenMax.to($("#header"), speed.PH2-0.05, {
						y: 0,
						opacity: 1,
						ease: Power2.easeIn,
						onComplete:function(){

						}
					});
					/* hidden */
					var h1ween = new TweenMax.to($("#kv-container.done"), speed.PH1, {
						width:'calc(100% - 100px)',
						overflow: "visible",
						ease: Power2.easeOut,
						onComplete:function(){
							page.$k.removeClass("done");
						}
					});
					var h2ween = new TweenMax.to($("#feature.done"), speed.PH1, {
						width:'100%',
						overflow: "visible",
						ease: Power2.easeOut,
						onComplete:function(){
							$("#feature").removeClass("done");
						}
					});
					var h4ween = new TweenMax.staggerTo($(".js__zoom-hidden.done"), speed.PH1, {
						width:'100%',
						overflow: "visible",
						ease: Power2.easeOut,
						onComplete:function(){
							$(".js__zoom-hidden").removeClass("done");
							$(".js__zoom-hidden").css({"overflow":""});
						}
					},0.2);
				}
			});

		},
		update : function(){

		}
	};

	var productsKv = {
		k1 : $("#kv-contents #kv-slide1"),
		k2 : $("#kv-contents #kv-slide2"),
		k3 : $("#kv-contents #kv-slide3"),
		init : function(){
			TweenLite.set(productsKv.k1,{ y:-50 });
			TweenLite.set(productsKv.k2,{ autoAlpha: 0, display:'none' });
			TweenLite.set(productsKv.k3,{ autoAlpha: 0, display:'none' });
			setTimeout(function(){
				productsKv.animR();
			},1500);

		},

		animR : function() {
			TweenLite.set(productsKv.k1,{ y:-50 });
			TweenMax.to(productsKv.k1, 1.6, {
				autoAlpha: 1,
				display:'block',
				ease: Power2.easeOut,
			});
			TweenMax.to(productsKv.k1, 3, {
				y: -100,
				ease: Power0.easeNone,
				onUpdate : function() {
					var progress = this.progress();
			        progress = Math.ceil(progress * 100);
			        if(progress > 90){
			        	TweenMax.to(productsKv.k1, 1.6, {
							autoAlpha: 0,
							display:'none',
							ease: Power2.easeOut,
						});
			        }
				},
				onComplete:function(){
					TweenLite.set(productsKv.k2,{ y:0 , x: 0 });
					TweenMax.to(productsKv.k2, 1.6, {
						autoAlpha: 1,
						display:'block',
						ease: Power2.easeOut,
					});
					TweenMax.to(productsKv.k2, 3, {
						x: -50,
						ease: Power0.easeNone,
						onUpdate : function() {
							var progress = this.progress();
					        progress = Math.ceil(progress * 100);
					        if(progress > 90){
					        	TweenMax.to(productsKv.k2, 1.6, {
									autoAlpha: 0,
									display:'none',
									ease: Power2.easeOut,
								});
					        }
						},
						onComplete:function(){
							TweenLite.set(productsKv.k3,{ y:-100 });
							TweenMax.to(productsKv.k3, 1.6, {
								autoAlpha: 1,
								display:'block',
								ease: Power2.easeOut,
							});
							TweenMax.to(productsKv.k3, 3, {
								y: -50,
								ease: Power0.easeNone,
								onUpdate : function() {
									var progress = this.progress();
							        progress = Math.ceil(progress * 100);
							        if(progress > 90){
							        	var tween8 = new TweenMax.to(productsKv.k3, 1.2, {
											autoAlpha: 0,
											display:'none',
											ease: Power2.easeOut,
										});
							        }
								},
								onComplete:function(){
									productsKv.animR();
								}
							});
						}
					});
				}
			});
		},

	}


	var productSolutionsList = {
		$c : $("#solution-index .solution-list"),
		count : 0,
		time : [],
		init :function(){


            productSolutionsList.loop();

            productSolutionsList.$c.slick({
                infinite: false,
                speed: 870,
                arrows:false,
                dots: false,
                slidesToShow: 4,
                slidesToScroll: 4,
                cssEase: 'cubic-bezier(0.785, 0.135, 0.15, 0.86)',
                responsive: [
                    {
                        breakpoint: 760,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            infinite: true,
                            arrows:false,
                        }
                    },
				]
            });

            var slideUpdate = function () {
                var currentSlide =productSolutionsList.$c.slick('slickCurrentSlide') + 1;
                $(".solution-slider-controller .current").text(currentSlide);

            }

            productSolutionsList.$c.on('beforeChange', function(event, slick, currentSlide, nextSlide){

                // console.log(currentSlide);
                var current = nextSlide+1;
                current = (current>3)?1:current;
                var prev = (current!=1)?current-1:3;

                // $solutionSlider.find("li").removeClass('is-prev');
                // $solutionSlider.find("li.no"+prev).addClass('is-prev');

            });

            $('.solution-slider-controller .prev').on('click',function (e) {
                e.preventDefault();
                productSolutionsList.$c.slick('slickPrev');
                slideUpdate();
            });
            $('.solution-slider-controller .next').on('click',function (e) {
                e.preventDefault();
                productSolutionsList.$c.slick('slickNext');
                slideUpdate();
            });


		},
		loop : function () {
            productSolutionsList.count++;

            var t = (productSolutionsList.count%2!=0)?[0,2]:[1,3];

            productSolutionsList.$c.find("li .photo").removeClass("is-hover");

            for(var i=0; i<=t.length; i++){
                productSolutionsList.$c.find("li").eq(t[i]).find(".photo").addClass("is-hover");
            }

            clearTimeout(productSolutionsList.time);

            productSolutionsList.time = setTimeout(function () {
                productSolutionsList.loop();
            },4e3);


        }
	}

	if(productSolutionsList.$c[0]) productSolutionsList.init();

	// $(window).on("load",function(){
	// });
	if(pageType=="scroll"){
        page.init();
		setTimeout(function(){
            page.update();
            page.resize("");
		},2e3);
	}

	if($("#products #kv-container")[0]) productsKv.init();

	if( productModal.$t[0] ) productModal.init();
	$(window).on("resize",function(){
		if(pageType!="scroll") return;
		page.resize("resize");
	});

    var smoothScroll = {

        $c : document.getElementById("document"),

        dir : "next",

        flg : false,

        inc : 0,
        nowInc : 0,
        prevInc : 0,
        // height : page.$f.offset().top + page.$f.innerHeight() - h, // scroll limit
        height : $("#document").height() - h, // scroll limit

        timer : [],

		mode : "trans",

        init : function () {

            // page.scroll(0,"normal");
            // pararax.scroll( smoothScroll.$c,0 );

            $('#body').css({
                "transform" : 'translate3d(0, 0px, 0)'
            });


            smoothScroll.move();


            smoothScroll.$c.addEventListener("wheel",function(e){
                if( productModal.flg || _modal.flg){
                    e.preventDefault();
                	return;
				}
            	// if(productModal.flg) return;

                if( smoothScroll.mode=="trans" ){
                    smoothScroll.height = $("#document").height() - h;
                    e.preventDefault();
                    if(smoothScroll.flg) return;
                    page.scrollFlg = true;

                    var deltaY = (e.deltaY>2)?e.deltaY/1.5:e.deltaY*4;

                    smoothScroll.dir = (deltaY>0)?"next":"prev";

                    deltaY = (smoothScroll.dir=="prev")?deltaY/4:deltaY;

                    smoothScroll.inc -= deltaY;




                }else{
                    smoothScroll.inc = $(window).scrollTop();
				}

            });

            $(document).keyup(function(e){
                if(!page.scrollFlg || device.size == "sp" || productModal.flg || _modal.flg) return;
                // if(device.size =="sp" && _modal.flg) return;
                e.preventDefault();
                if(smoothScroll.flg) return;
                page.scrollFlg = true;
                if(e.keyCode == 40 || e.keyCode == 34 ){
                    // _next();
                    smoothScroll.inc -= 200;
                    smoothScroll.dir = "next";
                }else if(e.keyCode == 38 || e.keyCode == 33){
                    smoothScroll.inc += 200;
                    smoothScroll.dir = "prev";
                }
            });



            $(window).on('resize',function () {

                smoothScroll.height = $("#document").height() - h;
				smoothScroll.nowInc = smoothScroll.getTrans($('#body'));

				if(device.size != "sp") $('html,body').animate({scrollTop:0},0);

                // console.log(smoothScroll.getTrans($('#body')));
            });



        },
        move : function () {

            requestAnimationFrame(smoothScroll.move);

            smoothScroll.mode = (device.size != "sp" && !_modal.flg)?"trans":"def";

            if(!page.scrollFlg || device.size == "sp" || productModal.flg || _modal.flg) return;


            if(smoothScroll.nowInc>0){
                smoothScroll.inc = smoothScroll.nowInc = 0;
                smoothScroll.flg = true;
                smoothScroll.timer = setTimeout(function () {
                    smoothScroll.flg = false;
                },1e3);
            }else if(-smoothScroll.nowInc>smoothScroll.height){
                smoothScroll.inc = smoothScroll.nowInc = -smoothScroll.height;
                smoothScroll.flg = true;
                smoothScroll.timer = setTimeout(function () {
                    smoothScroll.flg = false;
                },1e3);
            }else if(!smoothScroll.flg){
                smoothScroll.prevInc = smoothScroll.nowInc;
                smoothScroll.nowInc += smoothScroll.getInc( (smoothScroll.inc - smoothScroll.nowInc) * 0.08 );

            }

            // if(smoothScroll.inc-smoothScroll.nowInc>-100)
            page.showFlg = true;

			/* [ スクロール量と移動した値の誤差が0.01未満なら処理を止める ] */
            // console.log("trans",smoothScroll.inc-smoothScroll.nowInc);
            // if(smoothScroll.inc-smoothScroll.nowInc>-0.01) smoothScroll.timer = setTimeout(function () {
            //     page.scrollFlg = false;
            // },2e3);


            smoothScroll.trans($("#body,#footer-container"), smoothScroll.nowInc);

        },
        reset : function () {
            smoothScroll.prevInc = smoothScroll.nowInc = smoothScroll.inc = 0;
        },
        trans : function ($t,inc) {


        	// console.log("check",inc);

            page.scroll(inc,"normal");
            pararax.scroll( $t,inc );


            if(!$('.js__mv-first')[0]) return;

            for(var i=0; i<$('.js__mv-first').length; i++){
                var $ft = $(".js__mv-first").eq(i);
                $ft.css({
                    "transform" : 'translate3d(0, ' + -inc*0.8*$ft.data('rate') + 'px, 0)'
                });
            }

            // console.log( -h,inc );

            for(var i=0; i<$('.js__mv-second').length; i++){
                var $st = $(".js__mv-second").eq(i);

                if(-h*1.5<inc){
                    if($st.find(".js__mv-scale")){
                    	var parsent = Math.floor( -inc/(h*1.5)*100 )/100,
							scale = 1.2 - (0.2*parsent);

						// console.log(parsent,scale);
                        $st.find(".js__mv-scale").css({
                            "transform" : 'scale('+ scale +')'
                        });

                        var scaleZ = 1.0 - (0.1*parsent);


                        $("#s-kv-inner").css({
                            "transform" : 'scale('+ scaleZ +')'
                        });


                    }
                }
                $st.css({
                    "transform" : 'translate3d(0, ' + -inc*1.25*$st.data('rate') + 'px, 0)'
                });

            }


        },
        getInc : function(inc){
            var rounded = inc * 1000;
            rounded = Math.round(rounded);
            rounded = rounded / 1000;
			return rounded;
        },
        getTrans:function(t) {
            var s = window.getComputedStyle(t.get(0));
            var m = s.getPropertyValue("-webkit-transform") || s.getPropertyValue("-moz-transform") || s.getPropertyValue("-ms-transform") || s.getPropertyValue("-o-transform") || s.getPropertyValue("transform");
            if (m === 'none') {
                m = 'matrix(0,0,0,0,0)';
            }else{
            	m = Number(m);
			}
            var val = m.match(/([-+]?[\d\.]+)/g);
            return val[14] || val[5] || 0;
        },

    }


    setTimeout(function () {
        smoothScroll.init();
    },1e3);


    // var splitText = function($target){
    //     var text = new SplitText($target, {type:"words,chars"}),
    //         chars = text.chars;
    // }

    // splitText($(".js__split-text"));


	/* -------------------------------------------------------------------

		-- solution page

	------------------------------------------------------------------- */

	var $solutionSlider = $("#solution-slider");

	var solutionPage = {
		init : function () {

            effect.shuffle( $("#s-kv-content").find(".js__shuffle").not(".done"),"show" );

            $("#s-kv-content,.js__flashing-show").addClass("show");

            setTimeout(function () {
                $("#s-kv-container .scroll-down").addClass("show");
                $("#s-kv-content").css({"overflow":"inherit"});
            },2e3);
            setTimeout(function () {
                page.scrollFlg = false;
            },1e3);

        }
	}

	setTimeout(function () {
        solutionPage.init();
    },2e3);

	if($solutionSlider[0]){
        $solutionSlider.slick({
            infinite: true,
            speed: 870,
            arrows:false,
            dots: true,
            cssEase: 'cubic-bezier(0.785, 0.135, 0.15, 0.86)'
        });

        var slideUpdate = function () {
            var currentSlide = $solutionSlider.slick('slickCurrentSlide') + 1;
            $(".solution-slider-controller .current").text(currentSlide);

        }

        $solutionSlider.find("li.no3").addClass('is-prev');
        TweenMax.set($("#solution-slider .slick-active"),{
            "transform": "scale(1.0)",
        });




        $solutionSlider.on('beforeChange', function(event, slick, currentSlide, nextSlide){

            console.log(currentSlide,nextSlide,slick.$list.find(".slick-slide"));
            var current = nextSlide+1;
            current = (current>3)?1:current;
            var prev = (current!=1)?current-1:3;

            $solutionSlider.find("li").removeClass('is-prev');
            $solutionSlider.find("li.no"+prev).addClass('is-prev');

			// var getClass;
            //
			// for( var i=0; i<slick.$list.find(".slick-slide").length; i++ ){
			// 	var $t = slick.$list.find(".slick-slide").eq(i),
			// 		index = $t.data('slick-index');
            //
			// 	if(index == nextSlide){
             //        getClass = $t.attr("class");
			// 	}
            //
            //
            //
			// }

			setTimeout(function () {
                TweenMax.to($("#solution-slider .slick-slide"),0.34,{
                    "transform": "scale(0.6)",
                    ease: Power2.easeOut
                });

                TweenMax.to($("#solution-slider .slick-active"),0.34,{
                    "transform": "scale(1.0)",
                    ease: Power2.easeOut
                });
            },5e1);



        });


        // $solutionSlider.on('afterChange', function(event, slick, currentSlide){
        //     // var rand = Math.floor( Math.random() * 6 ) ;
        //     //
        //     // $solutionSlider.find("li.no"+currentSlide+" .blue-cover >span").eq(rand).addClass('is-active');
        //     // setTimeout(function () {
        //     //     $solutionSlider.find("li.no"+currentSlide+" .blue-cover >span").removeClass('is-active');
        //     // },1e2);
        // });


        $('.solution-slider-controller .prev').on('click',function (e) {
            e.preventDefault();
            $solutionSlider.slick('slickPrev');
            slideUpdate();
        });
        $('.solution-slider-controller .next').on('click',function (e) {
            e.preventDefault();
            $solutionSlider.slick('slickNext');
            slideUpdate();
        });
	}



    if($('#s-kv-container')[0]) $('#s-kv-container').parallax({
        limitX:40,
        limitY:40,
    });


    /* [ ページ内移動 マウス　PC用 ]
    ------------------------------------*/



	// var wheel = {
	// 	prevTimestanp : 0,
	// }
    //
	// $(document).on(MOUSEWHEEL,function(e){
	// 	// if(winSize.type=="sp") return;
	// 	if(pageType!="scroll") return;
	// 	delta = e.originalEvent.deltaY ? -(e.originalEvent.deltaY) : e.originalEvent.wheelDelta ? e.originalEvent.wheelDelta : -(e.originalEvent.detail);
    //
     //    page.scrollFlg = true;
    //
	// 	// console.log(device.size);
	// 	if(device.size !="sp" && !_modal.flg){
    //
	// 		e.preventDefault();
    //
    //
	// 		// if(e.timeStamp - wheel.prevTimestanp < 50 && Useragnt.safari
	// 		// 	|| e.timeStamp - wheel.prevTimestanp < 50 && Useragnt.ie
	// 		// 	|| e.timeStamp - wheel.prevTimestanp < 50 && Useragnt.edge
	// 		// 	||  e.timeStamp - wheel.prevTimestanp < 50 && Useragnt.firefox ) return;
	// 		// wheel.prevTimestanp = e.timeStamp;
    //
    //
	// 		// page.scroll(delta/1.1,"normal");
    //
    //
	// 		if (delta < 0){
	// 			if(e.originalEvent.wheelDelta > -35) return false;
	// 			page.dir = "next";
	// 			//下にスクロールした場合の処理
	// 			// _next();
	// 		} else if (delta > 0){
	// 			if(e.originalEvent.wheelDelta < 35) return false;
	// 			page.dir = "prev";
	// 			//上にスクロールした場合の処理
	// 			// _prev();
	// 		}
    //
	// 	}
    //
	// });
    //
	// $(window).on("scroll",function(){
    //
     //    page.scrollFlg = true;
	// 	/* SP */
	// 	if($("#top,#en")[0]) if( device.size == "sp" ) header.scroll(page.$k.outerHeight(), $(window).scrollTop() );
	// })
    //
	// /* [ キーボード操作 ] */
	// $(document).keyup(function(e){
	// 	if(pageType!="scroll" || _modal.flg) return;
     //    page.scrollFlg = true;
	// 	e.preventDefault();
	// 	if(e.keyCode == 40 || e.keyCode == 34 ){
	// 		// _next();
	// 		page.scroll(-200,"normal");
	// 	}else if(e.keyCode == 38 || e.keyCode == 33){
	// 		// _prev();
	// 		page.scroll(200,"normal");
	// 	}
	// });
    //
	// /* [ ページ内移動 Tablet用 ]
	// ------------------------------------*/
    //
	// if(Useragnt.ie || Useragnt.edge){
	// 	var supportTouch = Useragnt.ie || Useragnt.edge;
    //
	// 	// var touchStartEvent = 'pointerdown';
	// 	// var touchMoveEvent = 'pointermove';
	// 	var touchStartEvent = 'MSPointerDown';
	// 	var touchMoveEvent = 'MSPointerMove';
	// }else{
	// 	var supportTouch = 'ontouchstart' in window;
    //
	// 	var touchStartEvent = supportTouch ? 'touchstart' : 'mousedown';
	// 	var touchMoveEvent = supportTouch ? 'touchmove' : 'mousemove';
	// 	var touchEndEvent = supportTouch ? 'touchend' : 'mouseup';
	// }
    //
    //
	// if(supportTouch){
    //
	// 	var PosY,
	// 		endPosY;
	// 	function Position(e){
	// 		var x = e.originalEvent.touches[0].pageX;
	// 		var y = e.originalEvent.touches[0].pageY;
	// 		x = Math.floor(x);
	// 		y = Math.floor(y);
	// 		var pos = {'x':x , 'y':y};
	// 		return pos;
	// 	}
    //
    //
	// 	var touchStartEvent = supportTouch ? 'touchstart' : 'mousedown';
	// 	var touchMoveEvent = supportTouch ? 'touchmove' : 'mousemove';
	// 	var touchEndEvent = supportTouch ? 'touchend' : 'mouseup';
    //
	// 	var touchScInc = 0,
	// 		touchPrevScInc = 0,
	// 		touchTimer;
    //
	// 	$(document).on(touchStartEvent, function(e){
	// 		if(pageType!="scroll" && !_modal.flg) return;
     //        page.scrollFlg = true;
	// 		// if(winSize.type=="sp") return;
	// 		// e.preventDefault();
	// 		var pos = Position(e);
	// 		PosY = pos.y;
    //
	// 	});
	// 	$(document).on(touchMoveEvent, function(e){
    //
    //
    //
	// 		if(pageType!="scroll") return;
	// 		// if(winSize.type=="sp") return;
	// 		if(device.size !="sp"  && !_modal.flg){
	// 			e.preventDefault();
	// 			var pos = Position(e);
	// 			endPosY = pos.y;
    //
	// 		}
    //
    //
	// 		// console.log("touch move");
    //
	// 	});
    //
    //
    //
    //
	// 	$(document).on(touchEndEvent, function(e){
	// 		// console.log("touch END");
    //
    //
	// 		if(pageType!="scroll") return;
	// 		// if(winSize.type=="sp") return;
	// 		if(device.size !="sp"  && !_modal.flg){
    //
	// 			if(endPosY < PosY){
	// 				page.dir = "next";
	// 				//上にスクロールした場合の処理
	// 				page.scroll([-PosY+endPosY]*3,"normal");
	// 			}else{
	// 				page.dir = "prev";
	// 				//下にスクロールした場合の処理
	// 				page.scroll([-PosY+endPosY]*3,"normal");
	// 			}
	// 		}
	// 	});
    //
    //
	// }



}