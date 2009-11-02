var generateTweets = function() {
  var limit = 15;

  $.getJSON('http://search.twitter.com/search.json?q=%23codemash&lang=en&show_user=true&rpp=' + limit + '&callback=?', function(data){
    var results = data.results;
    $.each(results, function() {
      var size = ((1.5*Math.random()) + .75).toFixed(2).toString() + 'em';
      $('#tweets').append('<li style="font-size:' + size + '">' + this.from_user + ': ' + this.text + '</li>');
    });
  });
}

$(document).ready(generateTweets);
