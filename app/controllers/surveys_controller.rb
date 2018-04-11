class SurveysController < ApplicationController

  def new
    sections = Section.all
    @sections = sections.paginate(:page => params[:page], :per_page => 1).order('in_order ASC')
  end

  def create

  end

  def show

  end
end
