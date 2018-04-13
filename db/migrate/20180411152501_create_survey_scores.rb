class CreateSurveyScores < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_scores do |t|
      t.integer :section_id
      t.integer :survey_id
      t.integer :section_score
      t.timestamps
    end
  end
end
