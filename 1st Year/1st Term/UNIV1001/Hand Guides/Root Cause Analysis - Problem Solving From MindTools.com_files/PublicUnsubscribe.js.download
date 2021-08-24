(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
"use strict";

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

/**
 * PublicUnsubscribe
 */
var PublicUnsubscribe =
/*#__PURE__*/
function () {
  function PublicUnsubscribe() {
    _classCallCheck(this, PublicUnsubscribe);

    this.addExtraValidateMethods();
    this.initForm();
    this.checkPushNotificationrMessage();
  }

  _createClass(PublicUnsubscribe, [{
    key: "checkPushNotificationrMessage",
    value: function checkPushNotificationrMessage() {
      var _this = this;

      //any checkbox updated
      $('.require-one').change(function () {
        _this.updatePushNotificationMessage();
      }); //any email inputs

      $('input[name="email"]').on('input', function () {
        _this.updatePushNotificationMessage();
      });
    }
  }, {
    key: "updatePushNotificationMessage",
    value: function updatePushNotificationMessage() {
      if (this.isOnlyPushNotificationSelected()) {
        $('.js-push-notification-message').removeClass('hidden');
      } else {
        $('.js-push-notification-message').addClass('hidden');
      }
    }
  }, {
    key: "isOnlyPushNotificationSelected",
    value: function isOnlyPushNotificationSelected() {
      var emailNotEntered = $('input[name="email"]').val().length === 0;
      var onlyPushNotificationSelected = $('input[name="push_notifications"]').is(":checked") && $('.require-one:checked').length === 1;
      return emailNotEntered && onlyPushNotificationSelected;
    }
  }, {
    key: "addExtraValidateMethods",
    value: function addExtraValidateMethods() {
      //check box group - require one selected
      $.validator.addMethod('require-one', function (value, element) {
        if ($('.require-one:checked').length > 0) return true; //We have three types of checkbox group, (unsub[], push_notifications, corp_comms)
        //We only want to show one validation message for all so only target one of them. 

        return $(element).attr('name') !== 'unsub[]';
      }, 'Please select at least one option.'); //Recapture - validated not robot

      $.validator.addMethod('recapture', function () {
        //check recapture on page
        if (typeof grecaptcha === "undefined") return true; //check valid

        return grecaptcha.getResponse().length > 0;
      }, 'Please prove you are not a robot.');
    }
  }, {
    key: "initForm",
    value: function initForm() {
      var _this2 = this;

      //setup form submit with validate
      $("#unsubscribe").submit(function (e) {
        e.preventDefault();
      }).validate({
        ignore: [],
        errorLabelContainer: '.js-error-messages',
        errorElement: "li",
        errorClass: 'error',
        onkeyup: false,
        onclick: false,
        rules: {
          email: {
            required: true,
            email: true
          },
          robot: {
            recapture: true
          }
        },
        messages: {
          email: {
            required: "Please enter your email address."
          },
          robot: {
            required: "Please prove you are not a robot."
          }
        },
        submitHandler: function submitHandler(form) {
          _this2.onValidSubmit(form);
        }
      });
    }
    /**
     * Called when form is valid and submitted
     * @param  form - the form
     * @return 
     */

  }, {
    key: "onValidSubmit",
    value: function onValidSubmit(form) {
      //check for push notifications
      if ($('input[name="push_notifications"]:checked').val()) {
        mindtools.tools.firebase.messaging.getToken().then(function (token) {
          console.log("push notification token = " + token);
          $('input[name=push_notification_token]').val(token);
        }).catch(function (err) {
          console.log('Unable to get token', err);
        }).finally(function () {
          form.submit();
        });
      } else {
        form.submit();
      }
    }
  }]);

  return PublicUnsubscribe;
}();

new PublicUnsubscribe();

},{}]},{},[1]);
