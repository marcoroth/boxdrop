import "@stimulus/polyfills"
import "core-js/es/array/for-each"
import "core-js/es/array/includes"

// https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/CustomEvent#Polyfill
(function () {
  if ( typeof window.CustomEvent === "function" ) return false;

  function CustomEvent ( event, params ) {
    params = params || { bubbles: false, cancelable: false, detail: null };
    var evt = document.createEvent( 'CustomEvent' );
    evt.initCustomEvent( event, params.bubbles, params.cancelable, params.detail );
    return evt;
   }

  window.CustomEvent = CustomEvent;
})();

// https://developer.mozilla.org/en-US/docs/Web/API/NodeList/forEach#Polyfill
(function () {
  if (window.NodeList && !NodeList.prototype.forEach) {
     NodeList.prototype.forEach = Array.prototype.forEach;
  }
})();
