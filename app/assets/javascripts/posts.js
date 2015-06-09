$(document).ready(function(){
  $('.add_post').click(function(){
      
      $(this).children().toggle('fast');
      var post_game_info = $(this).children().children(".post_title").text().trim();

      $(this).children().children().children().children('.posts_attending_game_info').val(post_game_info);

  });
});