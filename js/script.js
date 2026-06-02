$(function () {
    $('#menu').mmenu();
    $('.nav li').hover(function () {
        $('ul:first', this).stop().fadeIn();
    }, function () {
        $('ul', this).hide();
    });
    $('#searchformmobile').click(function () {
        $('.box-search-mobile').stop().slideToggle();
        return false;
    });
    $('.icon-cart').click(function () {
        window.location = '/addcart/';
    });
    $('.selectcat').click(function () {
        $('.categorypage').stop().slideToggle();
    });
    $('.btn-show-search-mobile').click(function () {
        $('.box-search-mobile-1').stop().slideToggle();
        return false;
    })
    $('.item-tab-detail-product').click(function () {
        $('.item-tab-detail-product').removeClass('active');
        $(this).addClass('active');
        $('.content-tab-pro').hide();
        $('#' + $(this).attr('data-tab')).stop().fadeIn();
    });
    $('.item-tab-product').click(function () {
        $('.item-tab-product').removeClass('active-tab');
        $(this).addClass('active-tab');
        $('.content-tab-pro').hide();
        $('#' + $(this).attr('data-tab')).stop().slideDown();
    });
    var divi = 0;
    $('.content-detail table').each(function () {
        var me = $(this);
        divi++;
        $('<div id ="div-scroll-' + divi + '" class="div-scroll" />').insertBefore(me);
        $("#div-scroll-" + divi).html(me);
    });
    $(".menu-click-down").click(function () {
        $(".nav").stop().slideToggle(0);
    });
    $("#button-btt").click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });


    $(window).scroll(function (event) {
        if ($(this).scrollTop() > 500) {
            $("#button-btt").fadeIn();
        } else {
            $("#button-btt").fadeOut();
        }
    });


    var menubar = $('.header').position();
    $(window).scroll(function (event) {
        if ($(this).scrollTop() > (menubar.top + 200)) {
            $('.header').addClass("header-fixed");
        } else {
            $('.header').removeClass("header-fixed");
        }
    });



    /*Disable full page*/
    /*
     $(".content-detail, .cat-content").on("contextmenu", function (e) {
     return false;
     });
     
     $('body').bind('cut copy paste', function (e) {
     e.preventDefault();
     });
     */

});
$.fn.digits = function () {
    return this.each(function () {
        $(this).text($(this).text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1."));
    });
};
$.fn.dinhdangso = function () {
    return this.each(function () {
        $(this).html($(this).html().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1."));
    });
};

(function ($) {
    $.fn.extend({
		
        checkNull: function () {
            var obj = this;
            var ok = true;
            $('.notNull', obj).each(function () {
                if ($(this).val() == '') {
                    $(this).addClass('error');
                    ok = false;
                }else{
					$(this).removeClass('error');
				}
            });
			
            return ok;
        },
		
		checkEmail: function () {
            var obj = this;
            var ok = true;
            $('.checkEmail', obj).each(function () {
                if ($(this).val() != '') {
					email = $(this).val();
					var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
					if(!regex.test(email)) {
						ok = false;
						alert("Email không hợp lệ !");
						$(this).addClass('error');
					}
                }
            });
            return ok;
        },
		
		
		checkPhone: function () {
            var obj = this;
            var ok = true;
            $('.checkPhone', obj).each(function () {
                if ($(this).val() != '') {
					phone = $(this).val();
					ok = false;
					phone = phone.replace('(+84)', '0');
					phone = phone.replace('+84', '0');
					phone = phone.replace('0084', '0');
					phone = phone.replace(/ /g, '');
					if (phone != '') {
						var firstNumber = phone.substring(0, 2);
						if ((firstNumber == '09' || firstNumber == '08' || firstNumber == '07' || firstNumber == '03' || firstNumber == '05' || firstNumber == '02') && phone.length == 10) {
							if (phone.match(/^\d{10}/)) {
								ok = true;
							}
						}
					}
					if(ok == false) {
						alert("Số điện thoại không hợp lệ !");
						$(this).addClass('error');
					}
                }
            });
            return ok;
        },
		
		checkNumber: function () {
            var obj = this;
            var ok = true;
            $('.checkNumber', obj).each(function () {
                if ($(this).val() != '') {
					var value_to_check = $(this).val();
					var float= /^\s*(\+|-)?((\d+(\.\d+)?)|(\.\d+))\s*$/;
					if (float.test(value_to_check)) {
						ok == true;
					}else {
						alert("Số không hợp lệ !");
						$(this).addClass('error');						
						ok == false;
					}
                }
            });
            return ok;
        },
		
		
        frmSubmit: function () {
            var obj = this;
            obj.submit(function () {
				
				okNull = $(this).checkNull();
				okMail = $(this).checkEmail();
				okPhone = $(this).checkPhone();
				okNumber = $(this).checkNumber();
				
                if (okNull == true && okMail == true && okPhone == true &&  okNumber == true  ) {


                    grecaptcha.ready(function () {
                        grecaptcha
                            .execute(
                                "6LfjBJYUAAAAAI0asWRk5RqRNItb4l2H7jKR_YV9",
                                { action: "contact_request" }
                            )
                            .then(function (token) {
                                $("#token").val(token);
								
								obj.ajaxSubmit({
									
										beforeSubmit: function (a, f, o) {
											obj.fadeTo('fast', 0.3);
											o.dataType = 'html';
										},
										success: function (data) {
											obj.fadeTo('fast', 1);
											if (data == 1) {
												obj.find(".msgbox").removeClass("form-error");

												obj[0].reset();
												obj.find(".msgbox").html(obj.attr('data-success'));
												obj.find(".msgbox").addClass("form-success");
												obj.find(".captcha_message").fadeOut();

												window.location.href = obj.attr('data-redirect');

											} else if (data == -1) {
												obj.find(".msgbox").addClass("form-error");
												obj.find(".msgbox").html(obj.attr('data-captcha'));
											} else {

												obj.find(".msgbox").addClass("form-error");
												obj.find(".msgbox").html(data);
											}

										}
									});								
																	

                            });
                    });
					

				

                } else {
					
					alert(obj.attr('data-alert'));                    
					
                }
                return false;
            });
        }
    });
    $(document).ready(function () {
        $('#regform').frmSubmit();
        $('#regform2').frmSubmit();

        $('#contactform').frmSubmit();
        $('#dailyform').frmSubmit();

        $('#news_regform').frmSubmit();
        $('#pop_regform').frmSubmit();


    });
})(jQuery);


function IsEmail(email) {
  var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if(!regex.test(email)) {
    return false;
  }else{
    return true;
  }
}

function checkPhoneNumber(phone) {
	var flag = false;
	phone = phone.replace('(+84)', '0');
	phone = phone.replace('+84', '0');
	phone = phone.replace('0084', '0');
	phone = phone.replace(/ /g, '');
	if (phone != '') {
		var firstNumber = phone.substring(0, 2);
		if ((firstNumber == '09' || firstNumber == '08' || firstNumber == '07' || firstNumber == '03' || firstNumber == '05' || firstNumber == '0') && phone.length == 10) {
			if (phone.match(/^\d{10}/)) {
				flag = true;
			}
		}
	}
	return flag;
}


(function ( $ ) {
 
    $.fn.LongPageNavigation = function( options ) {
 
        var settings = $.extend({
			longPageNavigationPosition:"" ,
        }, options );
 
 
	if(settings.longPageNavigationPosition=="")
	{
		 $(this).before('<div class="longPageNavigationDiv"><ul></ul></div>');
	}
	else
	{
		 $('.'+settings.longPageNavigationPosition).append('<div class="longPageNavigationDiv"><ul></ul></div>');
		
	}	
    
	var count = 0;
	
     $(this).find('h2, h3').each(function(index){
		count++;
		var getMenuName = $(this).text();
		$(this).attr('id','LongNavigation-'+index);

		if( $(this).is("h3") )
			
			var li     = '<li class="toc-heading3"><a href="#LongNavigation-'+index+'">'+ getMenuName +'</a></li>'; 			
			
		else
			
			var li     = '<li class="toc-heading2"><a href="#LongNavigation-'+index+'">'+ getMenuName +'</a></li>'; 

		/*
		if( $(this).is("h3") ){                                     
			prevH2List = $("<ul></ul>");                
			prevH2Item = $(li);                                     
			prevH2Item.append(prevH2List);                          

			$('.longPageNavigationDiv ul').append(prevH2Item);				
		} else {                                                    
			
			$('.longPageNavigationDiv ul').append(li);
		}       		   
		*/

		$('.longPageNavigationDiv ul').append(li);
		 
	 });
	 
	 if(count == 0) {
		$('.longPageTOC').hide(); 
		$('.longPageNavigationDiv').hide(); 
	 }else{
		 $('.longPageTOC').show(); 
	 } 
             
    };
 
}( jQuery ));


// Smooth Navigation	   
$(document).on('click', 'a[href^="#"]', function (event) {
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $($.attr(this, 'href')).offset().top - 165
    }, 800);
});
// Smooth Navigation END

/*

jQuery('a[href^=#]').on('click', function(e){
    e.preventDefault();
    var href = $(this).attr('href');
    $('html, body').animate({ 
        scrollTop:$(href).offset().top - 100
    },'slow');
});

	if(window.location.hash != '' && window.location.hash != '#') {
	  let target = window.location.hash;

	  if(!$(target).length) {
		return;
	  }
	  
	  $('html, body').animate({
		scrollTop: $(target).offset().top - 100
	  });
	} 

*/

        