var LRM = LRM ? LRM : {};

//jQuery(document).ready(function($) {
// jQuery(document).ready(
/** @var $ jQuery */
+(function ($) {

	if ($('.lrm-user-modal').length > 0) {
		lrm_init()
	} else {
		setTimeout(function () {
			lrm_init();
		}, 1200);
	}

	function is_mobile_or_tablet() {
		var check = false;

		(function (a) {
			if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino|android|ipad|playbook|silk/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))) check = true;
		})(navigator.userAgent || navigator.vendor || window.opera);

		return check;
	}

	function lrm_init() {
		// var $formModal = $('.lrm-user-modal'),
		// 	  $formLogin = $formModal.find('#lrm-login'),
		// 	  $formSignup = $formModal.find('#lrm-signup'),
		// 	  $formForgotPassword = $formModal.find('#lrm-reset-password'),
		// 	  $formModalTab = $('.lrm-switcher'),
		// 	  $tabLogin = $formModalTab.children('li').eq(0).children('a'),
		// 	  $tabSignup = $formModalTab.children('li').eq(1).children('a'),
		// 	  $forgotPasswordLink = $formLogin.find('.lrm-form-bottom-message a'),
		// 	  $backToLoginLink = $formForgotPassword.find('.lrm-form-bottom-message a'),

		var loader_html = '<span class="lrm-button-loader"> <svg version="1.1" id="L4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 40" enable-background="new 0 0 0 0" xml:space="preserve"> <circle fill="#ffffff" stroke="none" cx="30" cy="20" r="6"> <animate attributeName="opacity" dur="1s" values="0;1;0" repeatCount="indefinite" begin="0.1"/> </circle> <circle fill="#ffffff" stroke="none" cx="50" cy="20" r="6"> <animate attributeName="opacity" dur="1s" values="0;1;0" repeatCount="indefinite" begin="0.2"/> </circle> <circle fill="#ffffff" stroke="none" cx="70" cy="20" r="6"> <animate attributeName="opacity" dur="1s" values="0;1;0" repeatCount="indefinite" begin="0.3"/> </circle> </svg></span>';

		$("html").addClass("html-has-lrm");
		$("body").addClass("has-lrm");

		$(document).on('lrm_show_signup', signup_selected);
		$(document).on('lrm_show_register', signup_selected);

		$(document).on('lrm_show_signin', login_selected);
		$(document).on('lrm_show_login', login_selected);

		setTimeout(function () {
			if (LRM.selectors_mapping.login) {
				$(LRM.selectors_mapping.login)
					  .off("click")
					  .on('click', function (event) {
						  event.preventDefault();
						  $(document).trigger('lrm_show_login', [event]);
						  return false;
					  });
			}
			if (LRM.selectors_mapping.register) {
				$(LRM.selectors_mapping.register)
					  .off("click")
					  .on('click', function (event) {
						  event.preventDefault();
						  $(document).trigger('lrm_show_signup', [event]);
						  return false;
					  });
			}

			var hash = window.location.hash.substring(1);
			if ( hash.length > 0 ) {
				if (hash === "login") {
					$(document).trigger('lrm_show_login');
				} else if (hash === "inline-login") {
					jQuery(".lrm-inline .lrm-switch-to--login").click();
				} else if (hash == "register") {
					$(document).trigger('lrm_show_signup');
				} else if (hash == "inline-register") {
					jQuery(".lrm-inline .lrm-switch-to--register").click();
				}
			}
		}, 300);

		//$("form.cart").on('submit', signup_selected);

		var handle_event = is_mobile_or_tablet() ? 'touchend' : 'click';

		//open sign-up form
		$(document).on('click', '.lrm-signup', signup_selected);
		$(document).on(handle_event, '[class*="lrm-register"]', signup_selected);
		$(document).on('click', '.lrm-switch-to--register', signup_selected);

		//open login-form form
		$(document).on('click', '.lrm-signin', login_selected);
		$(document).on(handle_event, '[class*="lrm-login"]', login_selected);
		$(document).on('click', '.lrm-switch-to--login', login_selected);

		$(document).on('click', '.lrm-forgot-password,[data-action="login"] .lrm-form-message a,.lrm-switch-to--reset-password', function (event) {
			event.preventDefault();
			forgot_password_selected(event);
		});

		//close modal
		$('.lrm-user-modal').on('click', function (event) {
			if ($(event.target).is('.lrm-user-modal') || $(event.target).is('.lrm-close-form')) {
				$(this).removeClass('is-visible');
				auto_selected_role = false;
				$(document).triggerHandler("lrm/close_modal", this, event, "click");
			}
		});
		//close modal when clicking the esc keyboard button
		$(document).keyup(function (event) {
			if (event.which == '27') {
				$(".lrm-user-modal").removeClass('is-visible');
				auto_selected_role = false;
				$(document).triggerHandler("lrm/close_modal", this, event, "esc");
			}
		});

		//switch from a tab to another
		// $formModalTab.on('click', function (event) {
		// 	event.preventDefault();
		// 	( $(event.target).is($tabLogin) ) ? login_selected(event, true) : signup_selected(event, true);
		// });

		//hide or show password
		$(document).on('click', '.lrm-user-modal-container .hide-password', function () {
			var togglePass = $(this),
				  passwordField = togglePass.parent().find('input');

			('password' == passwordField.attr('type')) ? passwordField.attr('type', 'text') : passwordField.attr('type', 'password');

			if ( togglePass.hasClass("hide-password--on") )  {
				togglePass.attr( "title", togglePass.data("show") );
				togglePass.removeClass("hide-password--on");
			} else {
				togglePass.attr( "title", togglePass.data("hide") );
				togglePass.addClass("hide-password--on");
			}
			//focus and move cursor to the end of input field
			passwordField.putCursorAtEnd();
		});

		//show forgot-password form
		// $forgotPasswordLink.on('click', function (event) {
		// 	event.preventDefault();
		// 	forgot_password_selected(event);
		// });
		//
		// //back to login from the forgot-password form
		// $backToLoginLink.on('click', function (event) {
		// 	event.preventDefault();
		// 	login_selected(event, true);
		// });

		var auto_selected_role = false;
		var hidden_role = false;

		function _save_auto_role(event) {
			if ( !event.target || $(event.target).hasClass("lrm-switch-to-link") ) {
			 	return;
			}
			var role = $(event.target).data("lrm-role");
			if ( role !== undefined ) {
				auto_selected_role = role;
			}

			hidden_role = false;
			if ( $(event.target).data("lrm-role-silent") !== undefined ) {
				hidden_role = true;
			}
		}

		function login_selected(event, event_orig) {
			if (LRM.is_user_logged_in && !LRM.is_customize_preview) {
				return true;
			}

			/**
			 * @since 1.34
			 * this - clicked element
			 */
			$(document).triggerHandler("lrm/before_display/login", this, event);

			_save_auto_role(event);

			var $formModal = $(event.target).closest(".lrm-main");

			if (!$formModal.length) {
				LRM.redirect_url = "";
				if (!event_orig) {
					var el = event.target ? event.target : this;
				} else {
					var el = event_orig.target;
				}
				if (el && $(el).hasClass("lrm-redirect")) {
					LRM.redirect_url = $(el).attr("href");
				}
			}

			if (!$formModal.length) {
				$formModal = $(".lrm-user-modal");
			}

			// var $formModal = $('.lrm-user-modal'),
			// 	  $formLogin = $formModal.find('.lrm-login'),
			// 	  $formSignup = $formModal.find('.lrm-signup'),
			// 	  $formForgotPassword = $formModal.find('.lrm-reset-password'),
			// 	  $formModalTab = $('.lrm-switcher'),
			// 	  $tabLogin = $formModalTab.children('li').eq(0).children('a'),
			// 	  $tabSignup = $formModalTab.children('li').eq(1).children('a'),
			// 	  $forgotPasswordLink = $formLogin.find('.lrm-form-bottom-message a'),
			// 	  $backToLoginLink = $formForgotPassword.find('.lrm-form-bottom-message a'),
			//
			_show_modal($formModal);
			$formModal.find('.lrm-signin-section').addClass('is-selected');
			$formModal.find('.lrm-signup-section').removeClass('is-selected');
			$formModal.find('.lrm-reset-password-section').removeClass('is-selected');
			$formModal.find('.lrm-switcher').children('li').eq(0).children('a').addClass('selected');
			$formModal.find('.lrm-switcher').children('li').eq(1).children('a').removeClass('selected');

			setTimeout(function() {
				if ( $(window).width() > 600 ) {
					$formModal.find(".lrm-signin-section input[data-autofocus]").focus();
				}
			}, 100);

			if (event) {
				event.preventDefault();
			}
			return false;
		}

		function signup_selected(event, event_orig) {
			if (LRM.is_user_logged_in && !LRM.is_customize_preview) {
				return true;
			}

			/**
			 * @since 1.34
			 * this - clicked element
			 */
			$(document).triggerHandler("lrm/before_display/registration", this, event);

			_save_auto_role(event);

			// $formModal.addClass('is-visible');
			// $formLogin.removeClass('is-selected');
			// $formSignup.addClass('is-selected');
			// $formForgotPassword.removeClass('is-selected');
			// $tabLogin.removeClass('selected');
			// $tabSignup.addClass('selected');

			var $formModal = $(event.target).closest(".lrm-main");


			if (!$formModal.length) {
				LRM.redirect_url = "";
				if (!event_orig) {
					var el = event.target ? event.target : this;
				} else {
					var el = event_orig.target;
				}
				if (el && $(el).hasClass("lrm-redirect")) {
					LRM.redirect_url = $(el).attr("href");
				}
			}

			if (!$formModal.length) {
				$formModal = $(".lrm-user-modal");
			}

			_show_modal($formModal);
			$formModal.find('.lrm-signin-section').removeClass('is-selected');
			$formModal.find('.lrm-signup-section').addClass('is-selected');
			$formModal.find('.lrm-reset-password-section').removeClass('is-selected');
			$formModal.find('.lrm-switcher').children('li').eq(0).children('a').removeClass('selected');
			$formModal.find('.lrm-switcher').children('li').eq(1).children('a').addClass('selected');

			// User Role selector!
			if ( $formModal.find(".fieldset--user_role") ) {
				var $user_role_wrap = $formModal.find(".fieldset--user_role");
				var $role_option = null, role_id;

				if (auto_selected_role) {
					$role_option = $user_role_wrap.find("option[data-label='" + auto_selected_role + "']");
					if ( $role_option.length ) {
						var role_id = $role_option.val();
					}
					if ( role_id ) {
						$user_role_wrap.find("select[name='user_role']").val(role_id); // aa
					} else {
						console.warn( "LRM user role selector: no Role was found with a label:", auto_selected_role );
					}
				} else {
					$user_role_wrap.find("select[name='user_role']").val("");
				}

				if (hidden_role && ( !auto_selected_role || (auto_selected_role && role_id) )) {
					$user_role_wrap.hide();
				} else {
					$user_role_wrap.show();
				}
			}

			setTimeout(function() {
				if ( $(window).width() > 600 ) {
					$formModal.find(".lrm-signup-section input:first").focus();
				}

				$("#signup-password").trigger("keyup");
			}, 100);

			if (event) {
				event.preventDefault();
			}
			return false;
		}

		function forgot_password_selected(event) {
			// if (LRM.is_user_logged_in) {
			// 	return true;
			// }

			/**
			 * @since 1.34
			 * this - clicked element
			 */
			$(document).triggerHandler("lrm/before_display/forgot_password", this, event);

			var $formModal = $(event.target).closest(".lrm-main");

			if (!$formModal.length) {
				$formModal = $(".lrm-user-modal");
			}

			_show_modal($formModal);
			$formModal.find('.lrm-signin-section').removeClass('is-selected');
			$formModal.find('.lrm-signup-section').removeClass('is-selected');
			$formModal.find('.lrm-reset-password-section').addClass('is-selected');

			setTimeout(function() {
				if ( $(window).width() > 600 ) {
					$formModal.find(".lrm-reset-password-section input[data-autofocus]").focus();
				}
			}, 100);

			if (event) {
				event.preventDefault();
			}

			// $formLogin.removeClass('is-selected');
			// $formSignup.removeClass('is-selected');
			// $formForgotPassword.addClass('is-selected');
			return false;
		}

		/**
		 * Global function for all actions
		 * @param $formModal
		 * @private
		 */
		function _show_modal( $formModal ) {
			if ( window.LRM_Pro ) {
				window.LRM_Pro.modal_is_shown = true;
			}
			$formModal.addClass('is-visible');
			$(document).triggerHandler("lrm/show_modal", $formModal);
		}

		$(document).on('submit', '.lrm-form', lrm_submit_form);

		function lrm_submit_form(event) {
			if (LRM.is_customize_preview) {
				alert("Not possible to submit form in Preview Mode!");
				return;
			}
			var $form = $(event.target);

			if ( $form.hasClass("rcp_form") ) {
				return true;
			}

			event.preventDefault();

			if ( $form.hasClass("--is-submitting") ) {
				return false;
			}

			// Check reCaptha, etc
			if ( $(document).triggerHandler('lrm/do_not_submit_form', $form) ) {
				return false;
			}

			// Fix for ACF PRO plugin
			if ($form.data("action") == "registration" && $form.find("#acf-form-data").length > 0 && acf.validation.active) {
				if ("yes" !== $form.data("lrm-acf-validated")) {
					return;
				}
				// Reset validation flag
				$form.data("lrm-acf-validated", "no");
			}

			$form.find(".has-error").removeClass("has-error")
				  .next("span").removeClass("is-visible");

			$form.find("button[type='submit']").prepend(loader_html);

			$form.find(".lrm-form-message").html("");

			$form.addClass("--is-submitting");


			$.ajax({
				type: 'POST',
				dataType: 'json',
				url: LRM.ajax_url,
				data: $form.serialize(),
				success: function (response) {
					$form.find(".lrm-button-loader").remove();
					$form.removeClass("--is-submitting");

					if (response.data.message) {
						if (!response.data.for) {
							LRM_Form.set_message( $form, response.data.message, !response.success );
							//$form.find(".lrm-form-message").html(response.data.message);

							// if (!response.success) {
							// 	$form.find(".lrm-form-message").addClass("lrm-is-error");
							// }

							//$form.closest(".lrm-user-modal-container").animate({scrollTop: error_scroll_offset}, 400);
						} else {
							// Tweak in case this selector is Missing
							if ( 0 === $form.find('input[name="' + response.data.for + '"]').length ) {
								alert(response.data.message);
							} else {
								$form.find('input[name="' + response.data.for + '"]').addClass('has-error')
									  .next('.lrm-error-message').html(response.data.message).addClass('is-visible');
								$form.find(".lrm-form-message").removeClass("lrm-is-error").html("");

							}
						}

						if (response.data.custom_html && response.data.custom_html_selector) {
							$(response.data.custom_html_selector).html(response.data.custom_html);
						}
					}

					// $form.data("action") for get
					$(document).triggerHandler('lrm/ajax_response', [response, $form, $form.data("action")]);

					if ( window.is_lrm_testing ) {
						window.lrm_response = response;
						return;
					}

					//console.log(response);

					// If user Logged in After Login or Registration
					// If Email Verify after Registration enabled - we skip this
					if (response.success && response.data.logged_in) {
						LRM.is_user_logged_in = true;
						$(document).triggerHandler('lrm_user_logged_in', [response, $form, $form.data("action")]);

						if ( "reload" == response.data.action ) {
							window.location.reload( true );
						} else if ( "hide" == response.data.action ) {
							$(".lrm-user-modal").removeClass('is-visible');
							$("body").addClass("logged-in");
						}
					}

					$(document).triggerHandler('lrm_pro/maybe_refresh_recaptcha');
				},
				error: function (jqXHR, textStatus, errorThrown) {
					$form.find(".lrm-button-loader").remove();
					$form.removeClass("--is-submitting");

					alert("An error occurred, please contact with administrator... \n\rFor more details look at the console (F12 or Ctrl+Shift+I, Console tab)!");

					if (window.console == undefined) {
						return;
					}
					console.log('statusCode:', jqXHR.status);
					console.log('errorThrown:', errorThrown);
					console.log('responseText:', jqXHR.responseText);
				}

			});

			return false;
		}

		/**
		 * @since 1.51
		 */
		$( 'body' ).on( 'keyup', '#lrm-password1,#lrm-password2', function( event ) {
			var passwordStrength = LRM.checkPasswordStrength(
				  $( "#lrm-password1" ),         // First password field
				  null,         // First password field
				  $( "#lrm-password1" ).parent().parent().find(".lrm-pass-strength-result")           // Strength meter
			);

			if ( typeof passwordStrength == "undefined" ) {
				return;
			}

			if ( !passwordStrength || passwordStrength == 2 ) {
				$(".pw-weak").show()
				$(".pw-checkbox").attr("required", "required");
			} else {
				$(".pw-weak").hide()
				$(".pw-checkbox").attr("required", false);
			}
		});

		setTimeout(function () {
			if ( $('#lrm-password1,#lrm-password2').length > 0 ) {
				$('#lrm-password1,#lrm-password2').trigger('keyup');
			}
		}, 500);

	}

	// ajaxSetup is global, but we use it to ensure JSON is valid once returned.
	$.ajaxSetup({
		dataFilter: function (raw_response, dataType) {
			// We only want to work with JSON
			if ('json' !== dataType) {
				return raw_response;
			}

			if (lrm_is_valid_json(raw_response)) {
				return raw_response;
			} else {
				// Attempt to fix the malformed JSON
				var maybe_valid_json = raw_response.match(/{"success.*}/);

				if (null === maybe_valid_json) {
					console.log('Unable to fix malformed JSON');
				} else if (lrm_is_valid_json(maybe_valid_json[0])) {
					console.log('Fixed malformed JSON. Original:');
					console.log(raw_response);
					raw_response = maybe_valid_json[0];
				} else {
					console.log('Unable to fix malformed JSON');
				}
			}

			return raw_response;
		}
	});


	function lrm_is_valid_json(raw_json) {
		try {
			var json = $.parseJSON(raw_json);

			return (json && 'object' === typeof json);
		} catch (e) {
			return false;
		}
	}

	window.LRM_Form = {
		set_message: function($form, message_html, is_error) {
			var $message = $form.find(".lrm-form-message");

			// Tweak in case this selector is Missing
			if ( 0 !== $message.length ) {
				$message.html(message_html);
			} else {
				alert(message_html);
			}

			var modal_is_visible = $(".lrm-user-modal").hasClass('is-visible');

			var element_to_scroll = modal_is_visible ? ".lrm-user-modal" : "html, body";

			var error_scroll_offset = $(document).triggerHandler("lrm/form/set_message_scroll_offset", [$form, modal_is_visible, $message]);
			if ( error_scroll_offset === undefined ) {
				error_scroll_offset = modal_is_visible ? 25 : $message.offset().top - 15;
			}

			$(element_to_scroll).animate({
				scrollTop: error_scroll_offset
			}, 1500);

			if ( is_error ) {
				$message.addClass("lrm-is-error");
			} else {
				$message.removeClass("lrm-is-error");
			}
		}
	};

	/**
	 * https://code.tutsplus.com/articles/using-the-included-password-strength-meter-script-in-wordpress--wp-34736
	 *
	 * @param $pass1
	 * @param $strengthResult
	 * @returns {*}
	 */
	LRM.checkPasswordStrength = function( $pass1, $pass2, $strengthResult ) {

		return LRM.loadPasswordMeter(function() {
			var pass1 = $pass1.val();
			if ( !pass1 ) {
				$strengthResult.data('status','empty');
				return;
			}
			if (!$pass2) {
				var pass2 = pass1;
			} else {
				var pass2 = $pass2.val();
			}

			//$strengthResult.removeClass('short bad good strong');

			// Extend our blacklist array with those from the inputs & site data
			var blacklistArray = ["querty", "password", "P@ssword1", "132", "123"]

			// Get the password strength
			var strength = 0;
			if ( "lrm" === LRM.password_strength_lib ) {
				strength = LRM_Helper.PasswordMeter(pass1, blacklistArray, pass2);
			} else {
				blacklistArray = blacklistArray.concat(wp.passwordStrength.userInputBlacklist());
				strength = wp.passwordStrength.meter(pass1, blacklistArray, pass2);
			}

			// Add the strength meter results
			switch (strength) {

				case 2:
					$strengthResult.attr('data-status','bad').html(LRM.l10n.password_is_bad);
					break;

				case 3:
					$strengthResult.attr('data-status','good').html(LRM.l10n.password_is_good);
					break;

				case 4:
					$strengthResult.attr('data-status','strong').html(LRM.l10n.password_is_strong);
					break;

				case 5:
					if ($pass2) {
						$strengthResult.attr('data-status','short').html(LRM.l10n.passwords_is_mismatch);
						break;
					}

				default:
					$strengthResult.attr('data-status','short').html(LRM.l10n.password_is_short);

			}

			//console.log( "Pass strength: ", strength );

			return strength;
		});
	}

	LRM.passwordMeterIsLoaded = false;
	LRM.passwordMeterIsLoading = false;
	LRM.loadPasswordMeter = function ( callback ) {
		if ( "lrm" === LRM.password_strength_lib || LRM.passwordMeterIsLoaded ) {
			return callback();
		}
		// From "wp-admin/js/password-strength-meter.min.js?ver=5.0.4"
		window.wp=window.wp||{};var passwordStrength;!function(a){wp.passwordStrength={meter:function(b,c,d){if(a.isArray(c)||(c=[c.toString()]),b!=d&&d&&d.length>0)return 5;if("undefined"==typeof window.zxcvbn)return-1;var e=zxcvbn(b,c);return e.score},userInputBlacklist:function(){var b,c,d,e,f=[],g=[],h=["user_login","first_name","last_name","nickname","display_name","email","url","description","weblog_title","admin_email"];for(f.push(document.title),f.push(document.URL),c=h.length,b=0;b<c;b++)e=a("#"+h[b]),0!==e.length&&(f.push(e[0].defaultValue),f.push(e.val()));for(d=f.length,b=0;b<d;b++)f[b]&&(g=g.concat(f[b].replace(/\W/g," ").split(" ")));return g=a.grep(g,function(b,c){return!(""===b||4>b.length)&&a.inArray(b,g)===c})}},passwordStrength=wp.passwordStrength.meter}(jQuery);

		LRM.passwordMeterIsLoading = true;

		// Usage
		$.cachedScript( LRM.password_zxcvbn_js_src ).done(function( script, textStatus ) {
			LRM.passwordMeterIsLoaded = true;
			callback();
		});
	}

//});
})(jQuery);


