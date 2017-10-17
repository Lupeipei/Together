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
//= require ckeditor/init
//= require 'china_city/jquery.china_city'
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN
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


//手机适配c测试
$(document).ready(function() {
    // This will fire when document is ready:
    $(window).resize(function() {
        // This will fire each time the window is resized:
        if($(window).width() >= 1024) {
            // if larger or equal
            $('.element').show();
        } else {
            // if smaller
            $('.element').hide();
        }
    }).resize(); // This will simulate a resize to trigger the initial run.
});

// 图片自适应大小支持代码块
// 在product/show.html.erb的页面中，对img图片用这一格式进行校正
// 让图片在大于div宽度时自动缩小不而溢出，确保版面的公正和美观
function ReImgSize(){
  for (j=0;j<document.images.length;j++)
  {
    document.images[j].width=(document.images[j].width>420)?"420":document.images[j].width;
  }
}
