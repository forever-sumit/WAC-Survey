class ChangeColumnTypeInSurveyScore < ActiveRecord::Migration[5.1]
  def self.up
    change_column :survey_scores, :section_score, :float
  end

  def self.down
    change_column :survey_scores, :section_score, :integer
  end
end
