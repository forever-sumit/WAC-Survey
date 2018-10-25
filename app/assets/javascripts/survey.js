$(document).ready(function() {
  var tabIndex = 0;
  //$('#section-' + (tabIndex+1)).addClass('active');
  colorNav(tabIndex);
  $('#submit').hide();
  $('#previous').addClass('disabled');

  // sets large text to margin-left for display purposes

  $('label').each(function() {
    if(this.innerHTML.length > 20) {
      this.classList.add('full-text');
    };
  });

  // changes the current visible form section

  $('#next').on('click',function() {
    calculateScore();
    changeIndex('up');
    colorNav(tabIndex);
  });

  $('#previous').on('click',function() {
    calculateScore();
    changeIndex('down');
    colorNav(tabIndex);
  });

  $('#new_survey').submit(function() {
    calculateScore();
    return true; // return false to cancel form action
});

  // changes what tabs in the progress bar are highlighted

  function colorNav(i) {
    $('.survey__navigation--bar').each(function() {
      var surveyIndex = Number(this.getAttribute('data-nav-index'));
      if (surveyIndex < i) {
        this.classList.add('survey__navigation--bar-visited');
        this.classList.remove('survey__navigation--bar-active');
      } else if (surveyIndex == i) {
        this.classList.add('survey__navigation--bar-active');
        this.classList.remove('survey__navigation--bar-visited');
      } else {
        this.classList.remove('survey__navigation--bar-visited');
        this.classList.remove('survey__navigation--bar-active');
      }
    });
  };

  function increment() {
    $('#section-' + (tabIndex+1)).removeClass('active');
    tabIndex ++
    $('#section-' + (tabIndex+1)).addClass('active');
  };

  function decrement() {
    $('#section-' + (tabIndex+1)).removeClass('active');
    tabIndex --
    $('#section-' + (tabIndex+1)).addClass('active');    
  };

  function changeIndex(direction) {
    switch(direction) {
      case 'up':
        switch(tabIndex) {
          case 6:
            increment();
            $('#next').hide();
            $('#submit').show();
            $("html").animate({ scrollTop: 0 }, "fast");
            break;
          case 7:
            break;
          default:
            increment();
            $('#previous').removeClass('disabled');
            $("html").animate({ scrollTop: 0 }, "fast");
            break;
        };
        break;
      case 'down':
        switch(tabIndex) {
          case 0:
            break;
          case 1:
            decrement();
            $('#previous').addClass('disabled');
            $("html").animate({ scrollTop: 0 }, "fast");
            break;
          case 7:
            decrement();
            $('#submit').hide();
            $('#next').show();
            $("html").animate({ scrollTop: 0 }, "fast");
            break;
          default:
            decrement();
            $("html").animate({ scrollTop: 0 }, "fast");
            break;
        };
        break;
    };
    $('#progress-index').text(tabIndex+1);
  };

  function calculateScore() {
    var results = [];
    $('#section-' + (tabIndex+1)).find('input:checked').each(function() {
      var val = parseFloat(this.value.split('-')[1]);
      if (val < 80) {
        results.push(val); // only include results that aren't 'unsure'
      };
    });
    var total = results.reduce(function(total,value){ return total + value },0);
    var result = results.length > 0 ? total/results.length : '';
    $('#section_score-' + (tabIndex+1))[0].value = result;
  };
});