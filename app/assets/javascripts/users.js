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
          $('.player_form').append('<input type="text" value="" name="team[roster][]" id="team_roster"><br>');
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
      $('.create_edit_vacate_games').show('fast')
    });

    $('.close_window').click(function(){
      $('.create_edit_vacate_games').hide('fast');
    });

    $('.create_game_button').click(function(){
      $('.create_game_form').toggle('fast')
    });

    $('.day').click(function(){
      var team_id = $('.team_id').text();
      var game_date = $(this).text();
      $('#game_date').val(game_date);
      $('.hidden_team_id').val(team_id);
    });

  //ADDTENDING GAMES

    $('.game_attendance').click(function(){
      $('.attending_container').show('fast');

      $('.remove_info').remove();
      var game_description = $(this).find('.calendar_game_info p:nth-child(1)').text();
      var game_time = $(this).find('.calendar_game_info p:nth-child(2)').text();
      var game_location = $(this).find('.calendar_game_info p:nth-child(3)').text();
      $('.close_out').append("<div class='remove_info'>"+"<div id='remove_info_gd'>"+game_description+'</div>'+"<div id='remove_info_gt'>"+game_time+'</div>'+"<div id='remove_info_gl'>"+game_location+'</div>'+"</div>")

      // var game_info_pretrim = $(this).text();
      // var game_info = $.trim(game_info_pretrim);
      $('.games_not_attending_game_info').val(game_description);


      $('.close_out').click(function(){
        $('.attending_container').hide();
      })
    });

  // CALENDAR HEADER TEXT VALUE CHANGE 

  $('.calendar-header').children('a').last().text('>');
  $('.calendar-header').children('a').first().text('<');

  // SET SPORT ICON ON CALENDAR
  $( '.Soccer' ).attr( "src", 'http://oi60.tinypic.com/2jct0yp.jpg');
  $( '.Basketball' ).attr( "src", 'http://oi58.tinypic.com/2wrgtqo.jpg');
  $( '.Bowling' ).attr( "src", 'http://oi57.tinypic.com/2d0b8ra.jpg');
  $( '.Kickball' ).attr( "src", 'http://oi58.tinypic.com/jh7cax.jpg');
  $( '.Flag_Football' ).attr( "src", 'http://oi62.tinypic.com/nmgvol.jpg');
  $( '.Dodgeball' ).attr( "src", 'http://i62.tinypic.com/2cfb3uo_th.jpg');
  $( '.Baseball' ).attr( "src", 'http://oi57.tinypic.com/nfpv80.jpg');
  $( '.Softball' ).attr( "src", 'http://oi57.tinypic.com/nfpv80.jpg');
  $( '.Tennis' ).attr( "src", 'http://i62.tinypic.com/vgpit4_th.png');
  $( '.Volleyball' ).attr( "src", 'http://oi58.tinypic.com/wrgeh4.jpg');


});