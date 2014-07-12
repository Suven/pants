#= require skrollr.min
s = undefined
initSkrollr = ->
  if s?
      s.refresh()
  else if !(/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent || navigator.vendor || window.opera)
    s = skrollr.init
      smoothScrolling: false

$ ->
  initSkrollr()

$(document).bind 'page:load', ->
  $('[autofocus="autofocus"]').focus()

$(document).on 'page:change', ->
  _gs('track') if (_gs?)
  ga('send', 'pageview') if (ga?)
  initSkrollr()