//credits http://css-tricks.com/snippets/jquery/move-cursor-to-end-of-textarea-or-input/
jQuery.fn.putCursorAtEnd = function () {
	return this.each(function () {
		// If this function exists...
		if (this.setSelectionRange) {
			// ... then use it (Doesn't work in IE)
			// Double the length because Opera is inconsistent about whether a carriage return is one character or two. Sigh.
			var len = jQuery(this).val().length * 2;
			this.focus();
			this.setSelectionRange(len, len);
		} else {
			// ... otherwise replace the contents with itself
			// (Doesn't work in Google Chrome)
			jQuery(this).val(jQuery(this).val());
		}
	});
};

/**
 * @since 2.02
 *
 * @param url
 * @param options
 * @returns {*}
 */
jQuery.cachedScript = function( url, options ) {
	// Allow user to set any option except for dataType, cache, and url
	options = jQuery.extend( options || {}, {
		dataType: "script",
		cache: true,
		url: url
	});

	// Use $.ajax() since it is more flexible than $.getScript
	// Return the jqXHR object so we can chain callbacks
	return jQuery.ajax( options );
};

var LRM_Helper= {};

LRM_Helper.setCookie = function(name,value,days) {
	var expires = "";
	if (days) {
		var date = new Date();
		date.setTime(date.getTime() + (days*24*60*60*1000));
		expires = "; expires=" + date.toUTCString();
	}
	document.cookie = name + "=" + (value || "")  + expires + "; path=/";
}

