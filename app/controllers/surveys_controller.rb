class SurveysController < ApplicationController

  def new
    sections = Section.all.order('in_order ASC')
    @survey = Survey.new
    sections.each do |section|
      @survey.survey_scores.build(section_id: section.id)
    end
  end

  def create
    survey = Survey.new(survey_params)
    questions_and_answer_ids = JSON.parse(params.select{|x| x.starts_with?"question"}.to_json)
    questions_and_answer_ids.each do |k,v|
      survey.qanda[k.split("-").last] = v.split("-").first # using the id of each input, we get the question and answer id
    end
    if survey.save
      redirect_to survey_path(survey.id)
    else
      redirect_to new_survey_path
    end
  end

  def show
    @survey = Survey.find_by(id: params[:id])
    if @survey
      @survey_scores = SurveyScore.where(survey_id: @survey.id)
    else
      redirect_to root_path
    end
  end

  def download
    require 'csv'
    @survey = Survey.find_by(id: params[:id])
    if @survey
      csv = []
      csv << ["Results"]
      csv << ["Section", "Score"]
      @survey_scores = SurveyScore.where(survey_id: @survey.id).map do |score|
        if (0.01..1.99).include?(score.section_score.to_f)
          csv_score = "Green"
        elsif (2..2.99).include?(score.section_score.to_f)
          csv_score = "Yellow"
        else
          csv_score = "Red"
        end
        csv << ["#{score.section.id}. #{score.section.name}", csv_score]
      end
      csv << ['']
      csv << ["All Questions & Responses"]
      csv << ["Question", "Response"]
      @survey.qanda.each do |k,v|
        q = Question.find(k)
        a = Answer.find_by(id: v)
        answer_text = a ? a.answer_title : "Unanswered"
        csv << ["#{q.id}. #{q.question_title}",answer_text]
      end
      file = CSV.generate do |csv_file|
        csv.each do |f|
          csv_file << f
        end
      end
      send_data file, filename: "wac-survey-results.csv", disposition: 'attachment'
    end
  end

private
  def survey_params
    params.require(:survey).permit(:qanda, survey_scores_attributes: [:id, :survey_id, :section_id, :section_score])
  end
end
