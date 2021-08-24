

	var newXHR,
		getTrackerErrorDataAjax,
		errorWatchInit,
		vanillaJsAjax,
		serialize,
		reqListener;

	// create event tracker object shim
	pageTracker2 = {};

	/**
	* create method based off our pageTracker2 object for track event
	* @return null
	*/

	pageTracker2._trackEvent = function( a, b, c, d, e ) {

		ga( 'pageTracker2.send', 'event', a, b, c, d, e );

	};

	/**
	 * Ajax response
	 */
	reqListener = function () {

		if ( this.status !== 200 ) {

			console.log('Response: ' + this.status);
			console.log( 'UBC Google Analytics Shim' );

		}
	}

	 /**
	 * Serialize string object into url param
	 * @param string obj - the object
	 */

	serialize = function (obj) {
		var str = [];
		for (var p in obj)
			if (obj.hasOwnProperty(p)) {
				str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
			}
		return str.join("&");
	};

	 /**
	 * Capture errors based off our selection
	 * @param string msg - the js error message
	 * @param string path - the js file the error originated
	 * @param string ajaxFile - site/admin-ajax.php
	 * @param string windowlocation - the url the js error originated
	 * @param string nonce
	 */

	vanillaJsAjax = function ( jsError ) {

		// Setup up a XHR object
		newXHR = new XMLHttpRequest();

		// after load show response message
		newXHR.addEventListener('load', reqListener);

		// Gather what we need for our reponse
		var msg =  jsError.message,
			path = jsError.filename,
			windowlocation = window.location.href,
			nonce = js_errors.nonce,
			currentdate = new Date(),
			datetime = currentdate.getDate() + '/' + (currentdate.getMonth() + 1) + '/' + currentdate.getFullYear() + ' @ ' + currentdate.getHours() + ':' + currentdate.getMinutes(),
			data = { action: 'ubc_ga_track_tracker_error', errorMsg: msg, errorUrl: path, postUrl: windowlocation, theDate: datetime, getNonce : nonce },
			serializeToUrlParam = serialize(data); 

		// Open connection with admin-ajax.php
		newXHR.open('POST', js_errors.wpajaxurl );

		// The content type of the data being sent
		newXHR.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

		// Send our data
		newXHR.send(serializeToUrlParam );

	};

	// // End getTrackerErrorDataAjax()

	/**
	* addEventListener for error with a casual search criteria
	* @param string searchTerm - search word(s)
	*/

	errorWatchInit = function( searchTerm ) {

		window.addEventListener( 'error', function( e )  {

			// Test if the error message is the one we want
			if ( e.message.indexOf( searchTerm ) >= 0 ) {

				vanillaJsAjax( e );

			}

		} );

	};
	//End errorWatchInit()


	errorWatchInit( 'pageTracker2' );



