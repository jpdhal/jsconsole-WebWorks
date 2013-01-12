/**
 * Created by .
 * User: mhaag
 * Date: 3/26/11
 */
var PlaybookExtentions = {};
var bb;
function onwebworksready() {
	bb = blackberry;
}
function onload() {
	window.removeEventListener('load', onload, false);
	document.addEventListener('webworksready', onwebworksready, false);
}
window.addEventListener('load', onload, false);
PlaybookExtentions.runBrowser = function(theUrl) {
    var args = new bb.invoke.BrowserArguments(theUrl);
    bb.invoke.invoke(bb.invoke.APP_BROWSER, args);
}
PlaybookExtentions.exit = function(){
    bb.app.exit();
}
