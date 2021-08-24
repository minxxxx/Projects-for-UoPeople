$(window).load(function () {
	if (!WM_readCookie('HelpOverlay2015')) {
    $(".help.slide-bottom").slideToggle(1000);
	}
	});

 $(function() {
    $( ".help.slide-bottom .help-engage" ).click(function(){
      $( ".help.slide-bottom" ).slideToggle( 200 );
      $( ".help.popup-center" ).fadeIn( 700 );
    });
  });
  
  $(document).mouseup(function (e)
			{	var container = $(".help.popup-center");				
				if (container.has(e.target).length === 0)
				{	container.hide();					
				}
			});
  
  window.onkeydown = function( event ) {
    if ( event.keyCode === 27 ) {
        $(".help.popup-center").hide();
    }
};
  