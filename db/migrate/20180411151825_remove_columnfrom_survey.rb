class RemoveColumnfromSurvey < ActiveRecord::Migration[5.1]
  def change
    remove_column :surveys, :section_id
    remove_column :surveys, :section_score
  end
end
