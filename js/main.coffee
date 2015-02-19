---
---

form_states = ->
  $('.form-control').blur ->
    if $(@).val() != "" and $(@).val() != "Choose"
      $(@).parent().addClass 'filled'
    else
      $(@).parent().removeClass 'filled'

  $('select').change ->
    if $(@).val() != "" and $(@).val() != "Choose"
      $(@).parent().addClass 'filled'
      $(@).parent().parent().addClass 'filled'
    else
      $(@).parent().removeClass 'filled'
      $(@).parent().parent().removeClass 'filled'

form_validate = ->
  $(document).keyup ->
    if $('#name').val() != "" and $('#phone').val() != "" and $('#email').val() != ""
      $('#submit').addClass 'available'
    else
      $('#submit').removeClass 'available'

form_submit = ->
  $('#contact-form').submit ->
    if $('#name').val() != "" and $('#phone').val() != "" and $('#email').val() != ""
      return true
    else
      return false

set_next_form_value = ->
  $('#next').val("//" + window.location.host + "?thanks=true")

has_thanks = ->
  query = window.location.search.substring(1)
  raw_vars = query.split "&"
  params = {}
  for v in raw_vars
    [key, val] = v.split "="
    params[key] = decodeURIComponent val

  if params.thanks == "true"
    $('#thanks').toggle()

nav_scroll = ->
  $('ul.nav li a, #see-button').click (e) ->
    unless $(@).hasClass 'external'
      e.preventDefault()

      if $('#home').length > 0
        target = $(@).attr('href')
        $('html, body').animate
          scrollTop: $(target).offset().top
        , 500, 'easeInOutQuart'
      else
        window.location = "/"+$(@).attr('href')

client_swipe = ->
  $(".carousel-inner").swipe
    swipeLeft: (event, direction, distance, duration, fingerCount) ->
      $(this).parent().carousel "next"
      return
    swipeRight: ->
      $(this).parent().carousel "prev"
      return
    threshold: 0

client_key_change = ->
  $(document).bind "keyup", (e) ->
    if e.which == 39
      $('.modal.in a.right').click()
    else if e.which == 37
      $('.modal.in a.left').click()

retina_images = ->
  $('img').retina()

$ ->
  has_thanks()
  nav_scroll()
  set_next_form_value()
  form_states()
  form_validate()
  form_submit()
  client_swipe()
  client_key_change()
  retina_images()
