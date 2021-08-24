(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
"use strict";

function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

var CookieHelper = _interopRequireWildcard(require("../tools/CookieHelper"));

function _getRequireWildcardCache() { if (typeof WeakMap !== "function") return null; var cache = new WeakMap(); _getRequireWildcardCache = function _getRequireWildcardCache() { return cache; }; return cache; }

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } if (obj === null || _typeof(obj) !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

var ComponentPushNotifications =
/*#__PURE__*/
function () {
  function ComponentPushNotifications() {
    _classCallCheck(this, ComponentPushNotifications);

    var isPhantomJS = /phantom/i.test(navigator.userAgent);
    if (isPhantomJS) return;
    this.init();
  }

  _createClass(ComponentPushNotifications, [{
    key: "init",
    value: function init() {
      var _this = this;

      var pageCount = Number(CookieHelper.get('pagecount'));

      if (typeof navigator.serviceWorker !== 'undefined') {
        navigator.serviceWorker.register('/public/assets/js/sw.js').then(function (registration) {
          mindtools.tools.firebase.messaging.useServiceWorker(registration);
          mindtools.tools.firebase.messaging.onTokenRefresh(function () {
            mindtools.tools.firebase.messaging.getToken().then(function (refreshedToken) {
              console.log('Token refreshed.');

              _this.addDevice(refreshedToken, true);
            }).catch(function (err) {
              console.log('Unable to retrieve refreshed token ', err);
            });
          }); // check for permission
          // if we have it, get token, check we have token

          mindtools.tools.firebase.messaging.getToken().then(function (token) {
            if (!token || token.length === 0) {
              // No token - throw exception to handle requesting permission
              throw 'error';
            } // Already have a token, add the device


            _this.addDevice(token, false);
          }).catch(function () {
            if (_this.shouldRequestPermission(pageCount)) {
              _this.requestPermission();
            }
          });
        }).catch(this.requestPermission);
        mindtools.tools.firebase.messaging.onMessage(function (payload) {
          var notification = new Notification(payload.data.title, {
            body: payload.data.body,
            icon: payload.data.icon
          });
          notification.addEventListener('click', function () {
            if (typeof payload.data.url !== 'undefined' && payload.data.url.length > 0) {
              window.open(payload.data.url);
              this.close();
            }
          });
        });
      }
    }
    /**
     * Requests permission to send push notifications through the user's browser
     */

  }, {
    key: "requestPermission",
    value: function requestPermission() {
      var _this2 = this;

      mindtools.tools.firebase.messaging.requestPermission().then(function () {
        return mindtools.tools.firebase.messaging.getToken();
      }).then(function (token) {
        _this2.addDevice(token, false);
      }).catch(function () {});
    }
    /**
     * Checks if push notification permission should be requested or not
     * @param {number} pageCount
     * @returns {boolean}
     */

  }, {
    key: "shouldRequestPermission",
    value: function shouldRequestPermission(pageCount) {
      if ($('html').hasClass('public')) {
        // public site
        console.log("Checking if we should request push notification permissions for the PUBLIC site");

        if (pageCount === 2) {
          console.log("Page count is 2 - request permission");
          return true;
        } else {
          console.log("Page count is " + pageCount + " but needs to be 2 to request permission");
          return false;
        }
      } else {
        // club site
        console.log("Checking if we should request push notification permissions for the CLUB site"); // If allowPush is defined in the club it must be true for pushes to work

        if (typeof allowPush !== 'undefined' && !allowPush) {
          console.log("allowPush is false - cannot request permission");
          return false;
        } // If we are on the club homepage, only allow push when the new member modal is hidden


        if (window.location.pathname === '/community/index.php' && !$('#newMemberModal').hasClass('show-new-member-popup')) {
          console.log("Club homepage without show member popup - request permission");
          return true;
        } else {
          console.log("Not on club homepage - cannot request permission");
          return false;
        }
      }
    }
    /**
     * Add the device token to the list of push notification recipients
     * @param {!Object} token
     * @param {boolean} refreshed
     */

  }, {
    key: "addDevice",
    value: function addDevice(token, refreshed) {
      console.log("Attempting to add device token: " + token);
      var consent = CookieHelper.get("push_consent");
      console.log("Consent = " + consent);

      if (consent === "no") {
        console.log('User has not consent to push notifications');
        return;
      }

      if (!token || token.length === 0) {
        console.log('Unable to get token for push notifications');
        return;
      } // Call the ajax endpoint to add the device


      $.ajax({
        url: '/notifications/addDevice',
        type: 'POST',
        dataType: 'json',
        data: {
          'token': token,
          'refreshed': refreshed
        }
      });
    }
  }]);

  return ComponentPushNotifications;
}();

mindtools.tools.allDone(function () {
  mindtools.tools.componentPushNotifications = new ComponentPushNotifications();
});

},{"../tools/CookieHelper":2}],2:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.get = get;
exports.set = set;
exports.setSessionOnly = setSessionOnly;
exports.remove = remove;

/*
 * helper function to read a cookie element
 */
function get(cname) {
  var name = cname + "=";
  var ca = document.cookie.split(';');

  for (var i = 0; i < ca.length; i++) {
    var c = ca[i];

    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }

    if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
  }

  return "";
}
/*
 * helper function to set a cookie element
 */


function set(cname, cvalue) {
  var exdays = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : 365;
  var d = new Date();
  d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
  var expires = "expires=" + d.toUTCString();
  document.cookie = cname + "=" + cvalue + "; " + expires + "; domain=.mindtools.com; path=/";
} //Not putting an expires part in will create a session only cookie


function setSessionOnly(cname, cvalue) {
  document.cookie = cname + "=" + cvalue + "; domain=.mindtools.com; path=/";
}

function remove(cname) {
  //overrite and expire in 1 second
  var d = new Date();
  d.setTime(d.getTime() + 1000);
  var expires = "expires=" + d.toUTCString();
  document.cookie = cname + "=''; " + expires + "; domain=.mindtools.com; path=/";
}

},{}]},{},[1]);
