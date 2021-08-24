(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
"use strict";

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

var SearchFilter =
/*#__PURE__*/
function () {
  function SearchFilter() {
    _classCallCheck(this, SearchFilter);

    this.init();
  }

  _createClass(SearchFilter, [{
    key: "init",
    value: function init() {
      if (document.querySelector("input[id=filter-toggle]") !== null) {
        this.registerToggleFilter();
        this.registerCheckboxChecked();
        this.registerClearAll();
        this.registerApplyFilterButton();
      }
    }
  }, {
    key: "registerToggleFilter",
    value: function registerToggleFilter() {
      document.querySelector("input[id=filter-toggle]").addEventListener('change', function () {
        var start = null;
        var filters = document.getElementById('SF_form');
        var collapseContainer = document.getElementById('filter-container');
        var filterHeight = filters.clientHeight;
        var progress = 0;

        if (this.checked) {
          function animateIn(timestamp) {
            if (!start) start = timestamp;
            progress = timestamp - start;
            progress = progress * 2;
            collapseContainer.style.height = Math.min(progress, filterHeight) + 'px';

            if (progress < filterHeight) {
              window.requestAnimationFrame(animateIn);
            } else {
              collapseContainer.style.height = '100%';
            }
          }

          window.requestAnimationFrame(animateIn);
        } else {
          function animateOut(timestamp) {
            if (!start) start = timestamp;
            progress = timestamp - start;
            progress = progress * 2;
            var progressHeight = filterHeight - progress;
            collapseContainer.style.height = progressHeight + 'px';

            if (progressHeight > 0) {
              window.requestAnimationFrame(animateOut);
            } else {
              collapseContainer.style.height = '0';
            }
          }

          window.requestAnimationFrame(animateOut);
        }
      });
    }
  }, {
    key: "registerCheckboxChecked",
    value: function registerCheckboxChecked() {
      document.querySelector('#SF_filter-list').onclick = function (event) {
        var nearestLabel = event.target.closest('label');
        var nearestCheckbox = event.target.closest('input[type=checkbox]');

        if (nearestLabel !== null && nearestCheckbox !== null) {
          if (nearestCheckbox.checked) {
            nearestLabel.addClass('theme-highlight-colour');
          } else {
            nearestLabel.removeClass('theme-highlight-colour');
          }
        }
      };
    }
  }, {
    key: "registerClearAll",
    value: function registerClearAll() {
      document.querySelector('#SF_js-clear-selections').onclick = function (event) {
        var checkBoxes = document.querySelectorAll('#SF_filter-form input[type=checkbox]');
        var labelElements = document.querySelectorAll('label');
        var filterCount = document.getElementById('SF_filter-count');
        var filterCountInputBox = document.querySelector('input[name="filter_count"]');

        for (var i = 0; i < checkBoxes.length; i++) {
          checkBoxes[i].checked = false;
        }

        labelElements.removeClass('theme-highlight-colour');
        filterCount.innerHTML = '';
        filterCountInputBox.value = 0;
      };
    }
  }, {
    key: "registerApplyFilterButton",
    value: function registerApplyFilterButton() {
      document.getElementById('SF_filter-form').addEventListener('submit', this.applyFilterAction);
    }
  }, {
    key: "applyFilterAction",
    value: function applyFilterAction() {
      var isSafari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);
      var progressBar = document.querySelectorAll('.search-form-wrapper .js-progress-indicator');
      var filterButton = document.getElementById('filter-apply');

      if (progressBar.length && !isSafari) {
        progressBar.addClass('loader');
      }

      filterButton.setAttribute('disabled', true);
      var filterCountInputBox = document.querySelector('input[name="filter_count"]');
      var filterCount = document.getElementById('SF_filter-count');
      var checked = document.querySelectorAll('.checkbox input[type=checkbox]:checked');

      if (checked.length === 0) {
        filterCount.innerHTML = '';
        filterCountInputBox.value = 0;
      } else {
        filterCount.innerHTML = '(' + checked.length + ')';
        filterCountInputBox.value = checked.length;
      }
    }
  }]);

  return SearchFilter;
}();

mindtools.tools.onDomReady(function () {
  mindtools.components = mindtools.components || {};
  mindtools.components.searchFilter = new SearchFilter();
});

},{}]},{},[1]);
