$(document).ready(function(){
      $('#team_create_form_button').click(function(){
        $('#team_create_form').toggle("slow");
      });
      $('#join_team_form_button').click(function(){
        $('#join_team_form').toggle("slow");
      });


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
});