/**
 * Created by .
 * User: mhaag
 * Date: 3/26/11
 */
var PlaybookExtentions = {};
var bb;
try{
bb = blackberry;
} catch(e){}

PlaybookExtentions.runBrowser = function(theUrl) {
    var args = new bb.invoke.BrowserArguments(theUrl);
    bb.invoke.invoke(bb.invoke.APP_BROWSER, args);
}
PlaybookExtentions.exit = function(){
    bb.app.exit();
}
