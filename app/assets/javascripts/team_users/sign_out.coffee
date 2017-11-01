$(document).on 'turbolinks:load', ->
  $('.sign_out_team').on 'click', (e) =>
    $('#sign_out_modal').modal('open')
    $('.sign_out_team_form').attr('action', 'team_users/' + $('.user_id').val())
    return false

  $('.sign_out_team_form').on 'submit', (e) ->
    $.ajax e.target.action,
        type: 'DELETE'
        dataType: 'json',
        data: {team_id: $(".team_id").val()}
        success: (data, text, jqXHR) ->
          $(location).attr('href', '/')
          Materialize.toast('Success in sign out of team &nbsp;<b>:(</b>', 4000, 'green')
        error: (jqXHR, textStatus, errorThrown) ->
          Materialize.toast('Problem to sign out Team &nbsp;<b>:(</b>', 4000, 'red')
    return false

