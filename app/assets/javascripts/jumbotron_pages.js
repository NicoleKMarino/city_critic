$(document).ready(function() {
    var numberOfpages = 3;

		var startAtPage = 0;  //Change to page # you want to start at || DEFAULT = 0;
		for(var i=0;i < numberOfpages+1;i++)
			  {
				    var fielder = "#page"+i;
				  if(i == startAtPage)
				  {
					$(fielder).toggleClass('pages start-page');;
				  }
				  else{

					  $(fielder).hide();
				  }
			  }


    $('.forward').click(function() {
        $this = $(this);
        flipPage($this.data('current'), $this.data('next'));
    });
    $('.back').click(function() {
        $this = $(this);
        flipBack($this.data('current'), $this.data('back'));
    });


     function flipPage(fromPage,toPage)
     {
        var fromPage = "#page"+ fromPage;
        var toPage = "#page"+ toPage;


        $(fromPage).animate({left: '-150%'}, 500, function() {
                $(fromPage).hide();
                $(toPage).animate({left: '20%'},200, function(){}).show();
        });

    }

    function flipBack(fromPage,toPage)
    {
        var fromPage = "#page"+ fromPage;
        var toPage = "#page"+ toPage;

        $(fromPage).animate({left: '150%'}, 500, function() {
            $(fromPage).hide();
            $(toPage).animate({left: '20%'},200, function(){}).show();
        });
    }
});
