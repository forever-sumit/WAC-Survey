class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.integer :section_id
      t.integer :section_score
      t.timestamps
    end
  end
end
