// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require nested_form_fields
//= require jquery_raty.js

$(document).on('turbolinks:load',function(){
  $('#new-review-show').click(function(){
    $('#new-review-modal').fadeIn();
  });

  $('#review-close-modal').click(function(){
    $('#new-review-modal').fadeOut();
  });
});

$(document).on('turbolinks:load',function(){

  var $reviews_show = $('#user-reviews-show');
  var $reviews_modal = $('#user-reviews-modal');
  var $followers_show = $('.user-followers-show');
  var $followers_modal = $('#user-followers-modal');
  var $following_show = $('#user-following-show');
  var $following_modal = $('#user-following-modal');
  var $ranking_show = $('#user-ranking-show');
  var $ranking_modal = $('#user-ranking-modal');

  $reviews_show.css('background-color', '#4A44F2');

  $reviews_show.click(function(){
    $reviews_show.css('background-color', '#4A44F2');
    $followers_show.css('background-color', '');
    $following_show.css('background-color', '');
    $ranking_show.css('background-color', '');
    $reviews_modal.fadeIn();
    $followers_modal.fadeOut();
    $following_modal.fadeOut();
    $ranking_modal.fadeOut();
  });

  $followers_show.click(function(){
    $followers_show.css('background-color', '#4A44F2');
    $reviews_show.css('background-color', '');
    $following_show.css('background-color', '');
    $ranking_show.css('background-color', '');
    $followers_modal.fadeIn();
    $reviews_modal.fadeOut();
    $following_modal.fadeOut();
    $ranking_modal.fadeOut();
  });

  $following_show.click(function(){
    $following_show.css('background-color', '#4A44F2');
    $ranking_show.css('background-color', '');
    $followers_show.css('background-color', '');
    $reviews_show.css('background-color', '');
    $following_modal.fadeIn();
    $followers_modal.fadeOut();
    $reviews_modal.fadeOut();
    $ranking_modal.fadeOut();
  });

  $ranking_show.click(function(){
    $ranking_show.css('background-color', '#4A44F2');
    $following_show.css('background-color', '');
    $followers_show.css('background-color', '');
    $reviews_show.css('background-color', '');
    $ranking_modal.fadeIn();
    $following_modal.fadeOut();
    $followers_modal.fadeOut();
    $reviews_modal.fadeOut();
  });
});

$(document).on('turbolinks:load',function(){

  var $all_reviews_show = $('#all-reviews-show');
  var $all_reviews_modal = $('#all-reviews-modal');
  var $movie_reviews_show = $('#movie-reviews-show');
  var $movie_reviews_modal = $('#movie-reviews-modal');
  var $spoil_reviews_show = $('#spoil-reviews-show');
  var $spoil_reviews_modal = $('#spoil-reviews-modal');

  $all_reviews_show.css('background-color', '#4A44F2');

  $all_reviews_show.click(function(){
    $all_reviews_show.css('background-color', '#4A44F2');
    $movie_reviews_show.css('background-color', '');
    $spoil_reviews_show .css('background-color', '');
    $all_reviews_modal.fadeIn();
    $movie_reviews_modal.fadeOut();
    $spoil_reviews_modal.fadeOut();
  });

  $movie_reviews_show.click(function(){
    $movie_reviews_show.css('background-color', '#4A44F2');
    $all_reviews_show.css('background-color', '');
    $spoil_reviews_show .css('background-color', '');
    $movie_reviews_modal.fadeIn();
    $all_reviews_modal.fadeOut();
    $spoil_reviews_modal.fadeOut();
  });

  $spoil_reviews_show.click(function(){
    $spoil_reviews_show.css('background-color', 'red');
    $all_reviews_show.css('background-color', '');
    $movie_reviews_show.css('background-color', '');
    $spoil_reviews_modal.fadeIn();
    $all_reviews_modal.fadeOut();
    $movie_reviews_modal.fadeOut();
  });

});