LRM_Helper.getCookie = function(name) {
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

LRM_Helper.PasswordMeter = function( pass1, blacklistArr, pass2 ) {

	function PasswordMeter() {

		this.pass1 = pass1;
		this.pass2 = pass2;
		this.passLength = this.pass1.length;

		this.tokens = {
			letters: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
			numbers: "0123456789",
			specialChars: "!&%/()=?^*+][#><;:,._-|"
		};
		this.letters = this.tokens.letters.split( "" );
		this.numbers = this.tokens.numbers.split( "" );
		this.specialChars = this.tokens.specialChars.split( "" );
	}

	PasswordMeter.prototype = {
		check: function() {
			var self = this;

			if ( self.pass2 && self.pass1 !== self.pass2 ) {
				return 5;
			}

			var val = self.pass1;
			var total = self.passLength;

			var totalLetters = 0;
			var totalNumbers = 0;
			var totalSpecialChars = 0;

			var tokens = val.split( "" );
			var len = tokens.length;
			var i;

			for( i = 0; i < len; ++i ) {
				var token = tokens[i];
				if( self._isLetter( token ) ) {
					totalLetters++;
				} else if( self._isNumber( token ) ) {
					totalNumbers++;
				} else if( self._isSpecialChar( token ) ) {
					totalSpecialChars++;
				}

			}
			
			var result = self._calculate( total, totalLetters, totalNumbers, totalSpecialChars );
			return Math.round(result/2.5);
		},
		_isLetter: function( token ) {
			var self = this;
			if( self.letters.indexOf( token ) == -1 ) {
				return false;
			}
			return true;
		},
		_isNumber: function( token ) {
			var self = this;
			if( self.numbers.indexOf( token ) == -1 ) {
				return false;
			}
			return true;
		},
		_isSpecialChar: function( token ) {
			var self = this;
			if( self.specialChars.indexOf( token ) == -1 ) {
				return false;
			}
			return true;
		},
		_calculate: function( total, letters, numbers, chars ) {
			var level = 0;
			var l = parseInt( letters, 10 );
			var n = parseInt( numbers, 10 );
			var c = parseInt( chars, 10 );

			if( total < 8 ) {
				level += 1;
			}
			if( total >= 8 ) {
				level += 4;
			}

			if( l > 0 ) {
				level += 1;
			}

			if( n > 0 ) {
				level += 2;
			}

			if( c > 0 ) {
				level += 3;
			}

			if ( jQuery.inArray( pass1, blacklistArr ) > 0 ) {
				level = 5;
			}

			return level;
		}
	};

	var pwdMeter = new PasswordMeter();
	return pwdMeter.check();
};
// END