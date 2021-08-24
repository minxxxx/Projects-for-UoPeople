var LRM_Pro = LRM_Pro ? LRM_Pro : {};

setTimeout(function () {
	if ( LRM_Pro.reCaptcha.is_active ) {
		if ( ! LRM_Pro.reCaptcha.is_configured ) {
			alert( "AJAX Login Modal: reCaptcha is enabled but the API keys are missing!" );
			return;
		}
		// For invisible or Inline Forms - load early to collect the data
		if ( LRM_Pro.reCaptcha.is_invisible || jQuery(".lrm-inline").length > 0 ) {
			LRM_reCaptcha_load();
		} else {
			jQuery(document).on("lrm/show_modal", LRM_reCaptcha_load);
		}
	}
}, 500);

function LRM_reCaptcha_load() {
	(function (d, s, id) {                      // Load the SDK asynchronously
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s);
		js.id = id;
		js.defer = js.async = true;
		js.src = "https://www.google.com/recaptcha/api.js?onload=LRM_reCaptcha_onloadCallback&render=explicit";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'lrm-recaptcha'));

}
function LRM_reCaptcha_onloadCallback() {
	var grecaptchas = document.querySelectorAll(".lrm-grecaptcha");

	for(var N = 0; N < grecaptchas.length; N++) {
		grecaptchas[N].setAttribute("data-widget-id", grecaptcha.render( grecaptchas[N] ) );
	}
}

function LRM_reCaptcha_submitCallback(token) {
	jQuery("form[data-grecaptcha-execute]").submit();
}

