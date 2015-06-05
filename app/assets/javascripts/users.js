$(document).ready(function(){

  // CREATE TEAM ON USER DASHBOARD PAGE
      $('#team_create_form_button').click(function(){
        $('#team_create_form').toggle("slow");
      });
      $('#join_team_form_button').click(function(){
        $('#join_team_form').toggle("slow");
      });

  // CREATE PLAYER ON TEAM CREATE PAGE
      $('.player_button').click(function(){
          $('.player_form').append('<input type="text" value="" name="team[roster][]" id="team_roster"><br>')
        });
      $('.game_button').click(function(){
      $('.game_form').append('<input type="text" value="" name="team[games][]" id="team_games"><br>')
      });

      $('.expand_icon_container').click(function(){
        $('.expand_icon_container').toggleClass("selected", "not_selected");
        $('.nav_dropdown').toggle('fast')
      });

  // ADD GAME TO CALENDAR ON CLICK
    $('.day').click(function(){
      $('.create_edit_vacate_games').toggle('fast')
    });

    $('.create_game_button').click(function(){
      $('.create_game_form').toggle('fast')
    });

    $('.day').click(function(){
      var team_id = $('.team_id').text();
      var game_date = $(this).text();
      $('#game_time').val(game_date);
      $('.hidden_team_id').val(team_id);
    });

  //AJAX FOR EDIT


});