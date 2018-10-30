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
      csv << ["Section", "Score"]
      @survey_scores = SurveyScore.where(survey_id: @survey.id).map do |score|
        if score.section_score.to_f < 1.9
          csv_score = "Good"
        elsif (2..2.99).include?(score.section_score.to_f)
          csv_score = "Ok"
        else
          csv_score = "Fail"
        end
        csv << ["#{score.section.id}. #{score.section.name}", csv_score]
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
    params.require(:survey).permit(survey_scores_attributes: [:id, :survey_id, :section_id, :section_score])
  end
end
