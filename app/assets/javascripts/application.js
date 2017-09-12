// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/modal
//= require bootstrap-sprockets
//= require select2
//= require social-share-button
//= require social-share-button/wechat
//= require_tree .

// 回到顶部按钮
$(document).on('click','#gotop', function(){
  $('body').animate({'scrollTop': 0},200);
})

$(window).scroll(function(){
  if ($(this).scrollTop() > 500 ) {
    $('#gotop').fadeIn();
  } else {
    $('#gotop').fadeOut();
  }
})
