// Google Analytics Tracking code Asynchronous Syntax

(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

// MIT OCW (mitopencourseware@gmail.com)
ga('create', 'UA-5145472-1', 'mit.edu');

// Hewlett Benchmarking Rollup (oer.benchmark@gmail.com)
ga('create', 'UA-5033010-1', 'mit.edu', {'name': 'hewlettOERQATracker'});

//MIT sitewide
ga('create', 'UA-1592615-30',{'name':'mitsitewide'});
//ga('send', 'pageview');  --- Commented this to remove duplicate call. This line is present in html page also.



//Enhanced Link Attribution
ga('require', 'linkid', 'linkid.js');

ga('hewlettOERQATracker.send', 'pageview', location.pathname + location.search + location.hash);
ga('mitsitewide.send','pageview');
//Start Auto tracking code
var docIdentifier  = '/download';
  
function listenToClicks() { 

  var fileTypes  = [".doc",".xls",".exe",".zip",".pdf",".mp3"];
    
	if (document.getElementsByTagName) {
    var aTags = document.getElementsByTagName('a'); 
    
    ANCHOR:
    for (var i = 0; i < aTags.length; i++) { 
      if (aTags[i]=="")                                         {continue ANCHOR; }
      if (typeof aTags[i].hostname == "undefined")              {continue ANCHOR; }
      if (aTags[i].protocol.indexOf("javascript") != -1)        {continue ANCHOR; }
      
      if (aTags[i].hostname.indexOf(window.location.href)) {
       
        FILE:
        // look for a file extension
        for (k = 0; k < fileTypes.length; k++){
          if (aTags[i].pathname.indexOf(fileTypes[k]) != -1) {
            startListening(aTags[i],"click",trackDocuments);  continue ANCHOR; } // file extension was found, go to next anchor
        }
      }
    }    
	}
}

function startListening (obj,evnt,func) { 
  if (obj.addEventListener) { 
    obj.addEventListener(evnt,func,false);
  } else if (obj.attachEvent) { 
    obj.attachEvent("on" + evnt,func);
  }
}

// trackDocuments:  calls _trackPageview before downloading a file
function trackDocuments (evnt) { 
  var url = (evnt.srcElement) ? "/" + evnt.srcElement.pathname : this.pathname; 
   url = docIdentifier + url;  
   ga('send', 'pageview', url); 
   ga('hewlettOERQATracker.send', 'pageview', url);  
}

//track all the events related to specific pages
function trackEvents(category,action,label){
    ga('send', 'event', category, action, label);   
    ga('hewlettOERQATracker.send', 'event', category, action, label);
}

startListening(window, 'load', listenToClicks); // register an event listener to run the script when the load event fires.
//End Auto tracking code
