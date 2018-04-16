$(document).ready(function() {
  SELECTED_ANSWER = [];

  $('#rootwizard').bootstrapWizard({
    onTabShow: function(tab, navigation, index) {
      var $total = navigation.find('li').length;
      var $current = index+1;
      var $percent = ($current/$total) * 100;
      $('#rootwizard .progress-bar').css({width:$percent+'%'});
    }
  });

  $('.survey_section_score').on('change', function(){
    var answer = $("#survey_section_score_"+this.dataset.questionId+" option:selected").val();
    SELECTED_ANSWER.push(answer);
    if ($.inArray('99.0', SELECTED_ANSWER) != -1) {
      console.log('unsure answer selected');
      SELECTED_ANSWER.splice($.inArray('99.0', SELECTED_ANSWER),1);
    }
  });

  $('.tab-btn').click(function(){
    avg = calculateAnswer();
    $('#survey_survey_scores_attributes_'+(this.dataset.sectionId-1)+'_section_score').val(avg.toFixed(2));
    SELECTED_ANSWER = [];
  });

  function calculateAnswer(){
    var test = SELECTED_ANSWER, n = SELECTED_ANSWER.length, sum = 0;
    while(n--)
      sum += parseFloat(SELECTED_ANSWER[n]) || 0;
    var avg = sum/SELECTED_ANSWER.length; 
    return avg;     
  }

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

  $('.survey_submit').on('click', function(){
    $(this).closest('.submit-btn').siblings('.navbar').find('.tab-btn').last().trigger('click');
  });
});