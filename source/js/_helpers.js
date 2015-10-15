(function(window) {
    'use strict';

    // console.log wrapper
    window.clog = function(msg) {
        console.debug(Array.prototype.slice.call(arguments));
    };
}(window));
