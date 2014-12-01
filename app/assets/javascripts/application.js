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
//= require jquery-ui
//= require foundation
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function(){
  $(".text").click(function(){
    if ($(this).hasClass("one")){
      hideAll();
      $("#one").fadeIn();
      $(".one").css("border", "2px solid #fed832")
    }
    if ($(this).hasClass("two")){
      hideAll();
      $("#two").fadeIn();
      $(".two").css("border", "2px solid #fed832")
    }
    if ($(this).hasClass("three")){
      hideAll();
      $("#three").fadeIn();
      $(".three").css("border", "2px solid #fed832")
    }
  });
});

function hideAll(){
  $("#one, #two, #three").hide();
  $(".one, .two, .three").css("border", "none")
}

var counter = 0;
var ids = ["one", "two", "three"];
$(document).ready(function(){
  setInterval(function(){
    console.log(counter);
    changeToSlide("two");
  }, 5000);
});

function changeToSlide(slide){
  $("#" + ids[counter]).fadeOut(function() {
    if (counter >= 2){
      counter = 0;
    }
    else{
      ++counter;
    }
    hideAll();
    $("#" + ids[counter]).fadeIn();
    $("." + ids[counter]).css("border", "2px solid #fed832")
  });
}

