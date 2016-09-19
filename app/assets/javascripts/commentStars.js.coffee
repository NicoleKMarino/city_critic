$("#comment_stars_display").ready ->
  el = document.querySelector('#comment_stars_display');
  currentRating = 0

  maxRating= 5

  callback = (rating) ->
    $("#comment_stars").val(rating);

  myRating = rating(el, currentRating, maxRating, callback)
