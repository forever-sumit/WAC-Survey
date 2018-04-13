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
    @survey = Survey.find(params[:id])
  end

private
  def survey_params
    params.require(:survey).permit(survey_scores_attributes: [:id, :survey_id, :section_id, :section_score])
  end
end
