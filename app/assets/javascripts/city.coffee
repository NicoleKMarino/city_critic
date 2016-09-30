$(document).ready ->
  showCategory = () ->
      $('.collapse-expand').removeClass('glyphicon-chevron-down')
      $('.collapse-expand').addClass('glyphicon-chevron-up')
      return
  hideCategory = () ->
      $('.collapse-expand').removeClass('glyphicon-chevron-up')
      $('.collapse-expand').addClass('glyphicon-chevron-down')
      return
  if ($(window).width() <= 480)
    $('.panel-collapse').removeClass('in')
    hideCategory()
  $('.category-content').on('show.bs.collapse', ->
    showCategory()
    return
  ).on 'hide.bs.collapse', ->
    hideCategory()
    return

  $(window).resize ->
    if ($(window).width() >= 480)
      $('.panel-collapse').collapse("show");
    if ($(window).width() <= 480)
      $('.panel-collapse').collapse("hide");
