$(document).ready(function() {
  SELECTED_ANSWERS = [];
  UNSURE_ANSWERS = [];

  $('#rootwizard').bootstrapWizard({
    onTabShow: function(tab, navigation, index) {
      var $total = navigation.find('li').length;
      var $current = index+1;
      var $percent = ($current/$total) * 100;
      $('#rootwizard .progress-bar').css({width:$percent+'%'});
    }
  });

  $('.survey_section_score').on('change', function(){
    var answer = $(this).val();
    if (answer != '99.0'){
      SELECTED_ANSWERS.push(answer);
    } else{
      console.log('unsure answer selected');
      UNSURE_ANSWERS.push(answer);
    }
  });

  var $curr = $( "li.active" );
  $('#previous').hide();
  $('.survey_submit').hide();

  $('#previous').on('click', function(){
    $('.survey_submit').hide();
    $curr = $curr.prev();
    if ($curr.children()[0] != undefined){
      $curr.children().trigger('click');
      if ($curr.prev().children()[0] == undefined){
        $('.survey_submit').hide();
        $('#previous').hide();
      }
      $('#next').show();
    }
  });

  $('#next').on('click', function(){
    calculateAverage($curr.children()[0]);

    $curr = $curr.next();
    if ($curr.children()[0] != undefined){
      $curr.children().trigger('click');
      if ($curr.next().children()[0] == undefined){
        $('#next').hide();
        $('.survey_submit').show();
      }
      $('#previous').show();
    }
  });

  function calculateAverage(dom){
    var test = SELECTED_ANSWERS, n = SELECTED_ANSWERS.length, sum = 0;
    while(n--)
      sum += parseFloat(SELECTED_ANSWERS[n]) || 0;

    var avg = sum/SELECTED_ANSWERS.length; 
    avg = avg || 0
    var fixedAverage = avg.toFixed(2);
    $('#section_score-'+(dom.dataset.sectionId)).val(fixedAverage);
    SELECTED_ANSWERS = [];
    return fixedAverage;
  }

  $('.survey_submit').on('click', function(){
    $('#next').trigger('click');
    if (UNSURE_ANSWERS.length > 20){
      alert("There are a large numbers of questions marked 'Unsure'");
      return false;
      location.reload(true);
    }
  });
});