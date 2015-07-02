// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require flipclock.min
//= require_tree .

$(document).on('ready on load', function() {
    
//    var date  = new Date(Date.new(2015, 9, 25, 12, 0, 0));
//    var now   = new Date();
//    var diff  = date.getTime()/1000 - now.getTime()/1000;
    
    var clock = $('#countdown_clock').FlipClock({
        clockFace: 'DailyCounter',
		countdown: true,
    });
    clock.setTime(new Date(2015,9,25).getTime()/10000 - new Date().getTime()/10000);
    clock.setCountdown(true);
    clock.start(function() {
    });
});