jQuery(document).ready(function($) {

	// BuddyPress

	var $BP_Messages = $(".bp-messages");

	if ( $BP_Messages.length ) {
		$(".lrm-form .signup-form").prepend( '<div class="lrm-form-message">' + $BP_Messages.find("p").html() + '</div>' );
		$BP_Messages.remove();
	} else if ( $(".lrm-form #buddypress #signup_form").length ) {
		$(".lrm-form #buddypress #signup_form").prepend( '<div class="lrm-form-message"></div>' );
	}

	$("#buddypress #activate-page a").click(function (event) {
		event.preventDefault();
		jQuery(document).trigger('lrm_show_login');
	});


	///////// ### UltimateMember Section ###

	$(".lrm-signup-section .um-register form").addClass("lrm-form").prepend('<p class="lrm-form-message lrm-form-message--init"></p>');

	var $um_submits = $(".lrm-signup-section input#um-submit-btn");

	$.each($um_submits, function(k, el) {
		el.outerHTML = el.outerHTML.replace(/^\<input/, '<button') + el.value + '</button>';
		// var $um_submit = $(el);
		// $um_submit.removeAttr("type").attr("type", "submit").text( $um_submit.val() );
	})



	///////// ### Redirects Section ###

	$(document).on('lrm/ajax_response', function (event, response, $form, action) {
		if ( "email-verification-pro-w-redirect" === response.data.action && response.data.redirect_url ) {
			window.location.href = response.data.redirect_url;
			return;
		}
	});

	//$(document).trigger('lrm_user_logged_in');
	$(document).on("lrm_user_logged_in", function (event, response, $form, action) {
		if ( LRM.redirect_url ) {
			window.location.href = LRM.redirect_url;
			return;
		}

		/**
		 * Tweak for Single WOO Product page
		 * @since 1.26
		 */
		if ( saved_target.length ) {
			$( saved_target[1] ).trigger( saved_target[0] );
			return;
		}

		if ( response.data.redirect_url ) {
			window.location.href = response.data.redirect_url;
			return;
		}

		//
		// if ( ! LRM_Pro.redirect_urls.after_login && !LRM_Pro.redirect_urls.after_registration ) {
		// 	return;
		// }
		//
		// if ( LRM_Pro.redirect_urls.after_login && "login" == action ) {
		// 	window.location.href = LRM_Pro.redirect_urls.after_login;
		// } else if ( LRM_Pro.redirect_urls.after_registration && "registration" == action ) {
		// 	window.location.href = LRM_Pro.redirect_urls.after_registration;
		// }
	});

	// Fix for ACF PRO plugin
	setTimeout(function() {
		// action for 3rd party customization
		if ("undefined" != typeof(acf)) {
			acf.add_action('submit', function ($form) {
				$form.data("lrm-acf-validated", "yes");
			});
		}
	}, 100);

	// $(document).on('submit', ".lrm-", function (event) {
	//
	// });
	///////// ### Redirects Section :: END

	///////// ### Woocommerce Section ###
	if ( LRM_Pro.woo_add_to_cart_hook ) {
		if ($("body").hasClass("single-product")) {
			$(".lrm-form-message--init").html(LRM_Pro.l10n.woo_must_register);
		}
	}
	if ( LRM_Pro.woo_on_proceed_to_checkout ) {
		if ($("body").hasClass("woocommerce-cart")) {
			$(".lrm-form-message--init").html(LRM_Pro.l10n.woo_must_register);
		}
	}

	if ( LRM_Pro.woo_on_proceed_to_checkout ) {
		// Show modal When clicked to "Process to Checkout" on Cart page	
		$(".wc-proceed-to-checkout .checkout-button").on('click', function (event) {
			if ( !LRM.is_customize_preview && LRM.is_user_logged_in) {
				return;
			}

			//$(this).addClass("lrm-redirect");

			event.preventDefault();
			jQuery(document).trigger('lrm_show_signup');
			saved_target = ["click", ".wc-proceed-to-checkout .checkout-button"];
			// Redirect user to the Checkout after login/register
			LRM.redirect_url = $(this).attr("href");
		});
	}

	/**
	 * Tweak for Single WOO Product page
	 * Save event details to add for cart after log-in
	 * @since 1.26
	 */
	var saved_target = [];

	if ( LRM_Pro.woo_add_to_cart_hook ) {
		// Product single page
		$(document).on('submit', "form.cart", function (event) {
			if ( !LRM.is_customize_preview && LRM.is_user_logged_in) {
				return true;
			}

			event.preventDefault();
			jQuery(document).trigger('lrm_show_signup');
			saved_target = ["click", ".single_add_to_cart_button"];
		});
		// Products list
		$(document).on('click', ".add_to_cart_button", function (event) {
			if ( !LRM.is_customize_preview && LRM.is_user_logged_in) {
				return true;
			}

			$(this).addClass("lrm-redirect");

			event.preventDefault();
			jQuery(document).trigger('lrm_show_signup', [event]);
		});

		// To stop adding to cart items
		$(".add_to_cart_button").removeClass("ajax_add_to_cart");
	}
	///////// ### Woocommerce Section :: END

	///////// ### reCaptcha Section ###

	$(document).on('lrm/do_not_submit_form', function(event, form){
		var $form = $(form);

		if ( $form.data("action") !== "login" && ! LRM.allow_weak_password && lrm_validate_password( form ) < 3 ) {
			// Allow weak password for the "password-reset" page
			if ( $form.data("action") === "password-reset" && $(".pw-checkbox").attr("checked") ) {
				return;
			}
			LRM_Form.set_message( $form, LRM.l10n.passwords_is_weak, true );
			return true;
		}

		$("form[data-grecaptcha-execute]").attr("data-grecaptcha-execute", null);

		// typeof wp_recaptchaLoadCallback != "undefined" &&
		if ( $form.find(".g-recaptcha-response").length && ! $form.find(".g-recaptcha-response").val() ) {
			if ( $form.find(".inv-recaptcha-holder").length > 0 ) {
				grecaptcha.execute($form.find(".inv-recaptcha-holder").data("widget-id"));
			} else if ( $form.find(".lrm-grecaptcha").length > 0 ) {
				var $lrmRecaptcha = $form.find(".lrm-grecaptcha");
				var widgetID = $lrmRecaptcha.data("widget-id");
				var recaptchaResponse = grecaptcha.getResponse(widgetID);
				if ( recaptchaResponse ) {
					// Allow Submission
					return false;
				}
				if ( $lrmRecaptcha.data("size") === "invisible" ) {
					grecaptcha.execute(widgetID);
					$form.attr("data-grecaptcha-execute", "yes");
				} else {
					LRM_Form.set_message($form, LRM_Pro.l10n.recaptcha_error, true);
				}
			} else {
				LRM_Form.set_message($form, LRM_Pro.l10n.recaptcha_error, true);
			}
			//$form.find(".lrm-form-message").html(LRM_Pro.l10n.recaptcha_error).addClass("lrm-is-error");
			// DO not allow Submission!
			return true;
		}
		// Allow Submission
		return false;
	});

	// Match captcha
	$(document).on('lrm/ajax_response', function( event, response, $form, action ){
		if ( response.success && response.data.user_id && "registration" === action && LRM_Pro.hide_form_after_registration ) {
			$form.addClass("--registration-done");
		}
		if (!response.success && "refresh_captcha" === response.data.action && response.data.html) {
			$form.find(".lrm-math-captcha-content").html( response.data.html );

			setTimeout(function() {
				$form.find("input.lrm-match-value").focus();
			}, 100);
		}
	});

	$(document).on('lrm_pro/maybe_refresh_recaptcha', function(){

		$(".lrm-signup-section #um-submit-btn").prop("disabled", "");

		if ( typeof grecaptcha != "undefined" ) {
			// Plugin Core reCaptcha
			var captchas = [];

			captchas = document.querySelectorAll(".lrm-grecaptcha");
			if ( captchas.length ) {
				for (var i=0;i<captchas.length;i++) {
					if ( captchas[i].dataset.widgetId && grecaptcha.getResponse( captchas[i].dataset.widgetId ) ) {
						grecaptcha.reset( captchas[i].dataset.widgetId );
					}
				}
			}

			captchas = document.querySelectorAll(".g-recaptcha");
			if ( captchas.length ) {
				for (var i=0;i<captchas.length;i++) {
					if ( captchas[i].dataset.widgetId && grecaptcha.getResponse( captchas[i].dataset.widgetId ) ) {
						grecaptcha.reset( captchas[i].dataset.widgetId );
					}
				}
			}
			/**
			 * For "Google Captcha (reCAPTCHA) by BestWebSoft"
			 * @since 1.29
			 */
			captchas = document.querySelectorAll(".gglcptch_recaptcha");
			if ( captchas.length ) {
				var gindex = null;
				for (var i=0;i<captchas.length;i++) {
					gindex = $(captchas[i]).data( "gglcptch_index" );
					if ( gindex !== null ) {
						//console.log( gindex );
						grecaptcha.reset( gindex );
					}
					gindex = null;
				}
			}
		}

	});

	setTimeout(function() {
		// FIX for  https://wordpress.org/plugins/invisible-recaptcha/
		if ( typeof renderInvisibleReCaptcha !== "undefined" ) {
			$(".inv-recaptcha-holder").each(function (N, captcha_holder) {
				$(captcha_holder).data("widget-id", N);
			});
		}
	}, 500);
	///////// ### reCaptcha Section :: END

	///////// ### Set Password Section ###
	
	/**
	 * https://code.tutsplus.com/articles/using-the-included-password-strength-meter-script-in-wordpress--wp-34736
	 *
	 * @param $pass1
	 * @param $strengthResult
	 * @returns {*}
	 * TODO - check and remove
	 */
	// function checkPasswordStrength( $pass1, $pass2, $strengthResult ) {
	// 	LRM.loadPasswordMeter(function() {
	// 		var pass1 = $pass1.val();
	// 		if ( !pass1 ) {
	// 			$strengthResult.data('status','empty');
	// 			return;
	// 		}
	// 		if (!$pass2) {
	// 			var pass2 = pass1;
	// 		} else {
	// 			var pass2 = $pass2.val();
	// 		}
	//
	// 		//$strengthResult.removeClass('short bad good strong');
	//
	// 		// Extend our blacklist array with those from the inputs & site data
	// 		var blacklistArray = ["querty", "password", "132", "123"].concat(wp.passwordStrength.userInputBlacklist())
	//
	// 		// Get the password strength
	// 		var strength = wp.passwordStrength.meter(pass1, blacklistArray, pass2);
	//
	// 		// Add the strength meter results
	// 		switch (strength) {
	//
	// 			case 2:
	// 				$strengthResult.attr('data-status','bad').html(LRM.l10n.password_is_bad);
	// 				break;
	//
	// 			case 3:
	// 				$strengthResult.attr('data-status','good').html(LRM.l10n.password_is_good);
	// 				break;
	//
	// 			case 4:
	// 				$strengthResult.attr('data-status','strong').html(LRM.l10n.password_is_strong);
	// 				break;
	//
	// 			case 5:
	// 				if ($pass2) {
	// 					$strengthResult.attr('data-status','short').html(LRM.l10n.passwords_is_mismatch);
	// 					break;
	// 				}
	//
	// 			default:
	// 				$strengthResult.attr('data-status','short').html(LRM.l10n.password_is_short);
	//
	// 		}
	//
	// 		//console.log( "Pass strength: ", strength );
	//
	// 		return strength;
	// 	});
	// }

	// Binding to trigger checkPasswordStrength

	$( 'body' ).on( 'keyup', '#signup-password,#signup-password-confirmation', function( event ) {
		lrm_validate_password( this );
	});

	function lrm_validate_password( el ) {
		// Stop, if modal is not visible!
		var $el = $(el);
		var is_pass_reset = $el.is("form") && $el.data("action") === "password-reset";

		var $lrm_main = is_pass_reset ? $el : $(el).closest(".lrm-main");
		if ( is_pass_reset || $lrm_main.hasClass("is-visible") ) {
			if ( !is_pass_reset ) {
				var $confirmation_pass = $lrm_main.find("#signup-password-confirmation").length ? $lrm_main.find("#signup-password-confirmation") : null;
			}
			var $pass_field = is_pass_reset ? $el.find("#lrm-password1") : $lrm_main.find("#signup-password");
			return LRM.checkPasswordStrength(
				  $pass_field,         // First password field
				  $confirmation_pass,
				  $pass_field.parent().parent().find(".lrm-pass-strength-result")           // Strength meter
			);
		}
		return false;
	}

	// 	  .on( 'focus', '#signup-password', function( event ) {
	// 	// Preload zxcvbn.js
	// 	LRM.loadPasswordMeter(function() {});
	// 	$( 'body' ).off( 'focus', '#signup-password' );
	// });;

	///////// ### Set Password Section :: END -
});
