/* go back to top before refresh */
$(window).on('beforeunload', function() {
    $(window).scrollTop(0);
});

$(window).load(function() {

    /* JQUERY VARS*/
    var $ghost = $('.ghost'),
        $enter_subtitle = $('.enter-subtitle'),
        $ground_top = $('.ground-top'),
        $ground_bottom = $('.ground-bottom'),
        $shopping_cart = $('.shopping-cart'),
        $shopping_cart_container = $('.shopping-cart-container'),
        $supermarket_posters_container = $('.supermarket-posters-container'),
        $supermarket_machine = $('.supermarket-machine'),
        $supermarket_machine_price = $('.supermarket-machine-price'),
        $flashlight = $('.flashlight'),
        $party_light = $('.party-light'),
        $guitar = $('.guitar'),
        $postcard_container = $('.postcard-container'),
        $postcard_message_C = $('.postcard-message'),
        $postcard_message_I = $('#postcard-message'),
        $postcard_final_C = $('.postcard-final'),
        $postcard_final_I = $('#postcard-final'),
        $postcard_submit = $('.postcard-submit'),
        $postcard_email = $('#postcard-email'),
        $postcard_date = $('.postcard-date'),
        $postcard_sub_container = $('.postcard-sub-container.after-message'),
        $mailbox_lid = $('.mailbox-lid'),
        $mailbox_arrow = $('.mailbox-arrow');


    /* OTHER VARS */
    var curScroll = 0,
        prevScroll = 0,
        insideMuseum = false,
        insideCemetery = false,
        insideSupermarket = false,
        ghostRotationTimeout,
        lastColor = null,
        countProductsPrice = 0,
        lightsInterval = null,
        postcardZoomInFlag = true,
        postcardZoomOutFlag = true,
        navCurColor = "#f9b794";

    navLinkInit();
    onLoadElements();

    /* ---------- COMMON ----------*/

    function onLoadElements() {

        setTimeout(function() {
            $('.loading').addClass('on'); // ufo
            $('.main-moon').addClass('on'); // moon
            $('.intro-stars.moon').addClass('on');

            setTimeout(function() {

                $('.intro-clouds').addClass('on'); // clouds
                $('.hand-scroll-container').addClass('on'); // hand
                $('.hand-scroll').addClass('on'); // hand

                setTimeout(function() {
                    $('body').removeClass(); // allow scroll

                    initSkrollr();
                    $('.container').addClass('on');
                    $('.intro-stars.moon').addClass('reset');
                }, 1000);
            }, 1500);
        }, 100);
    }

    function initSkrollr() {
        var curS = 0;

        var s = skrollr.init({
            constants: {
                introtext: 500,
                moonstart: 1500,
                moonend: 4000,
                introclouds: 3000
            },
            render: function(data) {
                //Log the current scroll position.
                $('#info').text(data.curTop);
                curS = data.curTop;
            },
            smoothScrolling: false
        });

        skrollr.menu.init(s, {
            //skrollr will smoothly animate to the new position using `animateTo`.
            animate: true,

            //The easing function to use.
            easing: 'sqrt',

            //Multiply your data-[offset] values so they match those set in skrollr.init
            scale: 1,

            //How long the animation should take in ms.
            duration: function(currentTop, targetTop) {
                return 3000;
            },

            complexLinks: false
        });
    }

    function playAudio(source) {
        var audio = new Audio(source);
        audio.play();
    }

    /* SCROLL */
    $(window).scroll(function() {
        curScroll = $(this).scrollTop();

        /* GHOST*/
        ghostOnSroll();

        /* check nav position */
        activeNavLinks();

        prevScroll = curScroll;
    });

    /* NAVIGATION */

    function navLinkInit() {

        activeNavLinks();

        var arrayImgs = [
            'home',
            'highlightes',
            'events',
            'updates',
            'about',
            'contact',
            'credits'
        ];

        for (var i = 0; i < arrayImgs.length; i++) {
            var img = '.navigation-links li:nth-child(' + (i + 1) + ') .nav-img';
            $(img).css('background-image', 'url(img/navigation/' + arrayImgs[i] + '.png)');
        }
    }

    function checkNavLinkPos(firstValue, SecondValue) {
        if (curScroll >= (firstValue - 500) && curScroll < (SecondValue - 500)) {
            return true;
        }
        return false;
    }

    function activeNavLinks() {

        var array = [
            [0, 17300],
            [17300, 27000],
            [27000, 43600],
            [43600, 58300],
            [58300, 63100],
            [63100, 68900],
            [68900, 90000]
        ];

        var arrayColors = [
            '#f9b794',
            '#911212',
            '#469d42',
            '#4e4e4e',
            '#eccd00',
            '#b7dff7',
            '#0c111f'
        ];

        for (var i = 0; i < array.length; i++) {
            if (checkNavLinkPos(array[i][0], array[i][1])) {
                var element = '.navigation-links li:nth-child(' + (i + 1) + ') .nav-dot';
                $('.nav-dot').removeClass("active");
                $('.nav-dot').removeAttr('style');
                $(element).addClass('active');
                $(element).css('background-color', arrayColors[i]);
                navCurColor = arrayColors[i];
                break;
            }
        }
    }

    $('.navigation-links li').hover(function() {
        $('.navigation-links li').find('.nav-dot.active').css('background-color', 'white');
    }, function() {
        $('.navigation-links li').find('.nav-dot.active').css('background-color', navCurColor);
    });

    /* COLLISIONS */
    window.setInterval(function() {

        /* IS AT MUSEUM DOOR */
        checkGhostCollision('#hidden-door-museum', insideMuseum, '.highlightes-experience', '.museum-2-door');
        //checkPlatesCollision();

        /* IS AT SUPERMARKET DOORS */
        checkGhostCollision('.hidden-door-supermarket', insideSupermarket, '.events', '#sm-door-left.supermarket-door');
        checkGhostCollision('.hidden-door-supermarket.right', insideSupermarket, '.events', '#sm-door-left-right.supermarket-door');

        /* PRODUCTS COLLISION */
        productsCollision('.events-container.programming', '.product.cereal-red');
        productsCollision('.events-container.web-programming', '.product.icecream-yellow');
        productsCollision('.events-container.software', '.product.juice-orange');
        productsCollision('.events-container.knowledge', '.product.cookie-box');

        /* SUPERMARKET MACHINE */
        machineCollision();

        /* SHOPPING CART ON OR OFF*/
        shoppingCartCollision();

        /* IS AT CEMETERY ENTRANCE */
        checkGhostCollision('#hidden-door-cemetery', insideCemetery, '.updates', 'nothingyet');

        /* FLASHLIGHT COLLISION */
        flashlightCollision();

        /* GRAVE COLLISION */
        checkGraveCollision();

        /* IS AT PARTY */
        checkPartyCollision();

        /* IS AT HOUSE ENTRANCE */
        houseCollision();

        /* CHECK GROUND */
        checkGroundColor();


    }, 200);

    function collision($div1, $div2) {
        var x1 = $div1.offset().left;
        var y1 = $div1.offset().top;
        var h1 = $div1.outerHeight(true);
        var w1 = $div1.outerWidth(true);
        var b1 = y1 + h1;
        var r1 = x1 + w1;
        var x2 = $div2.offset().left;
        var y2 = $div2.offset().top;
        var h2 = $div2.outerHeight(true);
        var w2 = $div2.outerWidth(true);
        var b2 = y2 + h2;
        var r2 = x2 + w2;

        if (b1 < y2 || y1 > b2 || r1 < x2 || x1 > r2) return false;
        return true;
    }

    function ghostOnSroll() {
        if (curScroll > prevScroll && curScroll > 13500 && curScroll < 70000) {
            ghostImg('img/ghost/ghostV2.png');
            $ghost.find('.flashlight').removeAttr('id');
            $shopping_cart.removeAttr('id');
            $shopping_cart_container.removeAttr('id');
            $shopping_cart_container.find('.products-container').removeClass('reverse');
            $shopping_cart_container.find('.product').removeClass('reverse');

            // rotation
            $ghost.addClass('rotate-right');
            $ghost.removeClass('rotate-left');
        } else if (curScroll > 13500 && curScroll < 70000) {
            ghostImg('img/ghost/ghostV2reverse.png');
            $ghost.find('.flashlight').attr('id', 'flashlight-reverse');
            $shopping_cart.attr('id', 'shopping-cart-reverse');
            $shopping_cart_container.attr('id', 'shopping-cart-container-reverse');
            $shopping_cart_container.find('.products-container').addClass('reverse');
            $shopping_cart_container.find('.product').addClass('reverse');

            // rotation
            $ghost.addClass('rotate-left');
            $ghost.removeClass('rotate-right');
        }

        clearTimeout(ghostRotationTimeout);
        ghostRotationTimeout = setTimeout(function() {
            $ghost.removeClass('rotate-left');
            $ghost.removeClass('rotate-right');
        }, 150);
    }

    function ghostImg(imageUrl) {
        $ghost.css('background-image', 'url(' + imageUrl + ')');
    }

    function flashlightImg(imageUrl) {
        $flashlight.css('background-image', 'url(' + imageUrl + ')');
    }
    
 //changing to show highlightes on page loading
  if (!insideMuseum) {
                    enterBuilding('.museum-container', '.museum-interior-container', $(this));
                    insideMuseum = true;
                } else {
                    leaveBuilding('.museum-container', '.museum-interior-container', $(this));
                    insideMuseum = false;
                }
                
                if (!insideCemetery) {
                    enterBuilding('.cemetery-container', '.cemetery-interior-container', $(this));
                    insideCemetery = true;
                } else {
                    leaveBuilding('.cemetery-container', '.cemetery-interior-container', $(this));
                    insideCemetery = false;
                }
                
                if (!insideSupermarket) {
                    enterBuilding('.supermarket-container', '.supermarket-interior-container', $(this));
                    $supermarket_posters_container.addClass('on');
                    insideSupermarket = true;
                    //playAudio('audio/supermarket_main.mp3');
                } else {
                    leaveBuilding('.supermarket-container', '.supermarket-interior-container', $(this));
                    $supermarket_posters_container.removeClass('on');
                    insideSupermarket = false;
                }
                
            $postcard_container.removeClass('zoom-out');
            $postcard_container.addClass('zoom-in');

            $mailbox_lid.addClass('mailbox-lid-open');
            $mailbox_arrow.addClass('mailbox-arrow-open');

            postcardZoomOutFlag = false;

                

/*
    $enter_subtitle.click(function(e) {
        switch ($(this).attr('id')) {
            case 'at-museum':
                if (!insideMuseum) {
                    enterBuilding('.museum-container', '.museum-interior-container', $(this));
                    insideMuseum = true;
                } else {
                    leaveBuilding('.museum-container', '.museum-interior-container', $(this));
                    insideMuseum = false;
                }
                break;

            case 'at-cemetery':
                if (!insideCemetery) {
                    enterBuilding('.cemetery-container', '.cemetery-interior-container', $(this));
                    insideCemetery = true;
                } else {
                    leaveBuilding('.cemetery-container', '.cemetery-interior-container', $(this));
                    insideCemetery = false;
                }
                break;
            case 'at-supermarket':
            case 'at-supermarket-out':
                if (!insideSupermarket) {
                    enterBuilding('.supermarket-container', '.supermarket-interior-container', $(this));
                    $supermarket_posters_container.addClass('on');
                    insideSupermarket = true;
                    //playAudio('audio/supermarket_main.mp3');
                } else {
                    leaveBuilding('.supermarket-container', '.supermarket-interior-container', $(this));
                    $supermarket_posters_container.removeClass('on');
                    insideSupermarket = false;
                }
                break;
            default:
                break;
        }
    });

*/
    function enterBuilding(container, interiorContainer, enterSubtitle) {
        $(container).addClass('on');
        $(interiorContainer).addClass('on');
        $enter_subtitle.addClass('on');
    }

    function leaveBuilding(container, interiorContainer, enterSubtitle) {
        $(container).removeClass('on');
        $(interiorContainer).removeClass('on');
        $enter_subtitle.removeClass('on');
    }

    function checkGhostCollision(hiddenDoor, inside, addSubtitleTo, openDoor) {
        var ghostCollision = collision($ghost, $(hiddenDoor));

        if (ghostCollision) {
            if (inside) {
                addSubtitleToCheck(hiddenDoor, addSubtitleTo, 'on');
            } else {
                if (openDoor == '#sm-door-left.supermarket-door') {
                    $('#sm-door-right.supermarket-door').addClass('open');
                }
                $(openDoor).addClass('open');
            }
            addSubtitleToCheck(hiddenDoor, addSubtitleTo, 'collision');

        } else {
            if (!inside) {

                if (openDoor == '#sm-door-left.supermarket-door') {
                    $('#sm-door-right.supermarket-door').removeClass('open');
                }
                $(openDoor).removeClass('open');
                removeSubtitleToCheck(hiddenDoor, addSubtitleTo, 'on');
            }
            removeSubtitleToCheck(hiddenDoor, addSubtitleTo, 'collision');
        }
    }

    function addSubtitleToCheck(hiddenDoor, addSubtitleTo, classToAdd) {
        if (hiddenDoor == '.hidden-door-supermarket') {
            $(addSubtitleTo).find('#at-supermarket.enter-subtitle').addClass(classToAdd);
        } else if (hiddenDoor == '.hidden-door-supermarket.right') {
            $(addSubtitleTo).find('#at-supermarket-out.enter-subtitle').addClass(classToAdd);
        } else {
            $(addSubtitleTo).find('.enter-subtitle').addClass(classToAdd);
        }
    }

    function removeSubtitleToCheck(hiddenDoor, addSubtitleTo, classToAdd) {
        if (hiddenDoor == '.hidden-door-supermarket') {
            $(addSubtitleTo).find('#at-supermarket.enter-subtitle').removeClass(classToAdd);
        } else if (hiddenDoor == '.hidden-door-supermarket.right') {
            $(addSubtitleTo).find('#at-supermarket-out.enter-subtitle').removeClass(classToAdd);
        } else {
            $(addSubtitleTo).find('.enter-subtitle').removeClass(classToAdd);
        }
    }


    /* ---------- ELEMENTS ----------*/

    function checkGroundColor() {
        var colMuseum = collision($ghost, $('#museum-1-interior'));
        var colMuseum2 = collision($ghost, $('#museum-2-interior'));
        var colMuseum3 = collision($ghost, $('#museum-3-interior'));
        var colSuper = collision($ghost, $('.supermarket-wall-interior'));
        var colCemeteryCenter = collision($ghost, $('.cemetery-wall-interior.wall-center'));
        var colCemeteryLeft = collision($ghost, $('.cemetery-wall-interior.wall-left'));
        var colCemeteryRight = collision($ghost, $('.cemetery-wall-interior.wall-right'));
        var colParty = collision($ghost, $('.party-bg'));

        if ((colMuseum || colMuseum2 || colMuseum3) && insideMuseum) {
            changeGroundColor('museum');
            lastColor = 'museum';
        } else if (colSuper && insideSupermarket) {
            changeGroundColor('supermarket');
            lastColor = 'supermarket';
        } else if ((colCemeteryLeft || colCemeteryCenter || colCemeteryRight) && insideCemetery) {
            changeGroundColor('cemetery');
            lastColor = 'cemetery';
        } else if (colParty) {
            changeGroundColor('party');
            lastColor = 'party';
        } else {
            resetBackgroundColor(lastColor);
        }
    }

    function changeGroundColor(atColor) {
        $ground_top.addClass(atColor);
        $ground_bottom.addClass(atColor);
    }

    function resetBackgroundColor(atColor) {
        $ground_top.removeClass(atColor);
        $ground_bottom.removeClass(atColor);
    }

    /* ---------- SUPERMARKET ----------*/

    function machineCollision() {
        var machineCol = collision($ghost, $supermarket_machine);

        if (machineCol && insideSupermarket) {
            $shopping_cart_container.find('.products-container').addClass('on');
            $supermarket_machine_price.addClass('on');
            $supermarket_machine.find('.products-container').removeClass('on');
        } else {
            $shopping_cart_container.find('.products-container').removeClass('on');
            $supermarket_machine_price.removeClass('on');
            $supermarket_machine.find('.products-container').addClass('on');
        }
    }

    function shoppingCartCollision() {
        var cartCollision = collision($shopping_cart, $('#hidden-supermarket'));

        if (cartCollision && insideSupermarket) {
            $shopping_cart_container.addClass('on');
            $ghost.addClass('under');
        } else {
            $shopping_cart_container.removeClass('on');
            $ghost.removeClass('under');
        }
    }

    function productsCollision(container, product) {

        var productCol = collision($ghost, $(container));

        if (productCol && insideSupermarket && !($(product).hasClass('on'))) {
            $(product).addClass('on');

            if (product == '.product.cereal-red') {
                countProductsPrice += 1;
            } else if (product == '.product.icecream-yellow') {
                countProductsPrice += 3;
            } else if (product == '.product.juice-orange') {
                countProductsPrice += 2;
            }
            $supermarket_machine_price.text('$' + countProductsPrice + '.00');
        }
    }


    /* ---------- CEMETERY ----------*/

    function checkGraveCollision() {
        var graveCol = false;

        // 11 updates
        for (var i = 0; i < 11; i++) {
            projectNumber = '.hidden-grave.project-' + (i + 1);

            graveCol = collision($ghost, $(projectNumber));

            if (graveCol && insideCemetery) {
                $(projectNumber).closest('.grave-container').find('.grave-bg').addClass('on');
                //playAudio("audio/grave_up_down_06.wav");
            } else {
                $(projectNumber).closest('.grave-container').find('.grave-bg').removeClass('on');
            }
        }
    }

    function flashlightCollision() {
        var flashCol = collision($ghost, $('.hidden-flashlight'));

        if (flashCol) {
            $flashlight.removeClass('off');
            $flashlight.addClass('on');
        } else {
            if ($flashlight.hasClass('on')) {
                $flashlight.removeClass('on');
                $flashlight.addClass('off');

                setTimeout(function() {
                    $flashlight.removeClass('off');
                }, 350);
            }
        }
    }

    /* ---------- PARTY ----------*/

    function checkPartyCollision() {
        var partyCol = collision($ghost, $('.hidden-party-collision'));

        addRemoveGuitar(partyCol); //adds or removes guitar
        addSpeakers(partyCol); //adds speakers
    }

    function addRemoveGuitar(guitarCol) {
        if (guitarCol) {
            $guitar.addClass('on');
        } else {
            $guitar.removeClass('on');
        }
    }

    function addSpeakers(speakersCol) {
        if (speakersCol) {
            $('.small-speakers-container').addClass('on');
            $('.big-speakers-container').addClass('on');
            $('.note').addClass('resume');
            $('.guitar-amp').addClass('on');
            $('.guitar-on-btn').addClass('on');
            lightsRandomInterval();
        } else if (!speakersCol && $('.guitar-amp').hasClass('on')) {
            lightsClearInterval();
            $('.guitar-on-btn').removeClass('on');
        }
    }

    function lightsRandomInterval() {
        if (lightsInterval == null) {
            lightsInterval = setInterval(function() {
                if ($party_light.hasClass('on')) {
                    $party_light.removeClass('on');
                } else {
                    $party_light.addClass('on');
                }
            }, 1000);
        }
    }

    function lightsClearInterval() {
        clearInterval(lightsInterval);
        lightsInterval = null;

        if ($party_light.hasClass('on')) {
            $party_light.removeClass('on');
        }
    }

    /* ---------- HOUSE ----------*/

    function houseCollision() {

        var houseCol = collision($ghost, $('.house-hidden-door'));

        if (houseCol && postcardZoomOutFlag) {
            $postcard_container.removeClass('zoom-out');
            $postcard_container.addClass('zoom-in');

            $mailbox_lid.addClass('mailbox-lid-open');
            $mailbox_arrow.addClass('mailbox-arrow-open');

            postcardZoomOutFlag = false;

        } else if (!houseCol && $postcard_container.hasClass('zoom-in') && postcardZoomInFlag) {
            $postcard_container.removeClass('zoom-in');
            $postcard_container.addClass('zoom-out');
            setTimeout(function() {
                $mailbox_lid.removeClass('mailbox-lid-open');
                $mailbox_arrow.removeClass('mailbox-arrow-open');
            }, 1700);

            postcardZoomInFlag = false;
        }

        $postcard_container.on('webkitAnimationEnd animationend', function(event) {
            if ($postcard_container.hasClass('zoom-in')) {
                postcardZoomInFlag = true;
            } else if ($postcard_container.hasClass('zoom-out')) {
                postcardZoomOutFlag = true;
            }
        });
    }


    /* POSTCARD DATE */
    var d = new Date();
    var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
        "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ];



    /* POSTCARD SUBMIT */
    $postcard_message_C.click(function(event) {
        $postcard_message_C.removeClass('on');
        $postcard_message_I.attr("placeholder", "MESSAGE");
    });

    $postcard_final_C.click(function(event) {
        $postcard_final_C.removeClass('on');
        $postcard_final_I.attr("placeholder", "University ID");
    });

    $postcard_submit.click(function(event) {

        if ($(this).hasClass('try')) {
            $postcard_sub_container.removeClass('error');
            $(this).removeClass('try');
            $postcard_submit.text('Send');
        } else if ($(this).hasClass('new-message')) {
            $postcard_sub_container.removeClass('success');
            $(this).removeClass('new-message');
            $postcard_message_I.val('');
            $postcard_final_I.val('');
            $postcard_submit.text('Send');
        } else {
            if (!$.trim($postcard_message_I.val()) && !$.trim($postcard_email.val())) {
                messageError();
                emailError();
            } else if (!$.trim($postcard_message_I.val())) {
                messageError();
            } else if (!$.trim($postcard_final_I.val())) {
                emailError();
            } else {
                sendMail();
            }
        }
    });

    function messageError() {
        $postcard_message_C.addClass('on');
        $postcard_message_I.attr("placeholder", "Are you sure you want to send a blank message to Admin? you have to write something or he'll get sad :(");
    }

    function emailError() {
        $postcard_final_C.addClass('on');
        $postcard_final_I.attr("placeholder", "And he also needs your University ID");
    }

    function successErrorMessage(submitMessage, submitClass, message) {
        $postcard_submit.text(submitMessage);
        $postcard_submit.addClass(submitClass);
        $postcard_sub_container.addClass(message);
    }

    function sendMail() {
        var data = {
            message: $postcard_message_I.val()
        };
        $.ajax({
            type: "POST",
            url: "contact-db.php",
            data: data,
            beforeSend:function(){$("#loader").show();},
            success: function(data) {
				$("#loader").hide();
                if(data.indexOf("success")!=-1){
				notify("Message Successfully Sent","success","2000","true");
                successErrorMessage('Write again', 'new-message', 'success');
			}
			else{
			notify(data,"error","2000","true");
			}
            },
            error: function() {
                $('.postcard-sent-message').text('Unfortunately your message wasn\'t sent. Please try again later or click the business mail button on the top right.');
                successErrorMessage('Try again', 'try', 'error');
            }
        });
    }


});
